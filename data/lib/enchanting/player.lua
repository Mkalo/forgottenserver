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
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeReflectEnergy(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeReflectFire(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeReflectEarth(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeReflectIce(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeReflectHoly(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeReflectDeath(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeReflectPhysic(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeAbsorbEnergy(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeAbsorbFire(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeAbsorbEarth(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeAbsorbIce(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeAbsorbHoly(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeAbsorbDeath(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeAbsorbPhysic(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeHealthHealing(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Player:applyAttributeManaHealing(bonus, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end
