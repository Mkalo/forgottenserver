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
			self:setRandomAttributes(TIER_SLOTCOUNT[tierId])
		end
	end
end

function Item:setRandomAttributes(count)
	local possibleAttributes = self:getPossibleAttributes()
	table.shuffle(possibleAttributes, 5)
	for slotId = 1, math.min(count, #possibleAttributes) do
		self:setAttributeInSlot(slotId, possibleAttributes[slotId])
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

function Item:getVocationIds()
	local tmp = {}
	local vocations = self:getType():getVocationList()
	for i = 1, #vocations do
		if vocations[i] == 1 or vocations[i] == 5 then
			tmp[ITEM_VOC_SORCERER] = true
		elseif vocations[i] == 2 or vocations[i] == 6 then
			tmp[ITEM_VOC_DRUID] = true
		elseif vocations[i] == 3 or vocations[i] == 7 then
			tmp[ITEM_VOC_PALADIN] = true
		elseif vocations[i] == 4 or vocations[i] == 8 then
			tmp[ITEM_VOC_KNIGHT] = true
		end
	end

	local ret = {}
	for vocation, bool in pairs(tmp) do
		if bool then
			ret[#ret + 1] = vocation
		end
	end
	return ret
end

function Item:getPossibleAttributes()
	local ret = {}
	local weaponType = self:getExtendedWeaponType()
	if not WEAPON_ATTRIBUTES[weaponType] then
		return ret
	end

	local vocationTable = self:getVocationIds()

	local attributes = WEAPON_ATTRIBUTES[weaponType]
	if type(attributes[ITEM_VOC_ALL]) == "table" then
		if #vocationTable == 0 then
			ret = table.copy(WEAPON_ATTRIBUTES[weaponType][ITEM_VOC_ALL])
		else
			for i = 1, #vocationTable do
				if WEAPON_ATTRIBUTES[weaponType][vocationTable[i]] then
					ret = table.merge(ret, WEAPON_ATTRIBUTES[weaponType][vocationTable[i]])
				end
			end
		end
	else
		ret = table.copy(WEAPON_ATTRIBUTES[weaponType])
	end

	return ret
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
