function onSay(player, words, param)
	local t = param:split(",")
	if #t < 2 then
		return false
	end

	local item = player:getItemById(tonumber(t[1]), true)

	if item then
		item:setTierId(tonumber(t[2]), true)
	end
end
