ITEM_MODIFIERS = {
	[ATTRIBUTE_ATTACK] = Item.setAttributeAttack,
	[ATTRIBUTE_DEFENSE] = Item.setAttributeDefense,
	[ATTRIBUTE_ARMOR] = Item.setAttributeArmor,
	[ATTRIBUTE_HITCHANCE] = Item.setAttributeHitchance,
}

PLAYER_MODIFIERS = {
	[ATTRIBUTE_COOLDOWN] = Player.updateAttributeCooldown,	
	[ATTRIBUTE_ATTACKSPEED] = Player.updateAttackSpeed,
}

PLAYERSTATS_MODIFIERS = {
	[ATTRIBUTE_DODGE] = Player.applyAttributeDodge,
	[ATTRIBUTE_REFLECTENERGY] = Player.applyAttributeReflectEnergy,
	[ATTRIBUTE_REFLECTFIRE] = Player.applyAttributeReflectFire,
	[ATTRIBUTE_REFLECTEARTH] = Player.applyAttributeReflectEarth,
	[ATTRIBUTE_REFLECTICE] = Player.applyAttributeReflectIce,
	[ATTRIBUTE_REFLECTHOLY] = Player.applyAttributeReflectHoly,
	[ATTRIBUTE_REFLECTDEATH] = Player.applyAttributeReflectDeath,
	[ATTRIBUTE_REFLECTPHYSIC] = Player.applyAttributeReflectPhysic,
	[ATTRIBUTE_ABSORBENERGY] = Player.applyAttributeAbsorbEnergy,
	[ATTRIBUTE_ABSORBFIRE] = Player.applyAttributeAbsorbFire,
	[ATTRIBUTE_ABSORBEARTH] = Player.applyAttributeAbsorbEarth,
	[ATTRIBUTE_ABSORBICE] = Player.applyAttributeAbsorbIce,
	[ATTRIBUTE_ABSORBHOLY] = Player.applyAttributeAbsorbHoly,
	[ATTRIBUTE_ABSORBDEATH] = Player.applyAttributeAbsorbDeath,
	[ATTRIBUTE_ABSORBPHYSIC] = Player.applyAttributeAbsorbPhysic,
	[ATTRIBUTE_HEALTHHEALING] = Player.applyAttributeHealthHealing,
	[ATTRIBUTE_MANAHEALING] = Player.applyAttributeManaHealing,
}

CREATURESTATS_MODIFIERS = {
	[ATTRIBUTE_CRITICAL] = Creature.applyAttributeCritical,
	[ATTRIBUTE_MAGICDAMAGE] = Creature.applyAttributeMagicDamage,
	[ATTRIBUTE_PHYSICDAMAGE] = Creature.applyAttributePhysicDamage,
	[ATTRIBUTE_ENERGYDAMAGE] = Creature.applyAttributeEnergyDamage,
	[ATTRIBUTE_FIREDAMAGE] = Creature.applyAttributeFireDamage,
	[ATTRIBUTE_EARTHDAMAGE] = Creature.applyAttributeEarthDamage,
	[ATTRIBUTE_ICEDAMAGE] = Creature.applyAttributeIceDamage,
	[ATTRIBUTE_HOLYDAMAGE] = Creature.applyAttributeHolyDamage,
	[ATTRIBUTE_DEATHDAMAGE] = Creature.applyAttributeDeathDamage,
	[ATTRIBUTE_HEALTHLEECH] = Creature.applyAttributeHealthLeech,
	[ATTRIBUTE_MANALEECH] = Creature.applyAttributeManaLeech,
}

CONDITION_MODIFIERS = {
	[ATTRIBUTE_MAXMANA] = Condition.setAttributeMaxMana,
	[ATTRIBUTE_MAXHEALTH] = Condition.setAttributeMaxHealth,
	[ATTRIBUTE_MANAREGEN] = Condition.setAttributeManaRegen,
	[ATTRIBUTE_HEALTHREGEN] = Condition.setAttributeHealthRegen,
	[ATTRIBUTE_MAGICSKILL] = Condition.setAttributeMagicSkill,
	[ATTRIBUTE_MELEESKILL] = Condition.setAttributeMeleeSkill,
	[ATTRIBUTE_AXESKILL] = Condition.setAttributeAxeSkill,
	[ATTRIBUTE_SWORDSKILL] = Condition.setAttributeSwordSkill,
	[ATTRIBUTE_CLUBSKILL] = Condition.setAttributeClubSkill,
	[ATTRIBUTE_DISTANCESKILL] = Condition.setAttributeDistanceSkill,
	[ATTRIBUTE_FISHINGSKILL] = Condition.setAttributeFishingSkill,
	[ATTRIBUTE_SHIELDSKILL] = Condition.setAttributeShieldSkill,
	[ATTRIBUTE_PLAYERSPEED] = Condition.setAttributePlayerSpeed,
}

AVAILABLE_MODIFIERS = {
	PLAYER_MODIFIERS,
	CONDITION_MODIFIERS,
	CREATURESTATS_MODIFIER,
	ITEM_MODIFIERS,
	PLAYER_MODIFIERS,
}