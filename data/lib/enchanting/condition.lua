
-- Modifier Functions

function Condition:setAttributeMaxMana(player, bonus)
	self:setParamater(CONDITION_PARAM_STAT_MAXMANAPOINTS, calculateBonusValue(player:getMaxMana(), bonus))
end

function Condition:setAttributeMaxHealth(player, bonus)
	self:setParamater(CONDITION_PARAM_STAT_MAXHITPOINTS, calculateBonusValue(player:getMaxHealth(), bonus))
end

function Condition:setAttributeManaRegen(player, bonus)
	self:setParamater(CONDITION_PARAM_MANAGAIN, calculateBonusValue(player:getMaxMana(), bonus))
	self:setParamater(CONDITION_PARAM_MANATICKS, tonumber(bonus.interval) or 1000)
end

function Condition:setAttributeHealthRegen(player, bonus)
	self:setParamater(CONDITION_PARAM_HEALTHGAIN, calculateBonusValue(player:getMaxHealth(), bonus))
	self:setParamater(CONDITION_PARAM_HEALTHTICKS, tonumber(bonus.interval) or 1000)
end

function Condition:setAttributeMagicSkill(player, bonus)
	self:setParamater(CONDITION_PARAM_STAT_MAGICPOINTS, calculateBonusValue(player:getMagicLevel(), bonus))
end

function Condition:setAttributeMeleeSkill(player, bonus)
	self:setParamater(CONDITION_PARAM_SKILL_MELEE, bonus.value)
end

function Condition:setAttributeAxeSkill(player, bonus)
	self:setParamater(CONDITION_PARAM_SKILL_AXE, calculateBonusValue(player:getSkillLevel(SKILL_AXE), bonus))
end

function Condition:setAttributeSwordSkill(player, bonus)
	self:setParamater(CONDITION_PARAM_SKILL_SWORD, calculateBonusValue(player:getSkillLevel(SKILL_SWORD), bonus))
end

function Condition:setAttributeClubSkill(player, bonus)
	self:setParamater(CONDITION_PARAM_SKILL_CLUB, calculateBonusValue(player:getSkillLevel(SKILL_CLUB), bonus))
end

function Condition:setAttributeDistanceSkill(player, bonus)
	self:setParamater(CONDITION_PARAM_SKILL_DISTANCE, calculateBonusValue(player:getSkillLevel(SKILL_DISTANCE), bonus))
end

function Condition:setAttributeFishingSkill(player, bonus)
	self:setParamater(CONDITION_PARAM_SKILL_FISHING, calculateBonusValue(player:getSkillLevel(SKILL_FISHING), bonus))
end

function Cndition:setAttributeShieldSkill(player, bonus)
	self:setParamater(CONDITION_PARAM_SKILL_SHIELD, calculateBonusValue(player:getSkillLevel(SKILL_SHIELD), bonus))
end

function Cndition:setAttributePlayerSpeed(player, bonus)
	-- TODO
	self:setFormula(bonus.value / 100, 0, bonus.value / 100, 0) 
end
