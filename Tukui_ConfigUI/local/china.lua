﻿if GetLocale() == "zhCN" then
	-- general
	TukuiL.option_general = "一般"
	TukuiL.option_general_uiscale = "自动调整UI比例"
	TukuiL.option_general_multisample = "多重采样保护"
	TukuiL.option_general_customuiscale = "UI比例 (限用于自动调整关闭时)"
	TukuiL.option_general_recountscript = "显示Recount设定(0-关闭, 1-战斗时显示, 2-非战斗时显示)"
	TukuiL.option_general_embedright = "将插件绑定于右边对话框架(Recount, Omen, Skada)"
	TukuiL.option_general_classtheme = "框架使用职业颜色"

	--Media
	TukuiL.option_media = "Media"
	TukuiL.option_media_font = "Font file path for main font"
	TukuiL.option_media_uffont = "Font file path for UnitFrame fonts"
	TukuiL.option_media_dmgfont = "Font file path for DMG Text font (Requires Restart)"
	TukuiL.option_media_normTex = "Texture file path for unitframe Health/Power texture"
	TukuiL.option_media_glowTex = "Texture file path for glow texture"
	TukuiL.option_media_bubbleTex = "Texture file path for combo point texture (Nameplates)"
	TukuiL.option_media_blank = "Texture file path for main UI Texture"
	TukuiL.option_media_bordercolor = "Color of non-unitframe borders"
	TukuiL.option_media_altbordercolor = "Color of unitframe borders"
	TukuiL.option_media_backdropcolor = "Color of backdrop on all frames"
	TukuiL.option_media_backdropfadecolor = "Color of faded backdrop on certain faded frames"
	TukuiL.option_media_buttonhover = "Texture file path for Button Hover texture on actionbuttons"
	TukuiL.option_media_valuecolor = "Color of Datatext values"
	TukuiL.option_media_raidicons = "Texture file path for raid icons"
	TukuiL.option_media_whisper = "Sound file path for whisper sound"
	TukuiL.option_media_warning = "Warning sound"
		
	-- nameplate
	TukuiL.option_nameplates = "姓名版"
	TukuiL.option_nameplates_enable = "开启姓名版"
	TukuiL.option_nameplates_enhancethreat = "开启仇恨模式, 依照你的角色决定: \n 坦克 - 绿色 (获得仇恨) 红色 (失去仇恨) DPS - 绿色 (失去仇恨) 红色 (获得仇恨)"
	TukuiL.option_nameplates_showhealth = "于姓名版上显示生命文字"

	-- addon skins
	TukuiL.option_skin = "插件皮肤化"
	TukuiL.option_skin_dxe = "Deus Vox Encounters"
	TukuiL.option_skin_omen = "Omen"
	TukuiL.option_skin_recount = "Recount"
	TukuiL.option_skin_skada = "Skada"

	-- combat text
	TukuiL.option_combattext = "战斗文字"
	TukuiL.option_combattext_showoverheal = "显示过量治疗"
	TukuiL.option_combattext_fontsize = "文字大小"
	TukuiL.option_combattext_showhots = "显示HOTs"
	 
	-- classtimer
	TukuiL.option_classtimer = "Class Timer"
	TukuiL.option_classtimer_enable = "开启Classtimer插件"
	TukuiL.option_classtimer_bar_height = "计时条高度"
	TukuiL.option_classtimer_bar_spacing = "计时条间距"
	TukuiL.option_classtimer_icon_position = "图标位置 (0-左边,1-右边,2-外面左边,3-外面右边)"
	TukuiL.option_classtimer_layout = "配置 (1-4)"
	TukuiL.option_classtimer_showspark = "显示火花"
	TukuiL.option_classtimer_cast_suparator = "施法间距"
	TukuiL.option_classtimer_classcolor = "职业上色"
	TukuiL.option_classtimer_debuffcolor = "DEBUFF计时条颜色"
	TukuiL.option_classtimer_buffcolor = "Buff计时条颜色"
	TukuiL.option_classtimer_proccolor = "效果发动计时条颜色"

	-- datatext
	TukuiL.option_datatext = "消息正文"
	TukuiL.option_datatext_24h = "开启24小时制"
	TukuiL.option_datatext_localtime = "使用当地时间"
	TukuiL.option_datatext_bg = "开启战场信息"
	TukuiL.option_datatext_guild = "公会讯息 (0 - 关闭)"
	TukuiL.option_datatext_mem = "内存用量 (0 - 关闭)"
	TukuiL.option_datatext_bags = "背包 (0 - 关闭)"
	TukuiL.option_datatext_fontsize = "消息正文大小"
	TukuiL.option_datatext_system = "延迟及FPS (0 - 关闭)"
	TukuiL.option_datatext_friend = "好友 (0 - 关闭)"
	TukuiL.option_datatext_time = "时间 (0 - 关闭)"
	TukuiL.option_datatext_gold = "金钱 (0 - 关闭)"
	TukuiL.option_datatext_dur = "耐久值 (0 - 关闭)"	
	TukuiL.option_datatext_stat1 = "依职业天赋决定显示属性1"
	TukuiL.option_datatext_stat2 = "依职业天赋决定显示属性2"

	-- auras
	TukuiL.option_auras = "光环"
	TukuiL.option_auras_minimapauras = "开启小地图旁状态光环"
	TukuiL.option_auras_arenadebuffs = "只在竞技场/战场中显示重要DEBUFF"
	TukuiL.option_auras_auratimer = "开启光环时间"
	TukuiL.option_auras_targetaura = "开启目标光环"
	TukuiL.option_auras_focusdebuff = "开启专注目标debuffs"
	TukuiL.option_auras_playeraura = "开启玩家单位窗口光环"
	TukuiL.option_auras_aurascale = "光环文字比例"
	TukuiL.option_auras_totdebuffs = "开启目标的目标debuffs"
	TukuiL.option_auras_playershowonlydebuffs = "只在玩家单位窗口显示debuffs (限开启玩家单位窗口光环下使用)"
	TukuiL.option_auras_playerdebuffsonly = "只显示玩家DEBUFF于目标单位窗口"
	TukuiL.option_auras_RaidUnitBuffWatch = "开起团队buff监视"

	-- raidframes
	TukuiL.option_raidframes = "团队单位窗口"
	TukuiL.option_raidframes_enable = "开启团队单位窗口"
	TukuiL.option_raidframes_gridonly = "队伍中使用25人团队模式窗口"
	TukuiL.option_raidframes_healcomm = "开启HealComm插件 (限治疗配置)"
	TukuiL.option_raidframes_boss = "开启首领单位窗口"
	TukuiL.option_raidframes_hpvertical = "开启GRID纵向生命条 (限治疗配置)"
	TukuiL.option_raidframes_enablerange = "开启团队/队伍超出范围淡出显示"
	TukuiL.option_raidframes_range = "团队/队伍超出范围淡出"
	TukuiL.option_raidframes_maintank = "开启主坦单位窗口"
	TukuiL.option_raidframes_mainassist = "开启主助攻单位窗口"
	TukuiL.option_raidframes_playerparty = "于队伍中显示玩家单位窗口"
	TukuiL.option_raidframes_hidenonmana = "O只在单位有能量时显示能量条"
	TukuiL.option_raidframes_fontsize = "团队单位窗口文字大小"
	TukuiL.option_raidframes_scale = "团队单位窗口比例 (用小数 例: 0.96)"
	TukuiL.option_raidframes_disableblizz = "关闭暴雪默认小队团队框架"

	-- castbar
	TukuiL.option_castbar = "施法条"
	TukuiL.option_castbar_nointerruptcolor = "无法中断法术施法条颜色"
	TukuiL.option_castbar_castbarcolor = "施法条颜色"
	TukuiL.option_castbar_castbar = "开启施法条"
	TukuiL.option_castbar_latency = "显示施法延迟"
	TukuiL.option_castbar_icon = "显示施法条法术图标"
	TukuiL.option_castbar_castermode = "开启大型施法条"
	TukuiL.option_castbar_classcolor = "玩家施法条使用职业颜色"

	-- unit frames
	TukuiL.option_unitframes_unitframes = "单位窗口"
	TukuiL.option_unitframes_healthcolor = "生命条颜色"
	TukuiL.option_unitframes_combatfeedback = "玩家及目标单位窗口战斗回馈"
	TukuiL.option_unitframes_runebar = "开启死亡骑士符能条"
	TukuiL.option_unitframes_totembar = "开启萨满图腾条"
	TukuiL.option_unitframes_totalhpmp = "显示总生命/能量值"
	TukuiL.option_unitframes_aurawatch = "开启Buff监视"
	TukuiL.option_unitframes_saveperchar = "依角色储存单位窗口位置"
	TukuiL.option_unitframes_playeraggro = "开启玩家仇恨显示"
	TukuiL.option_unitframes_smooth = "开启smooth bar插件"
	TukuiL.option_unitframes_portrait = "开启玩家及目标头像"
	TukuiL.option_unitframes_enable = "开启Tukui单位窗口"
	TukuiL.option_unitframes_enemypower = "开启只于敌对玩家显示目标能量值"
	TukuiL.option_unitframes_raidaggro = "开启仇恨显示"
	TukuiL.option_unitframes_symbol = "显示队伍/团队标计"
	TukuiL.option_unitframes_threatbar = "开启仇恨条"
	TukuiL.option_unitframes_focus = "开启专注目标"
	TukuiL.option_unitframes_manalow = "法力过低显示"
	TukuiL.option_unitframes_classcolor = "依照职业上色单位窗口"
	TukuiL.option_unitframes_SwingBar = "开启自动攻击计时条 (限DPS配置)"
	TukuiL.option_unitframes_DebuffHighlight = "单位窗口依可驱散DEBUFF上色"
	TukuiL.option_unitframes_mendpet = "开启玩家宠物动作条于宠物头像(限DPS配置)"
	TukuiL.option_unitframes_fontsize = "单位窗口文字大小"

	-- loot
	TukuiL.option_loot = "战利品"
	TukuiL.option_loot_enableloot = "开启战力品窗口"
	TukuiL.option_loot_autogreed = "开启最高等级时自动贪婪绿色等级装备"
	TukuiL.option_loot_enableroll = "开启骰装窗口"
	 
	-- tooltip
	TukuiL.option_tooltip = "提示讯息"
	TukuiL.option_tooltip_enable = "开启提示讯息"
	TukuiL.option_tooltip_hidecombat = "战斗中隐藏右下角提示讯息"
	TukuiL.option_tooltip_hidebutton = "隐藏动作条的提示讯息"
	TukuiL.option_tooltip_hideuf = "隐藏单位窗口提示讯息"
	TukuiL.option_tooltip_cursor = "开启鼠标旁提示讯息"
	TukuiL.option_tooltip_combatraid = "限于团队战斗中隐藏提示讯息"
	TukuiL.option_tooltip_colorreaction = "提示讯息及生命条依照敌对状态上色"
	TukuiL.option_tooltip_xOfs = "提示讯息X-轴位子调整 (-x = 左, +x = 右)"
	TukuiL.option_tooltip_yOfs = "提示讯息Y-轴位子调整 (-y = 下, +y = 上)"

	-- others
	TukuiL.option_others = "其它"
	TukuiL.option_others_bg = "战场中自动放魂"
	TukuiL.option_others_autosell = "自动贩卖灰色物品"
	TukuiL.option_others_autorepair = "自动修复装备"
	TukuiL.option_others_autoinvite = "开启自动邀请及接受邀请 (限好友及公会会员)"
	TukuiL.option_others_enablemap = "开启Tukui地图"
	TukuiL.option_others_errorhide = "隐藏屏幕中央错误讯息"
	TukuiL.option_others_totembardirection = "图腾裂开启方向 (上/下)"
	TukuiL.option_others_spincam = "AFK时旋转视角"
	TukuiL.option_others_bagenable = "使用整合背包"

	-- reminder
	TukuiL.option_reminder = "光环警告"
	TukuiL.option_reminder_enable = "开启玩家光环警告"
	TukuiL.option_reminder_sound = "开启玩家语音光环警告"
	TukuiL.option_reminder_RaidBuffReminder = "在小地图下开启团队BUFF提醒框架"

	-- action bar
  TukuiL.option_actionbar = "动作条"
	TukuiL.option_actionbar_hidess = "隐藏变身及图腾条"
	TukuiL.option_actionbar_showgrid = "永远显示动作条格位"
	TukuiL.option_actionbar_enable = "开启Tukui动作条"
	TukuiL.option_actionbar_rb = "开启当鼠标移动至右方动作条时显示"
	TukuiL.option_actionbar_hk = "显示热键文字"
	TukuiL.option_actionbar_ssmo = "开启当鼠标移动至变身及图腾条时显示"
	TukuiL.option_actionbar_rbn = "底部动作条数量 (1 或 2)"
	TukuiL.option_actionbar_rbn2 = "底部动作条数量 (1, 1.5, 或 2)"
	TukuiL.option_actionbar_rn = "右方动作条数量 (1, 2 或 3)"
	TukuiL.option_actionbar_splitbar = "开启分割动作条"
	 
	-- arena
	TukuiL.option_arena = "竞技场"
	TukuiL.option_arena_st = "竞技场中开启敌方法术追踪"
	TukuiL.option_arena_uf = "开启竞技场单位窗口"
	 
	-- cooldowns
	TukuiL.option_cooldown = "冷却"
	TukuiL.option_cooldown_enable = "开启按键上冷却倒数文字"
	TukuiL.option_cooldown_th = "倒数文字于X秒后变色"
	TukuiL.option_cooldown_expiringcolor = "倒数到期文字颜色"
	TukuiL.option_cooldown_secondscolor = "秒数文字颜色"
	TukuiL.option_cooldown_minutescolor = "分钟文字颜色"
	TukuiL.option_cooldown_hourscolor = "小时文字颜色"
	TukuiL.option_cooldown_dayscolor = "天数文字颜色"
 
	-- chat
	TukuiL.option_chat = "对话框"
	TukuiL.option_chat_enable = "开启Tukui对话框"
	TukuiL.option_chat_whispersound = "收到密语时语音警告"
	TukuiL_option_chat_chatwidth = "对话框宽度"
	TukuiL_option_chat_backdrop = "显示对话框背景"
	TukuiL_option_chat_chatheight = "对话框高度"
	TukuiL_option_chat_fadeoutofuse = "不使用时对话文字淡出"
	TukuiL_option_chat_sticky = "开启新对话框时预设某些重要频道"
 
	-- buttons
	TukuiL.option_button_reset = "重置UI"
	TukuiL.option_button_load = "套用变动"
	TukuiL.option_button_close = "关闭"
	TukuiL.option_setsavedsetttings = "依角色储存设定"
	TukuiL.option_resetchar = "你确定要将你的角色设定设置成你的预设设定吗?"
	TukuiL.option_resetall = "你确定要将你所有的设定设置成系统预设吗?"
	TukuiL_option_perchar = "你确定要开启或者关闭依角色储存设定的模式吗?"
	TukuiL_option_makeselection = "你必需作出选择才能继续设定"
end