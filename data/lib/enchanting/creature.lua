function Creature:applyCreatureStatsModifiers(player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	local player = player and player:getPlayer()
	if not player then
		return primaryDamage, primaryType, secondaryDamage, secondaryType
	end

	for slotId = CONST_SLOT_FIRST, CONST_SLOT_LAST do
		local item = player:getSlotItem(slotId)
		if item then
			local tierId = item:getTierId()
			if tierId then
				local attributeIds = item:getAttributeIds()
				for i = 1, #attributeIds do
					local attributeId = attributeIds[i]
					if CREATURESTATS_MODIFIERS[attributeId] then
						local bonus = TIER_BONUSES[tierId][attributeId]
						primaryDamage, primaryType, secondaryDamage, secondaryType = CREATURESTATS_MODIFIERS[attributeId](self, bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
					end
				end
			end
		end 
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:registerCreatureAttributeEvents()
	self:registerEvent("AttributeCreatureHealthChange")
	self:registerEvent("AttributeCreatureManaChange")
end

-- Modifier Functions

function Creature:applyAttributeCritical(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	local rand = math.random(1, 100)
	if rand > bonus.value then
		return primaryDamage, primaryType, secondaryDamage, secondaryType
	end

	if primaryType ~= COMBAT_HEALING and primaryType ~= COMBAT_MANADRAIN then
		primaryDamage = primaryDamage * 1.5
	end
	if secondaryType ~= COMBAT_HEALING and secondaryType ~= COMBAT_MANADRAIN then
		secondaryDamage = secondaryDamage * 1.5
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeMagicDamage(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if isInArray({COMBAT_ENERGYDAMAGE, COMBAT_EARTHDAMAGE, COMBAT_FIREDAMAGE, COMBAT_ICEDAMAGE, COMBAT_HOLYDAMAGE, COMBAT_DEATHDAMAGE}, primaryType) then
		primaryDamage = primaryDamage + calculateBonusValue(primaryDamage, bonus)
	end
	if isInArray({COMBAT_ENERGYDAMAGE, COMBAT_EARTHDAMAGE, COMBAT_FIREDAMAGE, COMBAT_ICEDAMAGE, COMBAT_HOLYDAMAGE, COMBAT_DEATHDAMAGE}, secondaryType) then
		secondaryDamage = secondaryDamage + calculateBonusValue(secondaryDamage, bonus)
	end
	
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributePhysicDamage(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_PHYSICALDAMAGE then
		primaryDamage = primaryDamage + calculateBonusValue(primaryDamage, bonus)
	end
	if secondaryType == COMBAT_PHYSICALDAMAGE then
		secondaryDamage = secondaryDamage + calculateBonusValue(secondaryDamage, bonus)
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeEnergyDamage(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_ENERGYDAMAGE then
		primaryDamage = primaryDamage + calculateBonusValue(primaryDamage, bonus)
	end
	if secondaryType == COMBAT_ENERGYDAMAGE then
		secondaryDamage = secondaryDamage + calculateBonusValue(secondaryDamage, bonus)
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeFireDamage(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_FIREDAMAGE then
		primaryDamage = primaryDamage + calculateBonusValue(primaryDamage, bonus)
	end
	if secondaryType == COMBAT_FIREDAMAGE then
		secondaryDamage = secondaryDamage + calculateBonusValue(secondaryDamage, bonus)
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeEarthDamage(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_EARTHDAMAGE then
		primaryDamage = primaryDamage + calculateBonusValue(primaryDamage, bonus)
	end
	if secondaryType == COMBAT_EARTHDAMAGE then
		secondaryDamage = secondaryDamage + calculateBonusValue(secondaryDamage, bonus)
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeIceDamage(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_ICEDAMAGE then
		primaryDamage = primaryDamage + calculateBonusValue(primaryDamage, bonus)
	end
	if secondaryType == COMBAT_ICEDAMAGE then
		secondaryDamage = secondaryDamage + calculateBonusValue(secondaryDamage, bonus)
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeHolyDamage(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_HOLYDAMAGE then
		primaryDamage = primaryDamage + calculateBonusValue(primaryDamage, bonus)
	end
	if secondaryType == COMBAT_HOLYDAMAGE then
		secondaryDamage = secondaryDamage + calculateBonusValue(secondaryDamage, bonus)
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeDeathDamage(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_DEATHDAMAGE then
		primaryDamage = primaryDamage + calculateBonusValue(primaryDamage, bonus)
	end
	if secondaryType == COMBAT_DEATHDAMAGE then
		secondaryDamage = secondaryDamage + calculateBonusValue(secondaryDamage, bonus)
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeHealthLeech(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	local totalAmount = 0

	if isInArray({COMBAT_PHYSICALDAMAGE, COMBAT_ENERGYDAMAGE, COMBAT_EARTHDAMAGE, COMBAT_FIREDAMAGE, COMBAT_ICEDAMAGE, COMBAT_HOLYDAMAGE, COMBAT_DEATHDAMAGE}, primaryType) then
		totalAmount = totalAmount + calculateBonusValue(primaryDamage, bonus)
	end
	if isInArray({COMBAT_PHYSICALDAMAGE, COMBAT_ENERGYDAMAGE, COMBAT_EARTHDAMAGE, COMBAT_FIREDAMAGE, COMBAT_ICEDAMAGE, COMBAT_HOLYDAMAGE, COMBAT_DEATHDAMAGE}, secondaryType) then
		totalAmount = totalAmount + calculateBonusValue(secondaryDamage, bonus)
	end
	
	if totalAmount > 0 then
		doTargetCombatHealth(0, player, COMBAT_HEALING, totalAmount, totalAmount, CONST_ME_NONE)
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeManaLeech(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	local totalAmount = 0

	if isInArray({COMBAT_PHYSICALDAMAGE, COMBAT_ENERGYDAMAGE, COMBAT_EARTHDAMAGE, COMBAT_FIREDAMAGE, COMBAT_ICEDAMAGE, COMBAT_HOLYDAMAGE, COMBAT_DEATHDAMAGE}, primaryType) then
		totalAmount = totalAmount + calculateBonusValue(primaryDamage, bonus)
	end
	if isInArray({COMBAT_PHYSICALDAMAGE, COMBAT_ENERGYDAMAGE, COMBAT_EARTHDAMAGE, COMBAT_FIREDAMAGE, COMBAT_ICEDAMAGE, COMBAT_HOLYDAMAGE, COMBAT_DEATHDAMAGE}, secondaryType) then
		totalAmount = totalAmount + calculateBonusValue(secondaryDamage, bonus)
	end
	
	if totalAmount > 0 then
		doTargetCombatMana(0, player, totalAmount, totalAmount, CONST_ME_NONE)
	end

	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

