function onSay(player, words, param)
	local t = param:split(",")
	if #t < 3 then
		return false
	end

	local item = player:getItemById(tonumber(t[1]), true)

	if item then
		item:setTierId(tonumber(t[2]))
		item:setAttributeInSlot(1, tonumber(t[3]))
	end
end
