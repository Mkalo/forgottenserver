ATTRIBUTE_ATTACK = 1
ATTRIBUTE_DEFENSE = 2
ATTRIBUTE_ARMOR = 3
ATTRIBUTE_ATTACKSPEED = 4
ATTRIBUTE_HITCHANCE = 5
ATTRIBUTE_MAXMANA = 6
ATTRIBUTE_MAXHEALTH = 7
ATTRIBUTE_MANAREGEN = 8
ATTRIBUTE_HEALTHREGEN = 9
ATTRIBUTE_MAGICSKILL = 10
ATTRIBUTE_MELEESKILL = 11
ATTRIBUTE_AXESKILL = 12
ATTRIBUTE_SWORDSKILL = 13
ATTRIBUTE_CLUBSKILL = 14
ATTRIBUTE_DISTANCESKILL = 15
ATTRIBUTE_FISHINGSKILL = 16
ATTRIBUTE_SHIELDSKILL = 17
ATTRIBUTE_PLAYERSPEED = 18
ATTRIBUTE_CRITICAL = 19
ATTRIBUTE_DODGE = 20
ATTRIBUTE_COOLDOWN = 21
ATTRIBUTE_REFLECTENERGY = 22
ATTRIBUTE_REFLECTFIRE = 23
ATTRIBUTE_REFLECTEARTH = 24
ATTRIBUTE_REFLECTICE = 25
ATTRIBUTE_REFLECTHOLY = 26
ATTRIBUTE_REFLECTDEATH = 27
ATTRIBUTE_REFLECTPHYSIC = 28
ATTRIBUTE_ABSORBENERGY = 29
ATTRIBUTE_ABSORBFIRE = 30
ATTRIBUTE_ABSORBEARTH = 31
ATTRIBUTE_ABSORBICE = 32
ATTRIBUTE_ABSORBHOLY = 33
ATTRIBUTE_ABSORBDEATH = 34
ATTRIBUTE_ABSORBPHYSIC = 35
ATTRIBUTE_MAGICDAMAGE = 36
ATTRIBUTE_PHYSICDAMAGE = 37
ATTRIBUTE_ENERGYDAMAGE = 38
ATTRIBUTE_FIREDAMAGE = 39
ATTRIBUTE_EARTHDAMAGE = 40
ATTRIBUTE_ICEDAMAGE = 41
ATTRIBUTE_HOLYDAMAGE = 42
ATTRIBUTE_DEATHDAMAGE = 43
ATTRIBUTE_HEALTHHEALING = 44
ATTRIBUTE_MANAHEALING = 45
ATTRIBUTE_HEALTHLEECH = 46
ATTRIBUTE_MANALEECH = 47

ATTRIBUTE_NAMES = {
	[ATTRIBUTE_ATTACK] = "Attack",
	[ATTRIBUTE_DEFENSE] = "Defense",
	[ATTRIBUTE_ARMOR] = "Armor",
	[ATTRIBUTE_ATTACKSPEED] = "Attack Speed",
	[ATTRIBUTE_HITCHANCE] = "Hit Chance",
	[ATTRIBUTE_MAXMANA] = "Max Mana",
	[ATTRIBUTE_MAXHEALTH] = "Max Health",
	[ATTRIBUTE_MANAREGEN] = "Mana Regeneration",
	[ATTRIBUTE_HEALTHREGEN] = "Health Regeneration",
	[ATTRIBUTE_MAGICSKILL] = "Magic Skill",
	[ATTRIBUTE_MELEESKILL] = "Melee Skill",
	[ATTRIBUTE_AXESKILL] = "Axe Skill",
	[ATTRIBUTE_SWORDSKILL] = "Sword Skill",
	[ATTRIBUTE_CLUBSKILL] = "Club Skill",
	[ATTRIBUTE_DISTANCESKILL] = "Distance Skill",
	[ATTRIBUTE_FISHINGSKILL] = "Fishing Skill",
	[ATTRIBUTE_SHIELDSKILL] = "Shield Skill",
	[ATTRIBUTE_PLAYERSPEED] = "Speed",
	[ATTRIBUTE_CRITICAL] = "Critical",
	[ATTRIBUTE_DODGE] = "Dodge",
	[ATTRIBUTE_COOLDOWN] = "Cooldown Reduction",
	[ATTRIBUTE_REFLECTENERGY] = "Reflect Energy",
	[ATTRIBUTE_REFLECTFIRE] = "Reflect Fire",
	[ATTRIBUTE_REFLECTEARTH] = "Reflect Earth",
	[ATTRIBUTE_REFLECTICE] = "Reflect Ice",
	[ATTRIBUTE_REFLECTHOLY] = "Reflect Holy",
	[ATTRIBUTE_REFLECTDEATH] = "Reflect Death",
	[ATTRIBUTE_REFLECTPHYSIC] = "Reflect Physic",
	[ATTRIBUTE_ABSORBENERGY] = "Absorb Energy",
	[ATTRIBUTE_ABSORBFIRE] = "Absorb Fire",
	[ATTRIBUTE_ABSORBEARTH] = "Absorb Earth",
	[ATTRIBUTE_ABSORBICE] = "Absorb Ice",
	[ATTRIBUTE_ABSORBHOLY] = "Absorb Holy",
	[ATTRIBUTE_ABSORBDEATH] = "Absorb Death",
	[ATTRIBUTE_ABSORBPHYSIC] = "Absorb Physic",
	[ATTRIBUTE_MAGICDAMAGE] = "Magic Damage",
	[ATTRIBUTE_PHYSICDAMAGE] = "Physic Damage",
	[ATTRIBUTE_ENERGYDAMAGE] = "Energy Damage",
	[ATTRIBUTE_FIREDAMAGE] = "Fire Damage",
	[ATTRIBUTE_EARTHDAMAGE] = "Earth Damage",
	[ATTRIBUTE_ICEDAMAGE] = "Ice Damage",
	[ATTRIBUTE_HOLYDAMAGE] = "Holy Damage",
	[ATTRIBUTE_DEATHDAMAGE] = "Death Damage",
	[ATTRIBUTE_HEALTHHEALING] = "Health Healing",
	[ATTRIBUTE_MANAHEALING] = "Mana Healing",
	[ATTRIBUTE_HEALTHLEECH] = "Health Leech",
	[ATTRIBUTE_MANALEECH] = "Mana Leech",
}

WEAPON_HELMET = 8
WEAPON_ARMOR = 9
WEAPON_LEGS = 10
WEAPON_FEET = 11
WEAPON_NECKLACE = 12
WEAPON_RING  = 13

WEAPON_SLOTID = {
    [WEAPON_SWORD] = CONST_SLOT_LEFT,
    [WEAPON_CLUB] = CONST_SLOT_LEFT,
    [WEAPON_AXE] = CONST_SLOT_LEFT,
    [WEAPON_SHIELD] = CONST_SLOT_RIGHT,
    [WEAPON_DISTANCE] = CONST_SLOT_LEFT,
    [WEAPON_WAND] = CONST_SLOT_LEFT,
    [WEAPON_HELMET] = CONST_SLOT_HEAD,
    [WEAPON_ARMOR] = CONST_SLOT_ARMOR,
    [WEAPON_LEGS] = CONST_SLOT_LEGS,
    [WEAPON_FEET] = CONST_SLOT_FEET,
    [WEAPON_NECKLACE] = CONST_SLOT_NECKLACE,
    [WEAPON_RING] = CONST_SLOT_RING
}

SLOT_CONDITIONID = {
    [CONST_SLOT_LEFT] = CONDITIONID_LEFT,
    [CONST_SLOT_RIGHT] = CONDITIONID_RIGHT,
    [CONST_SLOT_HEAD] = CONDITIONID_HEAD,
    [CONST_SLOT_ARMOR] = CONDITIONID_ARMOR,
    [CONST_SLOT_LEGS] = CONDITIONID_LEGS,
    [CONST_SLOT_FEET] = CONDITIONID_FEET,
    [CONST_SLOT_NECKLACE] = CONDITIONID_NECKLACE,
    [CONST_SLOT_RING] = CONDITIONID_RING
}

CONST_SLOT_FIRST = CONST_SLOT_HEAD
CONST_SLOT_LAST = CONST_SLOT_AMMO

ATTRIBUTE_CONDITION_TYPES = {
	[ATTRIBUTE_MAXMANA] = CONDITION_ATTRIBUTES,
	[ATTRIBUTE_MAXHEALTH] = CONDITION_ATTRIBUTES,
	[ATTRIBUTE_MANAREGEN] = CONDITION_REGENERATION,
	[ATTRIBUTE_HEALTHREGEN] = CONDITION_REGENERATION,
	[ATTRIBUTE_MAGICSKILL] = CONDITION_ATTRIBUTES,
	[ATTRIBUTE_MELEESKILL] = CONDITION_ATTRIBUTES,
	[ATTRIBUTE_AXESKILL] = CONDITION_ATTRIBUTES,
	[ATTRIBUTE_SWORDSKILL] = CONDITION_ATTRIBUTES,
	[ATTRIBUTE_CLUBSKILL] = CONDITION_ATTRIBUTES,
	[ATTRIBUTE_DISTANCESKILL] = CONDITION_ATTRIBUTES,
	[ATTRIBUTE_FISHINGSKILL] = CONDITION_ATTRIBUTES,
	[ATTRIBUTE_SHIELDSKILL] = CONDITION_ATTRIBUTES,
	[ATTRIBUTE_PLAYERSPEED] = CONDITION_HASTE,
}

ITEM_VOC_ALL = 1
ITEM_VOC_SORCERER = 2
ITEM_VOC_DRUID = 3
ITEM_VOC_PALADIN = 4
ITEM_VOC_KNIGHT = 5

COMMON_TIER = 1
UNCOMMON_TIER = 2
RARE_TIER = 3
LEGENDARY_TIER = 4
GODLY_TIER = 5

TIER_NAMES = {
    [COMMON_TIER] = "Common",
    [UNCOMMON_TIER] = "Uncommon",
    [RARE_TIER] = "Rare",
    [LEGENDARY_TIER] = "Legendary",
    [GODLY_TIER] = "Godly"
}

do
	DROP_CHANCE = 20000 -- (0 to 100000) Chance of dropping an item with tier.

	TIER_CHANCES = {
		[COMMON_TIER] = 50000,
		[UNCOMMON_TIER] = 20000,
		[RARE_TIER] = 15000,
		[LEGENDARY_TIER] = 10000,
		[GODLY_TIER] = 5000
	}

	TOTAL_CHANCE = 0

	for id, chance in pairs(TIER_CHANCES) do
		TOTAL_CHANCE = TOTAL_CHANCE+chance
	end

	if TOTAL_CHANCE ~= 100000 then
		print("[WARNING: Total chance from TIER_CHANCES does not add up to 100000")
	end
end

TIER_SLOTCOUNT = {
	[COMMON_TIER] = 1,
	[UNCOMMON_TIER] = 1,
	[RARE_TIER] = 2,
	[LEGENDARY_TIER] = 3,
	[GODLY_TIER] = 4
}

MOVEMENT_ACTIONID = 15000

TIER_BONUSES = {}

--[=[
TIER_BONUSES[TIER_ID] = {
	-- List containing all available attributes and their bonus for given tier
	[ATTRIBUTE_...] = {value =  value[, interval = 1000[, type = "value"]]}
]=]

TIER_BONUSES[COMMON_TIER] = {
	[ATTRIBUTE_ATTACK] = {value =  1},
	[ATTRIBUTE_DEFENSE] = {value =  1},
	[ATTRIBUTE_ARMOR] = {value = 50, type = "percentage"},
	[ATTRIBUTE_ATTACKSPEED] = {value =  1},
	[ATTRIBUTE_HITCHANCE] = {value =  1},
	[ATTRIBUTE_MAXMANA] = {value =  1},
	[ATTRIBUTE_MAXHEALTH] = {value =  1},
	[ATTRIBUTE_MANAREGEN] = {value =  1},
	[ATTRIBUTE_HEALTHREGEN] = {value =  1},
	[ATTRIBUTE_MAGICSKILL] = {value =  1},
	[ATTRIBUTE_MELEESKILL] = {value =  1},
	[ATTRIBUTE_AXESKILL] = {value =  1},
	[ATTRIBUTE_SWORDSKILL] = {value =  1},
	[ATTRIBUTE_CLUBSKILL] = {value =  1},
	[ATTRIBUTE_DISTANCESKILL] = {value =  1},
	[ATTRIBUTE_FISHINGSKILL] = {value =  1},
	[ATTRIBUTE_SHIELDSKILL] = {value =  1},
	[ATTRIBUTE_PLAYERSPEED] = {value =  1},
	[ATTRIBUTE_CRITICAL] = {value =  1},
	[ATTRIBUTE_DODGE] = {value =  1},
	[ATTRIBUTE_COOLDOWN] = {value =  1},
	[ATTRIBUTE_REFLECTENERGY] = {value =  1},
	[ATTRIBUTE_REFLECTFIRE] = {value =  1},
	[ATTRIBUTE_REFLECTEARTH] = {value =  1},
	[ATTRIBUTE_REFLECTICE] = {value =  1},
	[ATTRIBUTE_REFLECTHOLY] = {value =  1},
	[ATTRIBUTE_REFLECTDEATH] = {value =  1},
	[ATTRIBUTE_REFLECTPHYSIC] = {value =  1},
	[ATTRIBUTE_ABSORBENERGY] = {value =  1},
	[ATTRIBUTE_ABSORBFIRE] = {value =  1},
	[ATTRIBUTE_ABSORBEARTH] = {value =  1},
	[ATTRIBUTE_ABSORBICE] = {value =  1},
	[ATTRIBUTE_ABSORBHOLY] = {value =  1},
	[ATTRIBUTE_ABSORBDEATH] = {value =  1},
	[ATTRIBUTE_ABSORBPHYSIC] = {value =  1},
	[ATTRIBUTE_MAGICDAMAGE] = {value =  1},
	[ATTRIBUTE_PHYSICDAMAGE] = {value =  1},
	[ATTRIBUTE_ENERGYDAMAGE] = {value =  1},
	[ATTRIBUTE_FIREDAMAGE] = {value =  1},
	[ATTRIBUTE_EARTHDAMAGE] = {value =  1},
	[ATTRIBUTE_ICEDAMAGE] = {value =  1},
	[ATTRIBUTE_HOLYDAMAGE] = {value =  1},
	[ATTRIBUTE_DEATHDAMAGE] = {value =  1},
	[ATTRIBUTE_HEALTHHEALING] = {value =  1},
	[ATTRIBUTE_MANAHEALING] = {value =  1},
	[ATTRIBUTE_HEALTHLEECH] = {value =  1},
	[ATTRIBUTE_MANALEECH] = {value =  1},
}

TIER_BONUSES[UNCOMMON_TIER] = {
	[ATTRIBUTE_ATTACK] = {value =  2},
	[ATTRIBUTE_DEFENSE] = {value =  2},
	[ATTRIBUTE_ARMOR] = {value =  2},
	[ATTRIBUTE_ATTACKSPEED] = {value =  2},
	[ATTRIBUTE_HITCHANCE] = {value =  2},
	[ATTRIBUTE_MAXMANA] = {value =  2},
	[ATTRIBUTE_MAXHEALTH] = {value =  2},
	[ATTRIBUTE_MANAREGEN] = {value =  2},
	[ATTRIBUTE_HEALTHREGEN] = {value =  2},
	[ATTRIBUTE_MAGICSKILL] = {value =  2},
	[ATTRIBUTE_MELEESKILL] = {value =  2},
	[ATTRIBUTE_AXESKILL] = {value =  2},
	[ATTRIBUTE_SWORDSKILL] = {value =  2},
	[ATTRIBUTE_CLUBSKILL] = {value =  2},
	[ATTRIBUTE_DISTANCESKILL] = {value =  2},
	[ATTRIBUTE_FISHINGSKILL] = {value =  2},
	[ATTRIBUTE_SHIELDSKILL] = {value =  2},
	[ATTRIBUTE_PLAYERSPEED] = {value =  2},
	[ATTRIBUTE_CRITICAL] = {value =  2},
	[ATTRIBUTE_DODGE] = {value =  2},
	[ATTRIBUTE_COOLDOWN] = {value =  2},
	[ATTRIBUTE_REFLECTENERGY] = {value =  2},
	[ATTRIBUTE_REFLECTFIRE] = {value =  2},
	[ATTRIBUTE_REFLECTEARTH] = {value =  2},
	[ATTRIBUTE_REFLECTICE] = {value =  2},
	[ATTRIBUTE_REFLECTHOLY] = {value =  2},
	[ATTRIBUTE_REFLECTDEATH] = {value =  2},
	[ATTRIBUTE_REFLECTPHYSIC] = {value =  2},
	[ATTRIBUTE_ABSORBENERGY] = {value =  2},
	[ATTRIBUTE_ABSORBFIRE] = {value =  2},
	[ATTRIBUTE_ABSORBEARTH] = {value =  2},
	[ATTRIBUTE_ABSORBICE] = {value =  2},
	[ATTRIBUTE_ABSORBHOLY] = {value =  2},
	[ATTRIBUTE_ABSORBDEATH] = {value =  2},
	[ATTRIBUTE_ABSORBPHYSIC] = {value =  2},
	[ATTRIBUTE_MAGICDAMAGE] = {value =  2},
	[ATTRIBUTE_PHYSICDAMAGE] = {value =  2},
	[ATTRIBUTE_ENERGYDAMAGE] = {value =  2},
	[ATTRIBUTE_FIREDAMAGE] = {value =  2},
	[ATTRIBUTE_EARTHDAMAGE] = {value =  2},
	[ATTRIBUTE_ICEDAMAGE] = {value =  2},
	[ATTRIBUTE_HOLYDAMAGE] = {value =  2},
	[ATTRIBUTE_DEATHDAMAGE] = {value =  2},
	[ATTRIBUTE_HEALTHHEALING] = {value =  2},
	[ATTRIBUTE_MANAHEALING] = {value =  2},
	[ATTRIBUTE_HEALTHLEECH] = {value =  2},
	[ATTRIBUTE_MANALEECH] = {value =  2},
}

TIER_BONUSES[RARE_TIER] = {
	[ATTRIBUTE_ATTACK] = {value =  3},
	[ATTRIBUTE_DEFENSE] = {value =  3},
	[ATTRIBUTE_ARMOR] = {value =  3},
	[ATTRIBUTE_ATTACKSPEED] = {value =  3},
	[ATTRIBUTE_HITCHANCE] = {value =  3},
	[ATTRIBUTE_MAXMANA] = {value =  3},
	[ATTRIBUTE_MAXHEALTH] = {value =  3},
	[ATTRIBUTE_MANAREGEN] = {value =  3},
	[ATTRIBUTE_HEALTHREGEN] = {value =  3},
	[ATTRIBUTE_MAGICSKILL] = {value =  3},
	[ATTRIBUTE_MELEESKILL] = {value =  3},
	[ATTRIBUTE_AXESKILL] = {value =  3},
	[ATTRIBUTE_SWORDSKILL] = {value =  3},
	[ATTRIBUTE_CLUBSKILL] = {value =  3},
	[ATTRIBUTE_DISTANCESKILL] = {value =  3},
	[ATTRIBUTE_FISHINGSKILL] = {value =  3},
	[ATTRIBUTE_SHIELDSKILL] = {value =  3},
	[ATTRIBUTE_PLAYERSPEED] = {value =  3},
	[ATTRIBUTE_CRITICAL] = {value =  3},
	[ATTRIBUTE_DODGE] = {value =  3},
	[ATTRIBUTE_COOLDOWN] = {value =  3},
	[ATTRIBUTE_REFLECTENERGY] = {value =  3},
	[ATTRIBUTE_REFLECTFIRE] = {value =  3},
	[ATTRIBUTE_REFLECTEARTH] = {value =  3},
	[ATTRIBUTE_REFLECTICE] = {value =  3},
	[ATTRIBUTE_REFLECTHOLY] = {value =  3},
	[ATTRIBUTE_REFLECTDEATH] = {value =  3},
	[ATTRIBUTE_REFLECTPHYSIC] = {value =  3},
	[ATTRIBUTE_ABSORBENERGY] = {value =  3},
	[ATTRIBUTE_ABSORBFIRE] = {value =  3},
	[ATTRIBUTE_ABSORBEARTH] = {value =  3},
	[ATTRIBUTE_ABSORBICE] = {value =  3},
	[ATTRIBUTE_ABSORBHOLY] = {value =  3},
	[ATTRIBUTE_ABSORBDEATH] = {value =  3},
	[ATTRIBUTE_ABSORBPHYSIC] = {value =  3},
	[ATTRIBUTE_MAGICDAMAGE] = {value =  3},
	[ATTRIBUTE_PHYSICDAMAGE] = {value =  3},
	[ATTRIBUTE_ENERGYDAMAGE] = {value =  3},
	[ATTRIBUTE_FIREDAMAGE] = {value =  3},
	[ATTRIBUTE_EARTHDAMAGE] = {value =  3},
	[ATTRIBUTE_ICEDAMAGE] = {value =  3},
	[ATTRIBUTE_HOLYDAMAGE] = {value =  3},
	[ATTRIBUTE_DEATHDAMAGE] = {value =  3},
	[ATTRIBUTE_HEALTHHEALING] = {value =  3},
	[ATTRIBUTE_MANAHEALING] = {value =  3},
	[ATTRIBUTE_HEALTHLEECH] = {value =  3},
	[ATTRIBUTE_MANALEECH] = {value =  3},
}

TIER_BONUSES[LEGENDARY_TIER] = {
	[ATTRIBUTE_ATTACK] = {value =  4},
	[ATTRIBUTE_DEFENSE] = {value =  4},
	[ATTRIBUTE_ARMOR] = {value =  4},
	[ATTRIBUTE_ATTACKSPEED] = {value =  4},
	[ATTRIBUTE_HITCHANCE] = {value =  4},
	[ATTRIBUTE_MAXMANA] = {value =  4},
	[ATTRIBUTE_MAXHEALTH] = {value =  4},
	[ATTRIBUTE_MANAREGEN] = {value =  4},
	[ATTRIBUTE_HEALTHREGEN] = {value =  4},
	[ATTRIBUTE_MAGICSKILL] = {value =  4},
	[ATTRIBUTE_MELEESKILL] = {value =  4},
	[ATTRIBUTE_AXESKILL] = {value =  4},
	[ATTRIBUTE_SWORDSKILL] = {value =  4},
	[ATTRIBUTE_CLUBSKILL] = {value =  4},
	[ATTRIBUTE_DISTANCESKILL] = {value =  4},
	[ATTRIBUTE_FISHINGSKILL] = {value =  4},
	[ATTRIBUTE_SHIELDSKILL] = {value =  4},
	[ATTRIBUTE_PLAYERSPEED] = {value =  4},
	[ATTRIBUTE_CRITICAL] = {value =  4},
	[ATTRIBUTE_DODGE] = {value =  4},
	[ATTRIBUTE_COOLDOWN] = {value =  4},
	[ATTRIBUTE_REFLECTENERGY] = {value =  4},
	[ATTRIBUTE_REFLECTFIRE] = {value =  4},
	[ATTRIBUTE_REFLECTEARTH] = {value =  4},
	[ATTRIBUTE_REFLECTICE] = {value =  4},
	[ATTRIBUTE_REFLECTHOLY] = {value =  4},
	[ATTRIBUTE_REFLECTDEATH] = {value =  4},
	[ATTRIBUTE_REFLECTPHYSIC] = {value =  4},
	[ATTRIBUTE_ABSORBENERGY] = {value =  4},
	[ATTRIBUTE_ABSORBFIRE] = {value =  4},
	[ATTRIBUTE_ABSORBEARTH] = {value =  4},
	[ATTRIBUTE_ABSORBICE] = {value =  4},
	[ATTRIBUTE_ABSORBHOLY] = {value =  4},
	[ATTRIBUTE_ABSORBDEATH] = {value =  4},
	[ATTRIBUTE_ABSORBPHYSIC] = {value =  4},
	[ATTRIBUTE_MAGICDAMAGE] = {value =  4},
	[ATTRIBUTE_PHYSICDAMAGE] = {value =  4},
	[ATTRIBUTE_ENERGYDAMAGE] = {value =  4},
	[ATTRIBUTE_FIREDAMAGE] = {value =  4},
	[ATTRIBUTE_EARTHDAMAGE] = {value =  4},
	[ATTRIBUTE_ICEDAMAGE] = {value =  4},
	[ATTRIBUTE_HOLYDAMAGE] = {value =  4},
	[ATTRIBUTE_DEATHDAMAGE] = {value =  4},
	[ATTRIBUTE_HEALTHHEALING] = {value =  4},
	[ATTRIBUTE_MANAHEALING] = {value =  4},
	[ATTRIBUTE_HEALTHLEECH] = {value =  4},
	[ATTRIBUTE_MANALEECH] = {value =  4},
}

TIER_BONUSES[GODLY_TIER] = {
	[ATTRIBUTE_ATTACK] = {value =  5},
	[ATTRIBUTE_DEFENSE] = {value =  5},
	[ATTRIBUTE_ARMOR] = {value =  5},
	[ATTRIBUTE_ATTACKSPEED] = {value =  5},
	[ATTRIBUTE_HITCHANCE] = {value =  5},
	[ATTRIBUTE_MAXMANA] = {value =  5},
	[ATTRIBUTE_MAXHEALTH] = {value =  5},
	[ATTRIBUTE_MANAREGEN] = {value =  5},
	[ATTRIBUTE_HEALTHREGEN] = {value =  5},
	[ATTRIBUTE_MAGICSKILL] = {value =  5},
	[ATTRIBUTE_MELEESKILL] = {value =  5},
	[ATTRIBUTE_AXESKILL] = {value =  5},
	[ATTRIBUTE_SWORDSKILL] = {value =  5},
	[ATTRIBUTE_CLUBSKILL] = {value =  5},
	[ATTRIBUTE_DISTANCESKILL] = {value =  5},
	[ATTRIBUTE_FISHINGSKILL] = {value =  5},
	[ATTRIBUTE_SHIELDSKILL] = {value =  5},
	[ATTRIBUTE_PLAYERSPEED] = {value =  5},
	[ATTRIBUTE_CRITICAL] = {value =  5},
	[ATTRIBUTE_DODGE] = {value =  5},
	[ATTRIBUTE_COOLDOWN] = {value =  5},
	[ATTRIBUTE_REFLECTENERGY] = {value =  5},
	[ATTRIBUTE_REFLECTFIRE] = {value =  5},
	[ATTRIBUTE_REFLECTEARTH] = {value =  5},
	[ATTRIBUTE_REFLECTICE] = {value =  5},
	[ATTRIBUTE_REFLECTHOLY] = {value =  5},
	[ATTRIBUTE_REFLECTDEATH] = {value =  5},
	[ATTRIBUTE_REFLECTPHYSIC] = {value =  5},
	[ATTRIBUTE_ABSORBENERGY] = {value =  5},
	[ATTRIBUTE_ABSORBFIRE] = {value =  5},
	[ATTRIBUTE_ABSORBEARTH] = {value =  5},
	[ATTRIBUTE_ABSORBICE] = {value =  5},
	[ATTRIBUTE_ABSORBHOLY] = {value =  5},
	[ATTRIBUTE_ABSORBDEATH] = {value =  5},
	[ATTRIBUTE_ABSORBPHYSIC] = {value =  5},
	[ATTRIBUTE_MAGICDAMAGE] = {value =  5},
	[ATTRIBUTE_PHYSICDAMAGE] = {value =  5},
	[ATTRIBUTE_ENERGYDAMAGE] = {value =  5},
	[ATTRIBUTE_FIREDAMAGE] = {value =  5},
	[ATTRIBUTE_EARTHDAMAGE] = {value =  5},
	[ATTRIBUTE_ICEDAMAGE] = {value =  5},
	[ATTRIBUTE_HOLYDAMAGE] = {value =  5},
	[ATTRIBUTE_DEATHDAMAGE] = {value =  5},
	[ATTRIBUTE_HEALTHHEALING] = {value =  5},
	[ATTRIBUTE_MANAHEALING] = {value =  5},
	[ATTRIBUTE_HEALTHLEECH] = {value =  5},
	[ATTRIBUTE_MANALEECH] = {value =  5},
}
