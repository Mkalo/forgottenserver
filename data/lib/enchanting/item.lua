function Item:getAttributeIds()
	local returnValue = {}
	local tierId = self:getTierId()
	if not tierId then
		return returnValue
	end

	for slotId = 1, TIER_SLOTCOUNT[tierId] do
		local attributeId = self:getAttributeFromSlot(slotId)
		if attributeId then
			returnValue[#returnValue + 1] = attributeId
		end
	end
	return returnValue
end

function Item:getExtendedWeaponType()
	local itemType = self:getType()
	local weaponType = itemType:getWeaponType()
	if weaponType == WEAPON_NONE then
		for extType = WEAPON_HELMET, WEAPON_RING do
			if itemType:usesSlot(WEAPON_SLOTID[extType]) then
				return extType
			end
		end
		return nil
	end
	return weaponType
end

function Item:getTierId()
	return self:getCustomAttribute("tierId")
end

function Item:getAttributeFromSlot(slotId)
	return self:getCustomAttribute("slotId_" .. slotId)
end

function Item:setAttributeModifiers()
	local tierId = self:getTierId()
	if tierId then
		local attributeIds = self:getAttributeIds()
		for i = 1, #attributeIds do
			local attributeId = attributeIds[i]
			if ITEM_MODIFIERS[attributeId] then
				local bonus = TIER_BONUSES[tierId][attributeId]
				ITEM_MODIFIERS[attributeId](self, bonus)
			end
		end
	end
end

function Item:setTierId(tierId, generateAttributes)
	if TIER_NAMES[tierId] then
		self:setCustomAttribute("tierId", tierId)
		self:setActionId(MOVEMENT_ACTIONID)
		if generateAttributes then
			for slotId = 1, TIER_SLOTCOUNT[tierId] do
				-- TODO
			end
		end
	end
end

function Item:setAttributeInSlot(slotId, attributeId)
	local tierId = self:getTierId()
	if tierId and slotId <= TIER_SLOTCOUNT[tierId] and TIER_BONUSES[tierId][attributeId] then
		local oldAttribute = self:getAttributeFromSlot(slotId)
		if oldAttribute and ITEM_MODIFIERS[oldAttribute] then
			ITEM_MODIFIERS[oldAttribute](self, {value = 0})
		end

		self:setCustomAttribute("slotId_" .. slotId, attributeId)
		self:setAttributeModifiers()
	end
	return false
end

function Item:getAttributeString()
	local attributeIds = self:getAttributeIds()
	local ret = ""
	if #attributeIds == 0 then
		return ret
	end

	local buffer = {}
	local tierId = self:getTierId()

	for i = 1, #attributeIds do
		local attributeId = attributeIds[i]
		if ATTRIBUTE_NAMES[attributeId] then
			local bonus = TIER_BONUSES[tierId][attributeId]
			local percentage = bonus.type == "percentage" or isInArray(PERCENTAGE_ATTRIBUTES, attributeId)
			buffer[#buffer + 1] = ("%s: %d%s"):format(ATTRIBUTE_NAMES[attributeId], bonus.value, (percentage and "%" or ""))
		end
	end
	return table.concat(buffer, ", ") .. "\n"
end

-- Modifier Functions
function Item:setAttributeAttack(bonus)
	local attack = self:getType():getAttack()
	if attack ~= 0 then
		self:setAttribute(ITEM_ATTRIBUTE_ATTACK, attack + calculateBonusValue(attack, bonus))
	end
end

function Item:setAttributeDefense(bonus)
	local defense = self:getType():getDefense()
	if defense ~= 0 then
		self:setAttribute(ITEM_ATTRIBUTE_DEFENSE, defense + calculateBonusValue(defense, bonus))
	end
end

function Item:setAttributeArmor(bonus)
	local armor = self:getType():getArmor()
	if armor ~= 0 then
		self:setAttribute(ITEM_ATTRIBUTE_ARMOR, armor + calculateBonusValue(armor, bonus))
	end
end

function Item:setAttributeHitchance(bonus)
	local hitChance = self:getType():getHitChance()
	self:setAttribute(ITEM_ATTRIBUTE_HITCHANCE, hitChance + calculateBonusValue(hitChance, bonus))
end
