function onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return creature:applyCreatureStatsModifiers(attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
end

function onManaChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return creature:applyCreatureStatsModifiers(attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
end
