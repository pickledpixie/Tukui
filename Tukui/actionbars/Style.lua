if not TukuiCF["actionbar"].enable == true then return end

local _G = _G
local media = TukuiCF["media"]
local securehandler = CreateFrame("Frame", nil, nil, "SecureHandlerBaseTemplate")
local replace = string.gsub

function style(self)
	local name = self:GetName()
	
	if name:match("MultiCastActionButton") then return end 
	
	local action = self.action
	local Button = self
	local Icon = _G[name.."Icon"]
	local Count = _G[name.."Count"]
	local Flash	 = _G[name.."Flash"]
	local HotKey = _G[name.."HotKey"]
	local Border  = _G[name.."Border"]
	local Btname = _G[name.."Name"]
	local normal  = _G[name.."NormalTexture"]
 
	Flash:SetTexture("")
	Button:SetNormalTexture("")
 
	Border:Hide()
	Border = TukuiDB.dummy
 
	Count:ClearAllPoints()
	Count:SetPoint("BOTTOMRIGHT", 0, TukuiDB.Scale(2))
	Count:SetFont(TukuiCF["media"].font, 12, "OUTLINE")
 
	Btname:SetText("")
	Btname:Hide()
	Btname.Show = TukuiDB.dummy
 
	if not _G[name.."Panel"] then
		self:SetWidth(TukuiDB.buttonsize)
		self:SetHeight(TukuiDB.buttonsize)
 
		local panel = CreateFrame("Frame", name.."Panel", self)
		TukuiDB.CreatePanel(panel, TukuiDB.buttonsize, TukuiDB.buttonsize, "CENTER", self, "CENTER", 0, 0)
 
		panel:SetFrameStrata(self:GetFrameStrata())
		panel:SetFrameLevel(self:GetFrameLevel() - 1)
 
		Icon:SetTexCoord(.08, .92, .08, .92)
		Icon:SetPoint("TOPLEFT", Button, TukuiDB.Scale(2), TukuiDB.Scale(-2))
		Icon:SetPoint("BOTTOMRIGHT", Button, TukuiDB.Scale(-2), TukuiDB.Scale(2))
	end

	HotKey:ClearAllPoints()
	HotKey:SetPoint("TOPRIGHT", 0, TukuiDB.Scale(-3))
	HotKey:SetFont(TukuiCF["media"].font, 12, "OUTLINE")
	HotKey.ClearAllPoints = TukuiDB.dummy
	HotKey.SetPoint = TukuiDB.dummy
 
	if not TukuiCF["actionbar"].hotkey == true then
		HotKey:SetText("")
		HotKey:Hide()
		HotKey.Show = TukuiDB.dummy
	end
 
	if normal then
		normal:ClearAllPoints()
		normal:SetPoint("TOPLEFT")
		normal:SetPoint("BOTTOMRIGHT")
	end
end

local function stylesmallbutton(normal, button, icon, name, pet)
	local Flash	 = _G[name.."Flash"]
	button:SetNormalTexture("")
	
	-- another bug fix reported by Affli in t12 beta
	button.SetNormalTexture = TukuiDB.dummy
	
	Flash:SetTexture(media.buttonhover)
	
	if not _G[name.."Panel"] then
		button:SetWidth(TukuiDB.petbuttonsize)
		button:SetHeight(TukuiDB.petbuttonsize)
		
		local panel = CreateFrame("Frame", name.."Panel", button)
		TukuiDB.CreatePanel(panel, TukuiDB.petbuttonsize, TukuiDB.petbuttonsize, "CENTER", button, "CENTER", 0, 0)
		panel:SetBackdropColor(unpack(media.backdropcolor))
		panel:SetFrameStrata(button:GetFrameStrata())
		panel:SetFrameLevel(button:GetFrameLevel() - 1)

		icon:SetTexCoord(.08, .92, .08, .92)
		icon:ClearAllPoints()
		if pet then
			local autocast = _G[name.."AutoCastable"]
			autocast:SetWidth(TukuiDB.Scale(41))
			autocast:SetHeight(TukuiDB.Scale(40))
			autocast:ClearAllPoints()
			autocast:SetPoint("CENTER", button, 0, 0)
			icon:SetPoint("TOPLEFT", button, TukuiDB.Scale(2), TukuiDB.Scale(-2))
			icon:SetPoint("BOTTOMRIGHT", button, TukuiDB.Scale(-2), TukuiDB.Scale(2))
		else
			icon:SetPoint("TOPLEFT", button, TukuiDB.Scale(2), TukuiDB.Scale(-2))
			icon:SetPoint("BOTTOMRIGHT", button, TukuiDB.Scale(-2), TukuiDB.Scale(2))
		end
	end
	
	normal:ClearAllPoints()
	normal:SetPoint("TOPLEFT")
	normal:SetPoint("BOTTOMRIGHT")
end

function TukuiDB.StyleShift()
	for i=1, NUM_SHAPESHIFT_SLOTS do
		local name = "ShapeshiftButton"..i
		local button  = _G[name]
		local icon  = _G[name.."Icon"]
		local normal  = _G[name.."NormalTexture"]
		stylesmallbutton(normal, button, icon, name)
	end
end

function TukuiDB.StylePet()
	for i=1, NUM_PET_ACTION_SLOTS do
		local name = "PetActionButton"..i
		local button  = _G[name]
		local icon  = _G[name.."Icon"]
		local normal  = _G[name.."NormalTexture2"]
		stylesmallbutton(normal, button, icon, name, true)
	end
end

local function updatehotkey(self, actionButtonType)
	local hotkey = _G[self:GetName() .. 'HotKey']
	local text = hotkey:GetText()
	
	text = replace(text, '(s%-)', 'S')
	text = replace(text, '(a%-)', 'A')
	text = replace(text, '(c%-)', 'C')
	text = replace(text, '(Кнопка мыши )', 'M')
	text = replace(text, KEY_BUTTON3, 'M3')
	text = replace(text, '(Num Pad )', 'N')
	text = replace(text, KEY_PAGEUP, 'PU')
	text = replace(text, KEY_PAGEDOWN, 'PD')
	text = replace(text, KEY_SPACE, 'SpB')
	text = replace(text, KEY_INSERT, 'Ins')
	text = replace(text, KEY_HOME, 'Hm')
	text = replace(text, KEY_DELETE, 'Del')
	text = replace(text, KEY_MOUSEWHEELUP, 'MwU')
	text = replace(text, KEY_MOUSEWHEELDOWN, 'MwD')
	
	if hotkey:GetText() == _G['RANGE_INDICATOR'] then
		hotkey:SetText('')
	else
		hotkey:SetText(text)
	end
end

-- rescale cooldown spiral to fix texture.
local buttonNames = { "ActionButton",  "MultiBarBottomLeftButton", "MultiBarBottomRightButton", "MultiBarLeftButton", "MultiBarRightButton", "ShapeshiftButton", "PetActionButton"}
for _, name in ipairs( buttonNames ) do
	for index = 1, 12 do
		local buttonName = name .. tostring(index)
		local button = _G[buttonName]
		local cooldown = _G[buttonName .. "Cooldown"]
 
		if ( button == nil or cooldown == nil ) then
			break
		end
		
		cooldown:ClearAllPoints()
		cooldown:SetPoint("TOPLEFT", button, "TOPLEFT", 2, -2)
		cooldown:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", -2, 2)
	end
end

local buttons = 0
local function SetupFlyoutButton()
	for i=1, buttons do
		--prevent error if you don't have max ammount of buttons
		if _G["SpellFlyoutButton"..i] then
			style(_G["SpellFlyoutButton"..i])
			TukuiDB.StyleButton(_G["SpellFlyoutButton"..i], true)
		end
	end
end
SpellFlyout:HookScript("OnShow", SetupFlyoutButton)

-- Reposition flyout buttons depending on what tukui bar the button is parented to
local function FlyoutButtonPos(self, buttons, direction)
	for i=1, buttons do
		local parent = SpellFlyout:GetParent()
		if not _G["SpellFlyoutButton"..i] then return end
		
		if InCombatLockdown() then return end
 
		if direction == "LEFT" then
			if i == 1 then
				_G["SpellFlyoutButton"..i]:ClearAllPoints()
				_G["SpellFlyoutButton"..i]:SetPoint("RIGHT", parent, "LEFT", -4, 0)
			else
				_G["SpellFlyoutButton"..i]:ClearAllPoints()
				_G["SpellFlyoutButton"..i]:SetPoint("RIGHT", _G["SpellFlyoutButton"..i-1], "LEFT", -4, 0)
			end
		else
			if i == 1 then
				_G["SpellFlyoutButton"..i]:ClearAllPoints()
				_G["SpellFlyoutButton"..i]:SetPoint("BOTTOM", parent, "TOP", 0, 4)
			else
				_G["SpellFlyoutButton"..i]:ClearAllPoints()
				_G["SpellFlyoutButton"..i]:SetPoint("BOTTOM", _G["SpellFlyoutButton"..i-1], "TOP", 0, 4)
			end
		end
	end
end
 
--Hide the Mouseover texture and attempt to find the ammount of buttons to be skinned
local function styleflyout(self)
	self.FlyoutBorder:SetAlpha(0)
	self.FlyoutBorderShadow:SetAlpha(0)
	
	SpellFlyoutHorizontalBackground:SetAlpha(0)
	SpellFlyoutVerticalBackground:SetAlpha(0)
	SpellFlyoutBackgroundEnd:SetAlpha(0)
	
	for i=1, GetNumFlyouts() do
		local x = GetFlyoutID(i)
		local _, _, numSlots, isKnown = GetFlyoutInfo(x)
		if isKnown then
			buttons = numSlots
			break
		end
	end
	
	--Change arrow direction depending on what bar the button is on
	local arrowDistance
	if ((SpellFlyout and SpellFlyout:IsShown() and SpellFlyout:GetParent() == self) or GetMouseFocus() == self) then
			arrowDistance = 5
	else
			arrowDistance = 2
	end
	
	if (self:GetParent() == MultiBarBottomRight and TukuiCF.actionbar.rightbars > 1) then
		self.FlyoutArrow:ClearAllPoints()
		self.FlyoutArrow:SetPoint("LEFT", self, "LEFT", -arrowDistance, 0)
		SetClampedTextureRotation(self.FlyoutArrow, 270)
		FlyoutButtonPos(self,buttons,"LEFT")
	elseif (self:GetParent() == MultiBarLeft and not TukuiDB.lowversion and TukuiCF.actionbar.bottomrows == 2) then
		self.FlyoutArrow:ClearAllPoints()
		self.FlyoutArrow:SetPoint("TOP", self, "TOP", 0, arrowDistance)
		SetClampedTextureRotation(self.FlyoutArrow, 0)
		FlyoutButtonPos(self,buttons,"UP")	
	elseif not self:GetParent():GetParent() == "SpellBookSpellIconsFrame" then
		FlyoutButtonPos(self,buttons,"UP")
	end
end

do	
	for i = 1, 12 do
		TukuiDB.StyleButton(_G["MultiBarLeftButton"..i], true)
		TukuiDB.StyleButton(_G["MultiBarRightButton"..i], true)
		TukuiDB.StyleButton(_G["MultiBarBottomRightButton"..i], true)
		TukuiDB.StyleButton(_G["MultiBarBottomLeftButton"..i], true)
		TukuiDB.StyleButton(_G["ActionButton"..i], true)
	end
	 
	for i=1, 10 do
		TukuiDB.StyleButton(_G["ShapeshiftButton"..i], true)
		TukuiDB.StyleButton(_G["PetActionButton"..i], true)	
	end
end

hooksecurefunc("ActionButton_Update", style)
hooksecurefunc("ActionButton_UpdateHotkeys", updatehotkey)
hooksecurefunc("ActionButton_UpdateFlyout", styleflyout)

--[[
    MultiCastActionBar Skin
	
	(C)2010 Darth Android / Telroth - The Venture Co.

]]

if TukuiDB.myclass ~= "SHAMAN" then return end

-- Courtesy Blizzard Inc.
-- I wouldn't have to copy these if they'd just make them not local >.>
SLOT_EMPTY_TCOORDS = {
	[EARTH_TOTEM_SLOT] = {
		left	= 66 / 128,
		right	= 96 / 128,
		top		= 3 / 256,
		bottom	= 33 / 256,
	},
	[FIRE_TOTEM_SLOT] = {
		left	= 67 / 128,
		right	= 97 / 128,
		top		= 100 / 256,
		bottom	= 130 / 256,
	},
	[WATER_TOTEM_SLOT] = {
		left	= 39 / 128,
		right	= 69 / 128,
		top		= 209 / 256,
		bottom	= 239 / 256,
	},
	[AIR_TOTEM_SLOT] = {
		left	= 66 / 128,
		right	= 96 / 128,
		top		= 36 / 256,
		bottom	= 66 / 256,
	},
}

function quickTest()
	MultiCastActionBarFrame:ClearAllPoints()
	MultiCastActionBarFrame:SetPoint("CENTER",UIParent,"CENTER")
end
local AddOn_Loaded = CreateFrame("Frame")
AddOn_Loaded:RegisterEvent("ADDON_LOADED")
AddOn_Loaded:SetScript("OnEvent", function(self, event, addon)
	if addon ~= "Tukui" then return end

	Mod_AddonSkins:RegisterSkin("Blizzard_TotemBar",function(Skin,skin,Layout,layout,config)
		-- Skin Flyout
		function Skin:SkinMCABFlyoutFrame(flyout)
			flyout.top:SetTexture(nil)
			flyout.middle:SetTexture(nil)
			self:SkinFrame(flyout)
			flyout:SetBackdropBorderColor(0,0,0,0)
			flyout:SetBackdropColor(0,0,0,0)
			-- Skin buttons
			local last = nil
			for _,button in ipairs(flyout.buttons) do
				self:SkinButton(button)
				TukuiDB.StyleButton(button)
				button:SetBackdropBorderColor(select(2, flyout:GetPoint()):GetBackdropBorderColor())
				if not InCombatLockdown() then
					button:SetSize(config.buttonSize,config.buttonSize)
					button:ClearAllPoints()
					button:SetPoint("BOTTOM",last,"TOP",0,config.borderWidth)
				end			
				if button:IsVisible() then last = button end
			end
			
			flyout.buttons[1]:SetPoint("BOTTOM",flyout,"BOTTOM")
			if flyout.type == "slot" then
				local tcoords = SLOT_EMPTY_TCOORDS[flyout.parent:GetID()]
				flyout.buttons[1].icon:SetTexCoord(tcoords.left,tcoords.right,tcoords.top,tcoords.bottom)
			end
			-- Skin Close button
			local close = MultiCastFlyoutFrameCloseButton
			self:SkinButton(close)
			close:SetBackdropBorderColor(select(2, flyout:GetPoint()):GetBackdropBorderColor())
			
			close:GetHighlightTexture():SetTexture([[Interface\Buttons\ButtonHilight-Square]])
			close:GetHighlightTexture():SetPoint("TOPLEFT",close,"TOPLEFT",config.borderWidth,-config.borderWidth)
			close:GetHighlightTexture():SetPoint("BOTTOMRIGHT",close,"BOTTOMRIGHT",-config.borderWidth,config.borderWidth)
			close:GetNormalTexture():SetTexture(nil)
			close:ClearAllPoints()
			close:SetPoint("BOTTOMLEFT",last,"TOPLEFT",0,config.buttonSpacing)
			close:SetPoint("BOTTOMRIGHT",last,"TOPRIGHT",0,config.buttonSpacing)
			close:SetHeight(config.buttonSpacing*2)
			
			flyout:ClearAllPoints()
			if TukuiCF["others"].totembardirection == "UP" then
				flyout:SetPoint("BOTTOM",flyout.parent,"TOP",0,config.buttonSpacing)
			else
				flyout:SetPoint("TOP",flyout.parent,"BOTTOM",0,config.buttonSpacing)
			end
		end
		hooksecurefunc("MultiCastFlyoutFrame_ToggleFlyout",function(self) skin:SkinMCABFlyoutFrame(self) end)
		
		function Skin:SkinMCABFlyoutOpenButton(button, parent)
			button:GetHighlightTexture():SetTexture(nil)
			button:GetNormalTexture():SetTexture(nil)
			button:SetHeight(config.buttonSpacing*3)
			button:ClearAllPoints()
			if TukuiCF["others"].totembardirection == "UP" then
				button:SetPoint("BOTTOMLEFT", parent, "TOPLEFT")
				button:SetPoint("BOTTOMRIGHT", parent, "TOPRIGHT")
			else
				button:SetPoint("TOPLEFT", parent, "BOTTOMLEFT")
				button:SetPoint("TOPRIGHT", parent, "BOTTOMRIGHT")			
			end
			button:SetBackdropColor(0,0,0,0)
			button:SetBackdropBorderColor(0,0,0,0)
			if not button.visibleBut then
				button.visibleBut = CreateFrame("Frame",nil,button)
				button.visibleBut:SetHeight(config.buttonSpacing*2)
				button.visibleBut:SetPoint("TOPLEFT")
				button.visibleBut:SetPoint("TOPRIGHT")
				button.visibleBut.highlight = button.visibleBut:CreateTexture(nil,"HIGHLIGHT")
				button.visibleBut.highlight:SetTexture([[Interface\Buttons\ButtonHilight-Square]])
				if TukuiCF["others"].totembardirection == "UP" then
					button.visibleBut.highlight:SetPoint("TOPLEFT",button.visibleBut,"TOPLEFT",config.borderWidth,-config.borderWidth)
					button.visibleBut.highlight:SetPoint("BOTTOMRIGHT",button.visibleBut,"BOTTOMRIGHT",-config.borderWidth,config.borderWidth)
				else
					button.visibleBut.highlight:SetPoint("BOTTOMLEFT",button.visibleBut,"BOTTOMLEFT",config.borderWidth,-config.borderWidth)
					button.visibleBut.highlight:SetPoint("TOPRIGHT",button.visibleBut,"TOPRIGHT",-config.borderWidth,config.borderWidth)				
				end
				self:SkinFrame(button.visibleBut)
				button.visibleBut:SetBackdropBorderColor(parent:GetBackdropBorderColor())
			end
		end
		hooksecurefunc("MultiCastFlyoutFrameOpenButton_Show",function(button,_, parent) skin:SkinMCABFlyoutOpenButton(button, parent) end)
		
		local bordercolors = {
			{.23,.45,.13},    -- Earth
			{.58,.23,.10},    -- Fire
			{.19,.48,.60},   -- Water
			{.42,.18,.74},   -- Air
			{.39,.39,.12}    -- Summon / Recall
		}
		
		function Skin:SkinMCABSlotButton(button, index)
			self:SkinFrame(button)
			TukuiDB.StyleButton(button)
			
			button.overlayTex:SetTexture(nil)
			button.background:SetDrawLayer("ARTWORK")
			button.background:ClearAllPoints()
			button.background:SetPoint("TOPLEFT",button,"TOPLEFT",config.borderWidth,-config.borderWidth)
			button.background:SetPoint("BOTTOMRIGHT",button,"BOTTOMRIGHT",-config.borderWidth,config.borderWidth)
			button:SetSize(config.buttonSize, config.buttonSize)
			button:SetBackdropBorderColor(unpack(bordercolors[((index-1) % 4) + 1]))
		end
		hooksecurefunc("MultiCastSlotButton_Update",function(self, slot) skin:SkinMCABSlotButton(self, slot) end)
		
		-- Skin the actual totem buttons
		function Skin:SkinMCABActionButton(button, index)
			button.overlayTex:SetTexture(nil)
			button.overlayTex:Hide()
			if not InCombatLockdown() then button:SetAllPoints(button.slotButton) end
			button:SetBackdropBorderColor(unpack(bordercolors[((index-1) % 4) + 1]))
			button:SetBackdropColor(0,0,0,0)
		end
		hooksecurefunc("MultiCastActionButton_Update",function(actionButton, actionId, actionIndex, slot) skin:SkinMCABActionButton(actionButton,actionIndex) end)
		
		-- Skin the summon and recall buttons
		function Skin:SkinMCABSpellButton(button, index)
			if not button then return end
			self:SkinButton(button)
			self:SkinBackgroundFrame(button)
			TukuiDB.StyleButton(button)
			style(button)
			button:SetBackdropBorderColor(unpack(bordercolors[((index-1)%5)+1]))
			if not InCombatLockdown() then button:SetSize(config.buttonSize, config.buttonSize) end
			_G[button:GetName().."Highlight"]:SetTexture(nil)
			_G[button:GetName().."NormalTexture"]:SetTexture(nil)
		end
		hooksecurefunc("MultiCastSummonSpellButton_Update", function(self) skin:SkinMCABSpellButton(self,0) end)
		hooksecurefunc("MultiCastRecallSpellButton_Update", function(self) skin:SkinMCABSpellButton(self,5) end)
		
		local frame = MultiCastActionBarFrame
	end)
end)
