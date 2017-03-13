function calculateBonusValue(value, bonus)
	if not bonus.type or bonus.type == "value" then
		return bonus.value
	elseif bonus.type == "percentage" then
		return math.floor(value * bonus.value / 100)
	end
	print("[Warning - Enchanting] Unknown bonus type " .. tostring(bonus.type) .. ".")
	return value
end

function doReflectDamage(player, attacker, type, damage)
	if player and attacker then
		doTargetCombatHealth(player, attacker, type, damage, damage, CONST_ME_NONE, ORIGIN_NONE)
	end
end
