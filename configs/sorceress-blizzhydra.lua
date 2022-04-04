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

Config.Scripts.ChestMania.Enabled             = false

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
Config.ClassID        = 1       -- Sorceress: 1 | Paladin: 3
Config.CharacterName  = "Blizzhydra" -- Name of the character. Bot will automatically find character and select it. **** CASE SENSITIVE ***

-- #### General Settings ####
Config.Mode           = 0       -- Single Player: 0 | Battle.net: 0
Config.Difficulty     = 2       -- NormaL: 0 | Nightmare: 1 | Hell: 2
Config.PublicMode     = false   -- Normal botting, no open tp: false | Town portal for Chaos and Baal: true
Config.GameType       = 0       -- Quick Play: 0 | Lobby: 1 (requires GameName)
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
Config.HealMP         = 20      -- Go to a healer if under designated percent of mana.
Config.HealStatus     = true    -- Go to a healer if poisoned or cursed.
Config.UseMerc        = true    -- Use merc.
Config.MercWatch      = true    -- Instant merc revive during battle.
Config.TownCheck      = true    -- Go to town if out of potions.
Config.StashGold      = 300000  -- Minimum amount of gold to stash.
Config.RepairPercent  = 35      -- Durability percent of any equipped item that will trigger repairs.

-- #### Potion Settings ####
Config.UseHP          = 75      -- Drink a healing potion if life is under designated percent.
Config.UseRejuvHP     = 40      -- Drink a rejuvenation potion if life is under designated percent.
Config.UseMP          = 30      -- Drink a mana potion if mana is under designated percent.
Config.UseRejuvMP     = 0       -- Drink a rejuvenation potion if mana is under designated percent.
Config.UseMercHP      = 70      -- Give a healing potion to your merc if his/her life is under designated percent.
Config.UseMercRejuv   = 35      -- Give a rejuvenation potion to your merc if his/her life is under designated percent.

-- Potion types for belt columns from left to right. Rejuvenation potions must always be rightmost.
-- Supported potions - Healing ("hp"), Mana ("mp") and Rejuvenation ("rv")
Config.BeltColumn     = { "hp", "hp", "mp", "rv" }

-- Minimum amount of potions from left to right. If we have less, go to vendor to purchase more.
-- Set rejuvenation columns to 0, because they can't be bought.
Config.MinColumn      = { 3, 3, 3, 0 }

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
Config.OpenChestsRange  = 20      -- How far it should check for chest when travelling.
Config.PickitFiles      = {
  -- You can use a relative file path. To add multiple pickits with folders use double backslash in path.
  "pickits\\minimal.nip",
}

-- #### Gamble Setting ####
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
  59, -- Primary skill for bosses
  62, -- Primary untimed skill for bosses. Use -1 if above skill is an untimed skill
  59, -- Primary skill for other monsters
  62, -- Primary untimed skill for other monsters. Use -1 if above skill is an untimed skill
  -1, -- Alternate skill for immune monsters
  55, -- Alternate untimed skill for immune monsters. Use -1 if above skill is an untimed skill
}

--[[ #### Advanced Attack config.####
Allows custom skills to be used on custom monsters. See _monsters.txt for monster IDs
Format: [ID] = {timed skill id, untimed skill id}
Example: [156] = {38, -1} -- use Charged Bolt on Andariel ]]--
Config.CustomAttack = {

}

-- #### Low Mana Skills ####
Config.LowManaSkill = {
  -1, -- Skill to use when out of mana (timed)
  -1, -- Second skill to use when out of mana (untimed)
}

-- Skip immune monsters.
-- Possible options: "fire", "cold", "lightning", "poison", "physical", "magic".
-- To skip enemies with dual immunes put both types in brackets on one line, e.g. { "cold", "fire" }.
Config.SkipImmune = {

}

-- Skip enchanted monsters.
-- Possible options: "extra strong", "extra fast", "cursed", "magic resistant",
--  "fire enchanted", "lightning enchanted", "cold enchanted", "mana burn", "teleportation",
--  "spectral hit", "stone skin", "multiple shots".
-- Can be combined with the same format as Immunities.
Config.SkipEnchant = {

}

-- Skip monsters with auras.
-- Possible options: "fanaticism", "might"
Config.SkipAura = {

}

-- #### Class Settings ####
Config.Sorceress.UseTelekinesis = false -- Use telekinesis on units that allow it. Example: Shrines, Waypoints, Chests, and Portals.
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
  { "cold" },
}

-- #### Dodge Settings ####
Config.Dodge              = true    -- Move away from monsters that get too close. Don't use with short-ranged attacks.
Config.DodgeRange         = 15      -- How far to move away when dodging. [Nova: 7 | Otherwise: 15]
Config.DodgeMonsterRange  = 5       -- How close a monster can get before dodging. [Nova: 6 | Otherwise: 10]
Config.DodgeHP            = 100     -- Dodge only if HP percent is less than or equal to designated percent.

-- #### Monster Settings ####
Config.PacketCasting      = 1       -- [0 = disable | 1 = packet teleport | 2 = full packet casting]
Config.PrecastRange       = 20      -- Precast skill (BOs, Shields, ...) will be used when a monster is this far away.
Config.TeleStomp          = true    -- Use merc to attack monsters if they're immune to attacks but not to physical damage.
Config.ClearType          = 0x7     -- What kind of monsters to attack. [0xF = skip normal | 0x7 = champions/bosses | 0 = all]
Config.BossPriority       = false   -- Set to true to attack Unique/SuperUnique monsters first when clearing.

-- #### ClearPath Setting ####
Config.ClearPath.Enabled  = true    -- Set true to enable the bot clearing enemies while pathfinding.
Config.ClearPath.Range    = 500     -- How far away to check for monsters while traveling.
Config.ClearPath.SpecType = 0x7     -- What kind of monsters to attack. [0xF = skip normal | 0x7 = champions/bosses | 0 = all]
Config.ClearPath.Areas    = {       -- A list of area IDs where ClearPath will be active. If you do not put any areas in this list the bot will clear ALL areas.
  -- Find area IDs in _areas.txt
  74, -- Arcane Sanctuary

  108, -- Chaos Sanctuary

  129, -- Worldstone Keep Level 2
  130, -- Worldstone Keep Level 3
  131, -- Throne of Destruction
}
