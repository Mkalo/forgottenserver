function onHealthChange(player, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return player:applyPlayerStatsModifiers(attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
end

function onManaChange(player, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	return player:applyPlayerStatsModifiers(attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
end
