--[[ #### Script Selection ####
Set true to run the script. Set false to not run the script.
DO NOT CHANGE BOT ORDER - THIS WILL MAKE ERRORS ]]--

--[[ ACT 1 ]]--
Config.Scripts.Cows.Enabled                   = false

Config.Scripts.Mausoleum.Enabled              = false
Config.Scripts.Mausoleum.ClearCrypt           = false

Config.Scripts.Countess.Enabled               = false

Config.Scripts.UndergroundPassage.Enabled     = false

Config.Scripts.Pits.Enabled                   = false
Config.Scripts.Pits.ClearPits1                = false

Config.Scripts.Andariel.Enabled               = false

--[[ ACT 2 ]]--
Config.Scripts.StonyTombs.Enabled             = false
Config.Scripts.StonyTombs.ClearStonyTombs2    = false

Config.Scripts.AncientTunnels.Enabled         = false

Config.Scripts.Arcane.Enabled                 = false

Config.Scripts.Summoner.Enabled               = false
Config.Scripts.Summoner.KillDuriel            = false

Config.Scripts.Tombs.Enabled                  = false

Config.Scripts.Duriel.Enabled                 = false

--[[ ACT 3 ]]--
Config.Scripts.ArachnidLair.Enabled           = false

Config.Scripts.SwampyPits.Enabled             = false
Config.Scripts.SwampyPits.ClearSwampyPits2    = false
Config.Scripts.SwampyPits.ClearSwampyPits3    = false

Config.Scripts.DisusedFane.Enabled            = false

Config.Scripts.RuinedTemple.Enabled           = false

Config.Scripts.ForgottenReliquary.Enabled     = false

Config.Scripts.A3Sewers.Enabled               = false

-- get area id -> https://github.com/kolton/d2bot-with-kolbot/blob/master/d2bs/kolbot/sdk/areas.txt
Config.Scripts.ChestMania.Enabled             = false
Config.Scripts.ChestMania.Act1                = { }
Config.Scripts.ChestMania.Act2                = { }
Config.Scripts.ChestMania.Act3                = { }
Config.Scripts.ChestMania.Act4                = { }
Config.Scripts.ChestMania.Act5                = { }

Config.Scripts.Travincal.Enabled              = false

Config.Scripts.Mephisto.Enabled               = false
Config.Scripts.Mephisto.KillCouncil           = false
Config.Scripts.Mephisto.TakeRedPortal         = false

--[[ ACT 4 ]]--
Config.Scripts.Diablo.Enabled                 = false
Config.Scripts.Diablo.Entrance                = false

Config.Scripts.FastDiablo.Enabled             = false

--[[ ACT 5 ]]--
Config.Scripts.Abaddon.Enabled                = false

Config.Scripts.PitOfAcheron.Enabled           = false

Config.Scripts.InfernalPit.Enabled            = false

Config.Scripts.DrifterCavern.Enabled          = false

Config.Scripts.IcyCellar.Enabled              = false

Config.Scripts.Eldritch.Enabled               = false
Config.Scripts.Eldritch.KillShenk             = false

Config.Scripts.Pindleskin.Enabled             = false
Config.Scripts.Pindleskin.KillNihlathak       = false

Config.Scripts.Nihlathak.Enabled              = false

Config.Scripts.Worldstone.Enabled             = false

Config.Scripts.Baal.Enabled                   = false
Config.Scripts.Baal.DollQuit                  = false
Config.Scripts.Baal.SoulQuit                  = false
Config.Scripts.Baal.KillBaal                  = false

-- #### Character Settings ####
Config.ClassID        = 1       -- [Sorceress: 1 | Paladin: 3]
Config.CharacterName  = "NovaInfinity" -- Name of the character. Bot will automatically find character and select it. **** CASE SENSITIVE ***

-- #### General Settings ####
Config.Mode           = 0       -- [Single Player: 0 | Battle.net: 1]
Config.Difficulty     = 2       -- [NormaL: 0 | Nightmare: 1 | Hell: 2]
Config.PublicMode     = false   -- Normal botting, no open tp: false | Town portal for Chaos and Baal: true
Config.GameType       = 0       -- [Quick Play: 0 | Lobby: 1 (requires GameName)]
Config.GameName       = ""      -- Game name the bot will use. Bot will add numbers at the end automatically.
Config.GamePassword   = ""      -- Game password, set to "" for no password.
Config.MinGameTime    = 90      -- Minimum game time in seconds. If the bot finishes the run early it will wait in town until the time is reached.
Config.MaxGameTime    = 2700    -- Max game time in seconds. If the bot has not finished the run before this time is reached, it will quit the game.
Config.MakeWalk       = false   -- Restrict char from teleporting. Useful for low level/low mana chars.

-- #### Chicken Settings ####
Config.LifeChicken    = 20      -- Exit game if life is less or equal to designated percent.
Config.ManaChicken    = 0       -- Exit game if mana is less or equal to designated percent.
Config.MercChicken    = 0       -- Exit game if merc's life is less or equal to designated percent.
Config.TownHP         = 30      -- Go to town if life is under designated percent.
Config.TownMP         = 0       -- Go to town if mana is under designated percent.

-- #### Town Settings ####
Config.HealHP         = 65      -- Go to a healer if under designated percent of life.
Config.HealMP         = 65      -- Go to a healer if under designated percent of mana.
Config.HealStatus     = true    -- Go to a healer if poisoned or cursed.
Config.UseMerc        = true    -- Use merc.
Config.MercWatch      = true    -- Instant merc revive during battle.
Config.TownCheck      = true    -- Go to town if out of potions.
Config.StashGold      = 300000  -- Minimum amount of gold to stash.
Config.RepairPercent  = 35      -- Durability percent of any equipped item that will trigger repairs.

-- #### Potion Settings ####
Config.UseHP          = 75      -- Drink a healing potion if life is under designated percent.
Config.UseRejuvHP     = 40      -- Drink a rejuvenation potion if life is under designated percent.
Config.UseMP          = 75      -- Drink a mana potion if mana is under designated percent.
Config.UseRejuvMP     = 40      -- Drink a rejuvenation potion if mana is under designated percent.
Config.UseMercHP      = 70      -- Give a healing potion to your merc if his/her life is under designated percent.
Config.UseMercRejuv   = 35      -- Give a rejuvenation potion to your merc if his/her life is under designated percent.

-- Potion types for belt columns from left to right. Rejuvenation potions must always be rightmost.
-- Supported potions - Healing ("hp"), Mana ("mp") and Rejuvenation ("rv")
Config.BeltColumn     = { "hp", "rv", "rv", "rv" }

-- Minimum amount of potions from left to right. If we have less, go to vendor to purchase more.
-- Set rejuvenation columns to 0, because they can't be bought.
Config.MinColumn      = { 3, 0, 0, 0 }

--[[ #### Inventory Setting ####
*** READ VERY CAREFULLY, OTHERWISE THE BOT WILL SELL YOUR ANNI / TORCH / GHEED ***
0 means the area is LOCKED. 1 means the area is NOT LOCKED.
LOCKED area should have your charms, tomes, and keys (ID tome required*).
NOT LOCKED area will be DROPPED / STASHED / SOLD. ]]--
Config.Inventory = {
  { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
  { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
  { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
  { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
}

-- #### Pickit Settings ####
Config.PickRange        = 40      -- Pick radius.
Config.FastPick         = true    -- Check and pick items between attacks.
Config.OpenChests       = true    -- Open chests. Controls key buying.
Config.OpenChestsRange  = 15      -- How far it should check for chest when travelling.
Config.PickitFiles      = {
  -- You can use a relative file path. To add multiple pickits with folders use double backslash in path.
  "pickits\\minimal.nip",
}

-- #### Gamble Settings ####
Config.Gamble           = true
Config.GambleGoldStart  = 2400000
Config.GambleGoldStop   = 1800000
Config.GambleItems      = { "ring", "amulet" }

--[[ #### Shrine Settings ####
1 = Refilling
2 = Health
3 = Mana
4 = NOT EXIST !! NOT USE
5 = NOT EXIST !! NOT USE
6 = Armor
7 = Combat
8 = Resist Fire
9 = Resist Cold
10 = Resist Lightning
11 = Resist Poison
12 = Skill
13 = Mana Recharge
14 = Stamina
15 = Experience
16 = NOT EXIST !! NOT USE
17 = Portal
18 = Gem
19 = Fire
20 = Monster
21 = Exploding
22 = Poison ]]--
Config.ScanShrines = { 20, 15, 12, 13, 6, 11, 10, 8, 9, 14, 7 }

--[[ #### Attack Setting ####
To disable an attack use -1.
Use the skill number for skill ID. See _skills.txt for skill IDs. EXAMPLE: Blizzard = 59.
You can set two kinds of spells: timed (blizzard, meteor) and untimed (fireball, chain lightning).
If you do not use timed spells, just use the untimed skill ID. ]]--
Config.AttackSkill = {
  -1, -- Preattack skill
  48, -- Primary skill for bosses
  -1, -- Primary untimed skill for bosses. Use -1 if above skill is an untimed skill
  48, -- Primary skill for other monsters
  -1, -- Primary untimed skill for other monsters. Use -1 if above skill is an untimed skill
  -1, -- Alternate skill for immune monsters
  -1, -- Alternate untimed skill for immune monsters. Use -1 if above skill is an untimed skill
}

--[[ #### Custom Attack Setting ####
Allows custom skills to be used on custom monsters. See _monsters.txt for monster IDs
Format: [ID] = {timed skill id, untimed skill id}
Example: [156] = {38, -1} -- use Charged Bolt on Andariel ]]--
Config.CustomAttack = {

}

-- #### Low Mana Skill Setting ####
Config.LowManaSkill = {
  -1, -- Skill to use when out of mana (timed)
  -1, -- Second skill to use when out of mana (untimed)
}

--[[ #### Skip Immune Setting ####
Possible options: "fire", "cold", "lightning", "poison", "physical", "magic".
To skip enemies with dual immunes put both types in brackets on one line, e.g. { "cold", "fire" }. ]]--
Config.SkipImmune = {
  { "lightning" }
}

--[[ #### Skip Enchant Setting ####
Possible options: "extra strong", "extra fast", "cursed", "magic resistant", "fire enchanted", "lightning enchanted",
  "cold enchanted", "mana burn", "teleportation", "spectral hit", "stone skin", "multiple shots".
Can be combined with the same format as Immunities. ]]--
Config.SkipEnchant = {

}

--[[ #### Skip Aura Setting ####
Possible options: "fanaticism", "might" ]]--
Config.SkipAura = {

}

-- #### Class Settings ####
Config.Sorceress.UseTelekinesis = true  -- Use telekinesis on units that allow it. Example: Shrines, Waypoints, Chests, and Portals.
Config.Sorceress.UseHydra       = false -- Set to true to use hydra, your untimed skill will be replaced by hydra if the target is not fire immune and you don't have 6 hydra in range of the target.
Config.Sorceress.HydraClearType = 0x0   -- What kind of monsters to use hydra on. [0x0 = all | 0x7 = champion + unique + boss | 0xF = unique + boss]
Config.Sorceress.CastStatic     = 60    -- Cast static until the target is at designated life percent. | 100 = disabled
Config.Sorceress.StaticList     = {     -- Find monster IDs in _monsters.txt
  -- Bosses
  156, -- andariel (Andariel)
  211, -- duriel (Duriel)
  242, -- mephisto (Mephisto)
  243, -- diablo (Diablo)
  544, -- baalcrab (Baal)
}
-- Use Static Field on immune monsters
-- Possible options: "fire", "cold", "lightning", "poison", "physical", "magic".
-- To use Static on enemies with dual immunes put both types in brackets on one line, e.g. { "cold","fire" }.
Config.Sorceress.StaticImmune = {

}

-- #### SafeCast Settings ####
-- This option should be used if you want to cast skills at a safe distance when there are many monsters.
-- Whenever the bot has to cast a skill, he wil try to find a safe position instead of standing too close to a cluster of monster.
Config.SafeCastEnabled          = false   -- Whether SafeCast is enabled or not. ONLY WORKS FOR SORCERESS
Config.SafeCastRadius           = 5       -- What radius around the player to take in account for monsters count.
Config.SafeCastMonsterThreshold = 15      -- How many monsters has to be in the SafeCastRadius to trigger a re-position. This is weigthed against your HP. [5 = Low Gear | 10 = CTA or MaxBlock | 15 = CTA and MaxBlock]

-- #### Dodge Settings ####
Config.Dodge              = true    -- Move away from monsters that get too close. Don't use with short-ranged attacks.
Config.DodgeRange         = 7       -- How far to move away when dodging. [Nova: 7 | Otherwise: 15]
Config.DodgeMonsterRange  = 5       -- How close a monster can get before dodging. [Nova: 6 | Otherwise: 10]
Config.DodgeHP            = 70      -- Dodge only if HP percent is less than or equal to designated percent.

-- #### Cast Settings ####
Config.PacketCasting      = 2       -- [Disable: 0 | Teleport only: 1 | All skills: 2]
Config.PrimarySlot        = -1      -- Primary weapon slot: -1 = disabled (will try to determine primary slot by using non-cta slot that's not empty), 0 = slot I, 1 = slot II
Config.PrecastRange       = 20      -- Precast skills (BOs, Shields, ...) will be used when a monster is this far away.
Config.PrecastForce       = false   -- Enable to force precast on each new script start, otherwise will only refresh 30s before expiration.
Config.TeleStomp          = true    -- Use merc to attack monsters if they're immune to attacks but not to physical damage.

-- #### Clear Settings ####
Config.ClearType          = 0xF     -- What kind of monsters to attack. [0x0 = all | 0x7 = champion + unique + boss | 0xF = unique + boss]
Config.BossPriority       = true    -- Set to true to attack Unique/SuperUnique monsters first when clearing.
Config.ClearPath.Enabled  = true    -- Set true to enable the bot clearing enemies while pathfinding.
Config.ClearPath.Range    = 500     -- How far away to check for monsters while traveling.
Config.ClearPath.SpecType = 0xF     -- What kind of monsters to attack. [0x0 = all | 0x7 = champion + unique + boss | 0xF = unique + boss]
Config.ClearPath.Areas    = {       -- A list of area IDs where ClearPath will be active. If you do not put any areas in this list the bot will clear ALL areas.
  -- Find area IDs in _areas.txt
  74, -- Arcane Sanctuary

  108, -- Chaos Sanctuary

  129, -- Worldstone Keep Level 2
  130, -- Worldstone Keep Level 3
  131, -- Throne of Destruction
}

-- #### Crafting Constants ####
Roll = {
	All = 0,
	Eth = 1,
	NonEth = 2
}

Recipe = {
  Gem = 0,
  HitPower = {
    Helm = 1,
    Boots = 2,
    Gloves = 3,
    Belt = 4,
    Shield = 5,
    Body = 6,
    Amulet = 7,
    Ring = 8,
    Weapon = 9
  },
  Blood = {
    Helm = 10,
    Boots = 11,
    Gloves = 12,
    Belt = 13,
    Shield = 14,
    Body = 15,
    Amulet = 16,
    Ring = 17,
    Weapon = 18
  },
  Caster = {
    Helm = 19,
    Boots = 20,
    Gloves = 21,
    Belt = 22,
    Shield = 23,
    Body = 24,
    Amulet = 25,
    Ring = 26,
    Weapon = 27
  },
  Safety = {
    Helm = 28,
    Boots = 29,
    Gloves = 30,
    Belt = 31,
    Shield = 32,
    Body = 33,
    Amulet = 34,
    Ring = 35,
    Weapon = 36
  },
  Unique = {
    Weapon = {
      ToExceptional = 37,
      ToElite = 38
    },
    Armor = {
      ToExceptional = 39,
      ToElite = 40
    }
  },
  Rare = {
    Weapon = {
      ToExceptional = 41,
      ToElite = 42
    },
    Armor = {
      ToExceptional = 43,
      ToElite = 44
    }
  },
  Socket = {
    Shield = 45,
    Weapon = 46,
    Armor = 47,
    Helm = 48
  },
  Rune = 49,
  Token = 50,
}

--[[ #### Craft Setting ####

Recipes the bot can craft:
  Recipe.Gem
  Recipe.Rune
  Recipe.Token

  Recipe.HitPower.Helm
  Recipe.HitPower.Boots
  Recipe.HitPower.Gloves
  Recipe.HitPower.Belt
  Recipe.HitPower.Shield
  Recipe.HitPower.Body
  Recipe.HitPower.Amulet
  Recipe.HitPower.Ring
  Recipe.HitPower.Weapon

  Recipe.Blood.Helm
  Recipe.Blood.Boots
  Recipe.Blood.Gloves
  Recipe.Blood.Belt
  Recipe.Blood.Shield
  Recipe.Blood.Body
  Recipe.Blood.Amulet
  Recipe.Blood.Ring
  Recipe.Blood.Weapon

  Recipe.Caster.Helm
  Recipe.Caster.Boots
  Recipe.Caster.Gloves
  Recipe.Caster.Belt
  Recipe.Caster.Shield
  Recipe.Caster.Body
  Recipe.Caster.Amulet
  Recipe.Caster.Ring
  Recipe.Caster.Weapon

  Recipe.Safety.Helm
  Recipe.Safety.Boots
  Recipe.Safety.Gloves
  Recipe.Safety.Belt
  Recipe.Safety.Shield
  Recipe.Safety.Body
  Recipe.Safety.Amulet
  Recipe.Safety.Ring
  Recipe.Safety.Weapon

  Recipe.Unique.Weapon.ToExceptional
  Recipe.Unique.Weapon.ToElite
  Recipe.Unique.Armor.ToExceptional
  Recipe.Unique.Armor.ToElite

  Recipe.Rare.Weapon.ToExceptional
  Recipe.Rare.Weapon.ToElite
  Recipe.Rare.Armor.ToExceptional
  Recipe.Rare.Armor.ToElite

  Recipe.Socket.Shield
  Recipe.Socket.Weapon
  Recipe.Socket.Armor
  Recipe.Socket.Helm

All recipes are written like this = { recipe_name, item_name_or_classid, eth }

Item name and classids are found here -> https://github.com/blizzhackers/kolbot/blob/master/d2bs/kolbot/libs/NTItemAlias.dbl

Some example recipe results, these need to be put into your put pickit file to keep the resulting items
the bot will automatically get ingredients. You do not need put the prerequisite items like chip gem/flawless gems in pickit file.

Config.Recipes = {
  { Recipe.Gem, "Flawless Topaz" }, -- This is to use 3x Flawless Topaz to a make perfect topaz
  { Recipe.Token }, -- This is to create tokens
  { Recipe.Rune, "El Rune" }, -- This is to turn 3x El Rune into an eld rune
  { Recipe.Caster.Ring }, -- This is for crafting a caster ring
  { Recipe.HitPower.Gloves, "Vambraces" }, -- This is to craft a hitpower glove and bot will use the "Vambraces" it finds
}

Some more example recipes, but this is need you make some extra lines in your pickit file.
You will need to add the base item for your pickit, and the bot will automatically get ingredients needed for the craft.

You will need to do this for all this recipes =
  Recipe.Unique.Weapon.ToExceptional
  Recipe.Unique.Weapon.ToElite
  Recipe.Unique.Armor.ToExceptional
  Recipe.Unique.Armor.ToElite
  Recipe.Rare.Weapon.ToExceptional
  Recipe.Rare.Weapon.ToElite
  Recipe.Rare.Armor.ToExceptional
  Recipe.Rare.Armor.ToElite
  Recipe.Socket.Shield
  Recipe.Socket.Weapon
  Recipe.Socket.Armor
  Recipe.Socket.Helm

For this, you also need to do
  Roll.Eth - This will tell the bot to only use Eth item for craft
  Roll.NonEth - This will tell the bot to only use NO Eth item for craft (non-ethereal)
  Roll.All - This will tell the bot to only use with Eth or Noneth item

Config.Recipes = {
  { Recipe.Socket.Weapon, "Thresher", Roll.Eth }, -- This will roll sockets into a "Thresher" and only bot will only do this with "Eth" (ethereal)
}

For this recipe you need to add a line in your pickit like

[Name] == Thresher && [Quality] == Normal && [Flag] == Ethereal # [Sockets] == 0 # [MaxQuantity] == 1
[Name] == Thresher && [Quality] == Normal && [Flag] == Ethereal # [Sockets] == 4

This will cause the bot to keep 1x Eth Thresher for crafting after bot does the craft, he will only keep
Eth Thresher that has 4 sockets if the resulting craft is 1 OR 2 OR 3 socket bot will discard the resulting item.
]]--
Config.Cubing   = false
Config.Recipes  = {
  --{ Recipe.Gem, "Flawless Amethyst" }, -- Make Perfect Amethyst
  --{ Recipe.Gem, "Flawless Topaz" }, -- Make Perfect Topaz
  --{ Recipe.Gem, "Flawless Sapphire" }, -- Make Perfect Sapphire
  --{ Recipe.Gem, "Flawless Emerald" }, -- Make Perfect Emerald
  --{ Recipe.Gem, "Flawless Ruby" }, -- Make Perfect Ruby
  --{ Recipe.Gem, "Flawless Diamond" }, -- Make Perfect Diamond
  --{ Recipe.Gem, "Flawless Skull" }, -- Make Perfect Skull

  --{ Recipe.Token }, -- Make Token of Absolution

  --{ Recipe.Rune, "Lem Rune" }, -- Upgrade Lem to Pul
  --{ Recipe.Rune, "Pul Rune" }, -- Upgrade Pul to Um
  --{ Recipe.Rune, "Um Rune" }, -- Upgrade Um to Mal
  --{ Recipe.Rune, "Mal Rune" }, -- Upgrade Mal to Ist
  --{ Recipe.Rune, "Ist Rune" }, -- Upgrade Ist to Gul
  --{ Recipe.Rune, "Gul Rune" }, -- Upgrade Gul to Vex

  --{ Recipe.HitPower.Gloves, "Vambraces" }, -- Make HitPower Gloves using "Vambraces"
  --{ Recipe.Blood.Helm, "Armet"}, -- Make Blood Helm for "Armet"
  --{ Recipe.Caster.Amulet }, -- Make Caster Amulet
  --{ Recipe.Caster.Ring }, -- Make Caster Ring

  --{ Recipe.Socket.Weapon, "Thresher", Roll.Eth }, -- Make "Thresher" using ONLY "Eth"
}
