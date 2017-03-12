function Creature:applyCreatureStatsModifiers(player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
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

-- Modifier Functions

function Creature:applyAttributeCritical(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeMagicDamage(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributePhysicDamage(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeEnergyDamage(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeFireDamage(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeEarthDamage(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeIceDamage(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeHolyDamage(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeDeathDamage(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeHealthLeech(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function Creature:applyAttributeManaLeech(bonus, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

