function Player:applyPlayerStatsModifiers(attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	for slotId = CONST_SLOT_FIRST, CONST_SLOT_LAST do
		local item = self:getSlotItem(slotId)
		if item then
			local tierId = item:getTierId()
			if tierId then
				local attributeIds = item:getAttributeIds()
				for i = 1, #attributeIds do
					local attributeId = attributeIds[i]
					if PLAYERSTATS_MODIFIERS[attributeId] then
						local bonus = TIER_BONUSES[tierId][attributeId]
						primaryDamage, primaryType, secondaryDamage, secondaryType = PLAYERSTATS_MODIFIERS[attributeId](self, bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
					end
				end
			end
		end 
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:updateItemConditions(item, equip)
	local tierId = item:getTierId()
	local weaponType = item:getExtendedWeaponType()
	if not tierId or not weaponType then
		return
	end

	local attributeIds = item:getAttributeIds()

	for i = 1, #attributeIds do
		local attributeId = attributeIds[i]
		if CONDITION_MODIFIERS[attributeId] then
			if equip then
				-- onEquipItem
				local condition = Condition(ATTRIBUTE_CONDITION_TYPES[attributeId], weaponType)
				local bonus = TIER_BONUSES[tierId][attributeId]
				condition:setParameter(CONDITION_PARAM_TICKS, -1)
				CONDITION_MODIFIERS[attributeId](condition, self, bonus)
				self:addCondition(condition)
			else
				-- onDeEquipItem
				self:removeCondition(ATTRIBUTE_CONDITION_TYPES[attributeId], weaponType)
			end
		end
	end
end

-- Modifier Functions

--   Player Modifiers 
function Player:updateAttributeCooldown()
	-- To be implemented in sources
end

function Player:updateAttackSpeed()
	-- To be implemented in sources
end

--   Player Stats Modifiers
function Player:applyAttributeDodge(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	local rand = math.random(1, 100000)
	if self == attacker or rand > bonus.value then
		return primaryDamage, primaryType, secondaryDamage, secondaryType
	end

	if primaryType ~= COMBAT_HEALING and primaryType ~= COMBAT_MANADRAIN then
		primaryDamage = primaryDamage * 0.5
	end
	if secondaryType ~= COMBAT_HEALING and secondaryType ~= COMBAT_MANADRAIN then
		secondaryDamage = secondaryDamage * 0.5
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeReflectEnergy(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_ENERGYDAMAGE then
		doReflectDamage(self, attacker, COMBAT_ENERGYDAMAGE, calculateBonusValue(primaryDamage, bonus))
	end
	if secondaryType == COMBAT_ENERGYDAMAGE then
		doReflectDamage(self, attacker, COMBAT_ENERGYDAMAGE, calculateBonusValue(secondaryDamage, bonus))
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeReflectFire(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_FIREDAMAGE then
		doReflectDamage(self, attacker, COMBAT_FIREDAMAGE, calculateBonusValue(primaryDamage, bonus))
	end
	if secondaryType == COMBAT_FIREDAMAGE then
		doReflectDamage(self, attacker, COMBAT_FIREDAMAGE, calculateBonusValue(secondaryDamage, bonus))
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeReflectEarth(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_EARTHDAMAGE then
		doReflectDamage(self, attacker, COMBAT_EARTHDAMAGE, calculateBonusValue(primaryDamage, bonus))
	end
	if secondaryType == COMBAT_EARTHDAMAGE then
		doReflectDamage(self, attacker, COMBAT_EARTHDAMAGE, calculateBonusValue(secondaryDamage, bonus))
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeReflectIce(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_ICEDAMAGE then
		doReflectDamage(self, attacker, COMBAT_ICEDAMAGE, calculateBonusValue(primaryDamage, bonus))
	end
	if secondaryType == COMBAT_ICEDAMAGE then
		doReflectDamage(self, attacker, COMBAT_ICEDAMAGE, calculateBonusValue(secondaryDamage, bonus))
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeReflectHoly(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_HOLYDAMAGE then
		doReflectDamage(self, attacker, COMBAT_HOLYDAMAGE, calculateBonusValue(primaryDamage, bonus))
	end
	if secondaryType == COMBAT_HOLYDAMAGE then
		doReflectDamage(self, attacker, COMBAT_HOLYDAMAGE, calculateBonusValue(secondaryDamage, bonus))
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeReflectDeath(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_DEATHDAMAGE then
		doReflectDamage(self, attacker, COMBAT_DEATHDAMAGE, calculateBonusValue(primaryDamage, bonus))
	end
	if secondaryType == COMBAT_DEATHDAMAGE then
		doReflectDamage(self, attacker, COMBAT_DEATHDAMAGE, calculateBonusValue(secondaryDamage, bonus))
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeReflectPhysic(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_PHYSICALDAMAGE then
		doReflectDamage(self, attacker, COMBAT_PHYSICALDAMAGE, calculateBonusValue(primaryDamage, bonus))
	end
	if secondaryType == COMBAT_PHYSICALDAMAGE then
		doReflectDamage(self, attacker, COMBAT_PHYSICALDAMAGE, calculateBonusValue(secondaryDamage, bonus))
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeAbsorbEnergy(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_ENERGYDAMAGE then
		primaryDamage = math.max(0, primaryDamage - calculateBonusValue(primaryDamage, bonus))
	end
	if secondaryType == COMBAT_ENERGYDAMAGE then
		secondaryDamage = math.max(0, secondaryDamage - calculateBonusValue(secondaryDamage, bonus))
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeAbsorbFire(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_FIREDAMAGE then
		primaryDamage = math.max(0, primaryDamage - calculateBonusValue(primaryDamage, bonus))
	end
	if secondaryType == COMBAT_FIREDAMAGE then
		secondaryDamage = math.max(0, secondaryDamage - calculateBonusValue(secondaryDamage, bonus))
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeAbsorbEarth(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_EARTHDAMAGE then
		primaryDamage = math.max(0, primaryDamage - calculateBonusValue(primaryDamage, bonus))
	end
	if secondaryType == COMBAT_EARTHDAMAGE then
		secondaryDamage = math.max(0, secondaryDamage - calculateBonusValue(secondaryDamage, bonus))
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeAbsorbIce(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_ICEDAMAGE then
		primaryDamage = math.max(0, primaryDamage - calculateBonusValue(primaryDamage, bonus))
	end
	if secondaryType == COMBAT_ICEDAMAGE then
		secondaryDamage = math.max(0, secondaryDamage - calculateBonusValue(secondaryDamage, bonus))
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeAbsorbHoly(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_HOLYDAMAGE then
		primaryDamage = math.max(0, primaryDamage - calculateBonusValue(primaryDamage, bonus))
	end
	if secondaryType == COMBAT_HOLYDAMAGE then
		secondaryDamage = math.max(0, secondaryDamage - calculateBonusValue(secondaryDamage, bonus))
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeAbsorbDeath(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_DEATHDAMAGE then
		primaryDamage = math.max(0, primaryDamage - calculateBonusValue(primaryDamage, bonus))
	end
	if secondaryType == COMBAT_DEATHDAMAGE then
		secondaryDamage = math.max(0, secondaryDamage - calculateBonusValue(secondaryDamage, bonus))
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeAbsorbPhysic(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_PHYSICALDAMAGE then
		primaryDamage = math.max(0, primaryDamage - calculateBonusValue(primaryDamage, bonus))
	end
	if secondaryType == COMBAT_PHYSICALDAMAGE then
		secondaryDamage = math.max(0, secondaryDamage - calculateBonusValue(secondaryDamage, bonus))
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeHealthHealing(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_HEALING then
		primaryDamage = primaryDamage + calculateBonusValue(primaryDamage, bonus)
	end
	if secondaryType == COMBAT_HEALING then
		secondaryDamage = secondaryDamage + calculateBonusValue(secondaryDamage, bonus)
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeManaHealing(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_MANADRAIN and primaryDamage > 0 then
		primaryDamage = primaryDamage + calculateBonusValue(primaryDamage, bonus)
	end
	if secondaryType == COMBAT_MANADRAIN and secondaryDamage > 0 then
		secondaryDamage = secondaryDamage + calculateBonusValue(secondaryDamage, bonus)
	end
	
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end
