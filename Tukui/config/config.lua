﻿TukuiCF["general"] = {
	["autoscale"] = true,                  -- mainly enabled for users that don't want to mess with the config file
	["uiscale"] = 0.64,                    -- set your value (between 0.64 and 1) of your uiscale if autoscale is off
	["multisampleprotect"] = true,         -- i don't recommend this because of shitty border but, voila!
	["embedright"] = "",				-- Addon to embed to the right frame ("Omen", "Recount", "Skada")
	["recountscript"] = 0, 					--0 = off, 1 = shows recount when in-combat(in party or raid instance), 2 = shows recount when out of combat, hides when in-combat(in party or raid instance)
	["classcolortheme"] = false,			--class colored theme for panels
}

TukuiCF["skin"] = {	--Skin addons by Darth Android, and Mr.Ruben5
	["recount"] = false,
	["skada"] = true,
	["dxe"] = false,
	["omen"] = false,
}

TukuiCF["unitframes"] = {
	-- general options
	["enable"] = true,                     -- do i really need to explain this?
	["fontsize"] = 12,						-- default font height for unitframes
	["highThreshold"] = 80,                -- hunter high threshold
	["lowThreshold"] = 20,                 -- global low threshold, for low mana warning.
	["targetpowerpvponly"] = false,         -- enable power text on pvp target only
	["showfocustarget"] = false,           -- show focus's target
	["showtotalhpmp"] = false,             -- change the display of info text on player and target with XXXX/Total.
	["showsmooth"] = true,                 -- enable smooth bar
	["showthreat"] = true,                 -- enable the threat bar anchored to info left panel.
	["charportrait"] = true,              -- enable character portrait
	["classcolor"] = true,                  -- color unitframes by class
	["healthcolor"] = { .3, .3, .3, 1 }, --color of the unitframe when unicolor theme is enabled
	["combatfeedback"] = false,             -- enable combattext on player and target.
	["playeraggro"] = true,                -- color player border to red if you have aggro on current target.
	["positionbychar"] = false,             -- save X, Y position with /uf (movable frame) per character instead of per account.
	["ComboHideOOC"] = false,				-- hide combo bar out of combat
	["ComboHideNoEnergy"] = true,			-- hide if you don't have energy
	["swingbar"] = false,					--enables swingbar (dps layout only)
	["debuffhighlight"] = true,				--highlight frame with the debuff color if the frame is dispellable
	["showsymbols"] = true,	               -- show symbol.
	["aggro"] = true,                      -- show aggro on all raids layouts
	
	-- hunter only plugin
	["mendpet"] = true,						--mend pet duration overlay on pet frame
	
	-- death knight only plugin
	["runebar"] = true,                    -- enable tukui runebar plugin
	
	-- shaman only plugin
	["totemtimer"] = true,                 -- enable tukui totem timer plugin
}

TukuiCF["raidframes"] = {
	["enable"] = true,						-- enable raid frames
	["fontsize"] = 12,						-- default font height for raidframes
	["scale"] = 1,							-- for smaller use a number less than one (0.73), for higher use a number larger than one
	["showrange"] = true,                  -- show range opacity on raidframes
	["hidenonmana"] = true,					-- hide non mana on party/raid frames
	["healcomm"] = true,                  -- enable healcomm4 support on healer layout.
	["raidalphaoor"] = 0.3,                -- alpha of raidframes when unit is out of range
	["gridonly"] = false,                  -- enable grid only mode for all raid layout. TEMP
	["gridhealthvertical"] = true,         -- enable vertical grow on health bar for healer layout
	["showplayerinparty"] = true,          -- show my player frame in party
	["maintank"] = true,                  -- enable maintank
	["mainassist"] = true,                -- enable mainassist
	["showboss"] = true,                   -- enable boss unit frames for PVELOL encounters.
}

TukuiCF["auras"] = {
	["auratimer"] = true,                  -- enable timers on buffs/debuffs
	["auratextscale"] = 11,                -- the font size of buffs/debuffs timers on unitframes
	["playerauras"] = true,               -- enable auras
	["playershowonlydebuffs"] = true, 		-- only show the players debuffs over the player frame, not buffs (playerauras must be true)
	["playerdebuffsonly"] = true,			-- show the players debuffs on target, and any debuff in the whitelist (see debuffFilter.lua)
	["targetauras"] = true,                -- enable auras on target unit frame
	["minimapauras"] = true,				-- enable minimap auras
	["arenadebuffs"] = true, 				-- enable debuff filter for arena frames
	["raidunitbuffwatch"] = true,       -- track important spell to watch in pve for grid mode.
	["totdebuffs"] = true,                -- enable tot debuffs (high reso only)
	["focusdebuffs"] = true,              -- enable focus debuffs 
}

TukuiCF["castbar"] = {
	["unitcastbar"] = true, -- enable tukui castbar
		["cblatency"] = false, -- enable castbar latency
		["cbicons"] = true, -- enable icons on castbar
		["castermode"] = false, -- makes castbar larger and puts it above the actionbar frame
		["classcolor"] = false, -- classcolor
		["castbarcolor"] = { 0.3, 0.3, 0.3, 1 }, -- Color of player castbar
		["nointerruptcolor"] = { 1, 0.1, 0.1, 0.5 }, -- Color of target castbar
}

TukuiCF["classtimer"] = {
	["enable"] = false,
		["bar_height"] = 17,
		["bar_spacing"] = 1,
		["icon_position"] = 2, -- 0 = left, 1 = right, 2 = Outside left, 3 = Outside Right
		["layout"] = 4, --1 - both player and target auras in one frame right above player frame, 2 - player and target auras separated into two frames above player frame, 3 - player, target and trinket auras separated into three frames above player frame, 4 - player and trinket auras are shown above player frame and target auras are shown above target frame
		["showspark"] = true,
		["cast_suparator"] = true,
		
		["classcolor"] = false,
		["buffcolor"] = {0.3, 0.3, 0.3, 1}, -- if classcolor isnt true
		["debuffcolor"] = {0.69, 0.31, 0.31, 1},
		["proccolor"] = {0.84, 0.75, 0.65, 1},
}

TukuiCF["combattext"] = {
	["showoverheal"] = false, --show over healing?
	["showhots"] = false, -- show hots?
}

TukuiCF["arena"] = {
	["unitframes"] = true,                 -- enable tukz arena unitframes (requirement : tukui unitframes enabled)
	["spelltracker"] = true,               -- enable tukz enemy spell tracker (an afflicted3 or interruptbar alternative)
}

TukuiCF["actionbar"] = {
	["enable"] = true,                     -- enable tukz action bars
		["hotkey"] = true,                     -- enable hotkey display because it was a lot requested
		["rightbarmouseover"] = false,         -- enable right bars on mouse over
		["shapeshiftmouseover"] = false,       -- enable shapeshift or totembar on mouseover
		["hideshapeshift"] = false,            -- hide shapeshift or totembar because it was a lot requested.
		["bottomrows"] = 2,                    -- numbers of row you want to show at the bottom (select between 1, 1.5, 2 only)
		["rightbars"] = 2,                     -- numbers of right bar you want
		["splitbar"] = true,					-- split the third right actionbar into two rows of 3 on the left and right side of the main actionbar
		["showgrid"] = true,                   -- show grid on empty button
}

TukuiCF["nameplate"] = {
	["enable"] = true,                     -- enable nice skinned nameplates that fit into tukui
		["showhealth"] = true,					-- show health text on nameplate
		["enhancethreat"] = true,				-- threat features based on if your a tank or not
		["showcombo"] = false,					-- show combo points on nameplate
		["overlap"] = false,				--allow nameplates to overlap
}

TukuiCF["loot"] = {
	["lootframe"] = true,                  -- reskin the loot frame to fit tukui
	["rolllootframe"] = true,              -- reskin the roll frame to fit tukui
	["autogreed"] = true,                  -- auto-dez or auto-greed item at max level.
}

TukuiCF["cooldown"] = {
	["enable"] = true,                     -- do i really need to explain this?
		["treshold"] = 4,                      -- show decimal under X seconds and text turn red
		["expiringcolor"] = { 1, 0, 0 },		--color of expiring seconds turns to 
		["secondscolor"] = { 1, 1, 0 },			--seconds color
		["minutescolor"] = { 1, 1, 1 },			-- minutes color
		["hourscolor"] = { 0.4, 1, 1 },			-- hours color
		["dayscolor"] = { 0.4, 0.4, 1 },		-- days color
}

TukuiCF["datatext"] = {
	["stat1"] = 7,						   -- Stat Based on your Role (Avoidance-Tank, AP-Melee, SP/HP-Caster)
	["dur"] = 4,                           -- show your equipment durability on panels.
	["stat2"] = 0, 						   -- Stat Based on your Role (Armor-Tank, Crit-Melee, Crit-Caster)
	["system"] = 6,                        -- show fps and ms on panels, and total addon memory in tooltip
	["wowtime"] = 8,                       -- show time on panels
	["gold"] = 5,                          -- show your current gold on panels
	["guild"] = 1,                         -- show number on guildmate connected on panels
	["friends"] = 2,                       -- show number of friends connected.
	
	["battleground"] = true,               -- enable 3 stats in battleground only that replace stat1,stat2,stat3.
	["time24"] = true,                     -- set time to 24h format.
	["localtime"] = true,                 -- set time to local time instead of server time.
	["fontsize"] = 12,                     -- font size for panels.
}

TukuiCF["chat"] = {
	["enable"] = true,                     -- blah
		["whispersound"] = true,               -- play a sound when receiving whisper
		["showbackdrop"] = true,				-- show a backdrop on the chat panels
		["chatwidth"] = 400,					-- width of chat frame
		["chatheight"] = 150,					-- height of chat frame
		["fadeoutofuse"] = false,				-- fade chat text when out of use
		["sticky"] = true,						-- when opening the chat edit box resort to previous channel
}

TukuiCF["tooltip"] = {
	["enable"] = true,                     -- true to enable this mod, false to disable
		["hidecombat"] = false,                -- hide bottom-right tooltip when in combat
		["hidecombatraid"] = true,				-- only hide in combat in a raid instance
		["hidebuttons"] = false,               -- always hide action bar buttons tooltip.
		["hideuf"] = false,                    -- hide tooltip on unitframes
		["cursor"] = false,                    -- show anchored to cursor
		["colorreaction"] = false,				-- always color border of tooltip by unit reaction
		["xOfs"] = 0,							--X offset
		["yOfs"] = 0,							--Y offset
}

TukuiCF["buffreminder"] = {
	["enable"] = true,                     -- this is now the new innerfire warning script for all armor/aspect class.
		["sound"] = true,                      -- enable warning sound notification for reminder.
}

TukuiCF["others"] = {
	["pvpautorelease"] = true,            -- enable auto-release in bg or wintergrasp.
	["sellgrays"] = true,                  -- automaticly sell grays?
	["autorepair"] = true,                 -- automaticly repair?
	["errorenable"] = true,                     -- true to enable this mod, false to disable
	["autoacceptinv"] = true,                 -- auto-accept invite from guildmate and friends.
	["enablemap"] = true,                     -- reskin the map to fit tukui
	["enablebag"] = true,                     -- enable an all in one bag mod that fit tukui perfectly
	["totembardirection"] = "UP",			-- set to up or down
	["spincam"] = false,						-- spin camera while afk
}
