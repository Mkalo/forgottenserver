function onEquip(player, item, slot, isCheck)
	if not isCheck then
		return player:onChangeEnchantedEquipment(item, true)
	else
		return true
	end
end

function onDeEquip(player, item, slot)
	return player:onChangeEnchantedEquipment(item, false)
end