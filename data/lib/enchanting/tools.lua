function calculateBonusValue(value, bonus)
	if not bonus.type or bonus.type == "value" then
		return bonus.value
	elseif bonus.type == "percentage" then
		return math.floor(value * bonus.value / 100)
	end
	print("[Warning - Enchanting] Unknown bonus type " .. tostring(bonus.type) .. ".")
	return value
end
