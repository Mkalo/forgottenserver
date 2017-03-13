function Item:getAttributeIds()
	local returnValue = {}
	local tierId = self:getTierId()
	if not tierId then
		return returnValue
	end

	for enchantmentSlot = 1, TIER_SLOTCOUNT[tierId] do
		local attributeId = item:getAttributeFromSlot(enchantmentSlot)
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

function Item:getAttributeFromSlot(enchantmentSlot)
	return self:getCustomAttribute("slotId_" .. enchantmentSlot)
end

function Item:setAttributeModifiers()
	local tierId = item:getTierId()
	if tierId then
		local attributeIds = item:getAttributeIds()
		for i = 1, #attributeIds do
			local attributeId = attributeIds[i]
			if ITEM_MODIFIERS[attributeId] then
				local bonus = TIER_BONUSES[tierId][attributeId]
				ITEM_MODIFIERS[attributeId](self, bonus)
			end
		end
	end
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
