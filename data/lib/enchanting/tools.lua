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

function table.find(tab, value)
	for i = 1, #tab do
		if tab[i] == value then
			return i
		end
	end
end

function table.copy(tab)
	local ret = {}
	for i, v in pairs(tab) do
		if type(v) == "table" then
			ret[i] = table.copy(v)
		else
			ret[i] = v
		end
	end
	return ret
end

function table.merge(a, b)
	local ret = {}
	for i = 1, #a do
		table.insert(ret, a[i])
	end
	for i = 1, #b do
		if not table.find(ret, b[i]) then
			table.insert(ret, b[i])
		end
	end
	return ret
end

function table.shuffle(tab, count, ri, rj)
	ri = ri or 1
	rj = rj or #tab
	for x = 1, count or 1 do
		for i = rj, ri + 1, -1 do
			local j = math.random(ri, rj)
			tab[i], tab[j] = tab[j], tab[i]
		end
	end
end
