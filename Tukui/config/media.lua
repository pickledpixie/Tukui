TukuiCF["media"] = {
	-- fonts
	["font"] = [=[Interface\Addons\Tukui\media\fonts\skurri.ttf]=], -- general font of tukui
	["uffont"] = [[Interface\AddOns\Tukui\media\fonts\skurri.ttf]], -- general font of unitframes
	["dmgfont"] = [[Interface\AddOns\Tukui\media\fonts\combat_font.ttf]], -- general font of dmg / sct
	
	-- textures
	["normTex"] = [[Interface\AddOns\Tukui\media\textures\normTex]], -- texture used for tukui healthbar/powerbar/etc
	["glowTex"] = [[Interface\AddOns\Tukui\media\textures\glowTex]], -- the glow text around some frame.
	["blank"] = [[Interface\AddOns\Tukui\media\textures\blank]], -- the main texture for all borders/panels
	["bordercolor"] = { .3,.3,.3,1 }, -- border color of tukui panels
	["altbordercolor"] = { .3,.3,.3,1 }, -- alternative border color, mainly for unitframes text panels.
	["backdropcolor"] = { .1,.1,.1,1 }, -- background color of tukui panels
	["backdropfadecolor"] = { .1,.1,.1,0.8 }, --this is always the same as the backdrop color with an alpha of 0.8, see colors.lua
	["valuecolor"] = {0,.5,1}, -- color for values of datatexts, classcolor must be off
	["raidicons"] = [[Interface\AddOns\Tukui\media\textures\raidicons.blp]], -- new raid icon textures by hankthetank
	
	-- sound
	["whisper"] = [[Interface\AddOns\Tukui\media\sounds\whisper.mp3]],
	["warning"] = [[Interface\AddOns\Tukui\media\sounds\warning.mp3]],
	["glossyTexture"] = true,	-- Use a glossy texture for all frames
}
