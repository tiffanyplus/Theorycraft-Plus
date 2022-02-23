if GetLocale() == "ruRU" then

-- The format of the tooltip is defined below.
-- It looks ghastly complicated at first, but is quite straight forward.

-- show is which checkbox needs to be enabled for the line to show

-- if inverse is true, then the checkbox needs to be unchecked

-- left is what gets added to the left hand side of the toolip
-- right is what gets added to the right hand side of the tooltip

-- If a value is not found, the entire line will be hidden.
-- to avoid this, put it in an if... eg the line:
--       "foo#IFbar lalala $invalidvalue$ no#"
-- will just show the word "foo", as the invalid value will hide the entire
-- if.

-- Where you want one value to be shown, or if that isn't valid to show
-- another, use OR.  Eg on a spell with 1000 minimum damage:
--       "foo#ORthis is invalid$invalidvalue$/bar $mindamage$OR#"
-- will just show foobar 1000, however if the spell is a heal nothing
-- will be shown at all.

-- Format for ORs:
--     "#OR text / more text OR#"
-- Format for IFs:
--     "#IF text IF#"

TheoryCraft_TooltipOrs = {
	hitorhealhit = "Меткость",
	hitorhealheal = "исцеление",
	damorhealdam = "Урон",
	damorhealheal = "Исцеление",
	damorapap = "САт",
	damorapdam = "+урон",
}

TheoryCraft_TooltipFormat = {
	{show = true, 				left = "#c1,1,1#$spellname$", right = "#c0.5,0.5,0.5#Уровень $spellrank$"},
	{show = true, 				left = "#c1,1,1#$wandlineleft2$", right = "#c1,1,1#$wandlineright2$"},
	{show = true, 				left = "#c1,1,1#$wandlineleft3$", right = "#c1,1,1#$wandlineright3$"},
	{show = "embedstyle1", 		left = "#c1,1,1#$wandlineleft4$", right = "Крит: #c0.9,0.9,1#$critchance,1$%#c1,1,1#"},
	{show = "embedstyle1", inverse = true, left = "#c1,1,1#$wandlineleft4$"},
	{show = true, 				left = "Мана: #c1,1,1#$basemanacost$", right = "#c1,1,1#$spellrange$"},
	{show = "embedstyle1", 		left = "#c0.9,0.9,1##OR$dps$#c1,1,1# УВС/$hps$#c1,1,1# ИВСOR#", right = "Крит: #c0.9,0.9,1#$critchance,1$%#c1,1,1#"},
	{show = "embedstyle2", 		left = "#c0.9,0.9,1##OR$dpm,2$#c1,1,1# УЗМ/$hpm,2$#c1,1,1# ИЗМOR#", right = "Крит: #c0.9,0.9,1#$critchance,1$%#c1,1,1#"},
	{show = "embedstyle3", 		left = "#c0.9,0.9,1##OR$dps$#c1,1,1# УВС/$hpm,2$#c1,1,1# ИЗМOR#", right = "Крит: #c0.9,0.9,1#$critchance,1$%#c1,1,1#"},
	{show = true, 				left = "#c1,1,1#$basecasttime$", right = "#c1,1,1#$cooldown$"},
	{show = true, 				left = "#c1,1,1#$cooldownremaining$",},
	{show = "embed", 			left = "#c1,0.82745098,0##OR$description$/$basedescription$OR##WRAP#"},
	{show = "embed", inverse = true, left = "#c1,0.82745098,0#$basedescription$#WRAP#"},
	{show = true, 				left = "#c1,0.5,1#$outfitname$"},
	{show = true, 				left = "Восполнение $evocation$ маны."},
	{show = true, 				left = "Без баффов: $sealunbuffed,1$ увс"},
	{show = true, 				left = "С это печатью: $sealbuffed,1$ увс"},
	{show = "titles", 			left = "#c1,1,1##TITLE=Статистика Исцеления#"},
	{show = "embed", inverse = true, left = "Исцеление: $healrange$"},
	{show = "critwithdam", 		left = "Крит: $crithealchance,2$% (на $crithealrange$)"},
	{show = "critwithoutdam", 	left = "Крит: $crithealchance,2$%"},
	{show = "hps", 				left = "ИВС: $hps,1$#IF, $withhothps,1$IF#"},
	{show = "dpsdam", 			left = "ИВС +исцеление: $hpsdam,1$ ($hpsdampercent,1$%)"},
	{show = "averagedamnocrit", left = "Среднее исцеление: $averagehealnocrit$"},
	{show = "averagedamnocrit", left = "Тики по: $averagehealtick$"},
	{show = "averagedam", 		left = "Среднее исцеление: $averageheal$"},
	{show = "averagedam", 		left = "Тики по: $averagehealtick$"},
	{show = "titles", 			left = "#c1,1,1##TITLE=Статистика Урона#"},
	{show = "embed", inverse = true, left = "Попаданий: $dmgrange$"},
	{show = "critmelee", 		left = "Крит: $critdmgchance,2$% (на $critdmgrange$)"},
	{show = "critwithdam", 		left = "Крит: $critdmgchance,2$% (на $critdmgrange$)"},
	{show = "sepignite", 		left = "С возгоранием: $igniterange$"},
	{show = "critwithoutdam",	left = "Крит: $critdmgchance,2$%"},
	{show = "dps", 				left = "УВС: $dps,1$#IF, $withdotdps,1$IF#"},
	{show = "dpsdam", 			left = "УВС +урон: $dpsdam,1$ ($dpsdampercent,1$%)"},
	{show = "averagedamnocrit", left = "Средний урон: $averagedamnocrit$"},
	{show = "averagedamnocrit", left = "Тики по: $averagedamtick$"},
	{show = "averagedam", 	 	left = "Средний урон: $averagedam$"},
	{show = "averagedam", 	 	left = "Тики по: $averagedamtick$"},
	{show = "titles", 		 	left = "#c1,1,1##TITLE=Множители:#"},
	{show = "plusdam", 		 	left = "Основ. +$damorheal$: $plusdam$"},
	{show = "damcoef", 		 	left = "Коэффициент +$damorheal$: $damcoef,1$%#IF, $damcoef2,1$%IF#"},
	{show = "dameff", 		 	left = "Эффективность +$damorheal$: $dameff,1$%"},
	{show = "damtodouble", 	 	left = "+$damorheal$ двойной: $damtodouble$"},
	{show = "damfinal",		 	left = "Итоговый +$damorheal$: $damfinal$#IF, $damfinal2$IF#"},
	{show = "titles", 		 	left = "#c1,1,1##TITLE=Сопротивления:#"},
	{show = "resists", 		 	left = "Рейтинг сопротивления ($resistlevel$): $resistrate$%"},
	{show = "resists", 		 	left = "После уровня сопротивления: $dpsafterresists,1$ УВС"},
	{show = "resists", 		 	left = "До: $penetration,1$ УВС (проникающий)"},
	{show = "titles", 		 	left = "#c1,1,1##TITLE=Сравнения:#"},
	{show = "nextcrit", 	 	left = "1% крита: +$nextcritheal,2$ среднее исцеление (экв: $nextcrithealequive,2$ +исцеление)"},
	{show = "nextstr", 		 	left = "10 сил: +$nextstrdam,2$ среднее $hitorheal$ (экв: $nextstrdamequive,2$ $damorap$)"},
	{show = "nextagi", 		 	left = "10 лов: +$nextagidam,2$ среднее $hitorheal$#IF (экв: $nextagidamequive,2$ $damorap$)IF#"},
	{show = "nextcrit", 	 	left = "1% крита: +$nextcritdam,2$ среднее $hitorheal$#IF (экв: $nextcritdamequive,2$ $damorap$)IF#"},
	{show = "nexthit", 		 	left = "1% меткости: +$nexthitdam,2$ среднее $hitorheal$#IF (экв: $nexthitdamequive,2$ $damorap$)IF#"},
	{show = "nextpen", 		 	left = "10 прон: #OR$dontshowupto$/До OR#+$nextpendam,2$ среднее $hitorheal$#IF (экв: $nextpendamequive,2$ $damorap$)IF#"},
	{show = "titles", 		 	left = "#c1,1,1##TITLE=Вращение:#"},
	{show = true, 			 	left = "MS рот. ($msrotationlength,1$ sec) увс: $msrotationdps,1$"},
	{show = true, 			 	left = "AS рот. ($asrotationlength,1$ sec) увс: $asrotationdps,1$"},
	{show = true, 			 	left = "MS/Arcane рот. увс: $arcrotationdps,1$"},
	{show = "titles", 		 	left = "#c1,1,1##TITLE=Итоговые сравнения:#"},
	{show = "nextagi", 		 	left = "10 лов: +$nextagidps,2$ MS рот. увс#IF (экв: $nextagidpsequive,2$ $damorap$)IF#"},
	{show = "nextcrit", 	 	left = "1% крита: +$nextcritdps,2$ MS рот. увс (экв: $nextcritdpsequive,2$ $damorap$)"},
	{show = "nexthit", 		 	left = "1% меткости: +$nexthitdps,2$ MS рот. увс (экв: $nexthitdpsequive,2$ $damorap$)"},
	{show = "titles", 		 	left = "#c1,1,1##TITLE=Эффективность:#"},
	{show = "mana", 		 	left = "Реальная стоимость маны: $manacost,1$"},
	{show = "dpm", 			 	left = "УЗМ: $dpm,2$#IF, $withdotdpm,2$IF#"},
	{show = "dpsmana", 		 	left = "УВС/Мана: $dpsmana,3$"},
	{show = "hpm", 			 	left = "ИЗМ: $hpm,2$#IF, $withhothpm,2$IF#"},
	{show = "lifetap", 		 	left = "Жизнеотвод УВЧ: $lifetapdpm,1$"},
	{show = "lifetap", 		 	left = "Жизнеотвод ИВЧ: $lifetaphpm,1$"},
	{show = "lifetap", 		 	left = "Жизнеотвод УВС: $lifetapdps,1$"},
	{show = "lifetap", 		 	left = "Жизнеотвод ИВС: $lifetaphps,1$"},
	{show = "showregenheal", 	left = "10 сек. восстановление: +$regenheal$ исцеления"},
	{show = "showregenheal", 	left = "10 сек. восстановление во время применения: +$icregenheal$ исцеления"},
	{show = "showregendam",	 	left = "10 сек. восстановление: +$regendam$ урона"},
	{show = "showregendam",  	left = "10 сек. восстановление во время применения: +$icregendam$ урона"},
	{show = "max", 			 	left = "Исцеление до конца маны: $maxoomheal$ ($maxoomhealtime$ сек.)"},
	{show = "max", 			 	left = "Урон до конца маны: $maxoomdam$ ($maxoomdamtime$ сек.)"},
	{show = "maxevoc", 		 	left = "Урон до конца маны w/ прилив+агат: $maxevocoomdam$ ($maxevocoomdamtime$ сек.)"},
}


TheoryCraft_MeleeComboEnergyConverter = "дополнительно (.-) ед. урона"
TheoryCraft_MeleeComboReader = "(%d+) прием(.-): (%d+)%-(%d+) ед. урона"
TheoryCraft_MeleeComboReplaceWith = "$приема$ прием%1: %2%-%3 ед. урона"

TheoryCraft_MeleeMinMaxReader = {
	{ pattern = "(%d+)%% от вашей силы атаки",								-- Bloodthirst
		type={"bloodthirstmult"} },
	{ pattern = "наносящий противнику (%d+) %- (%d+) ед%. урона (величина зависит от показателя блокирования щита)", -- Shield Slam
		type={"mindamage", "maxdamage"} },
	{ pattern = "(%d+)%% урона",											-- Shred/Ravage
		type={"backstabmult"} },
	{ pattern = "(%d+)%% урона от оружия",									-- Backstab
		type={"backstabmult"} },
	{ pattern = "и дополнительно (%d+)",									-- Backstab
		type={"addeddamage"} },
	{ pattern = "следующей атаки друида на (%d+) ед",						-- Maul
		type={"addeddamage"} },
	{ pattern = "нанося дополнительно (%d+) ед%. урона",					-- Claw
		type={"addeddamage"} },
	{ pattern = "наносящий (%d+) ед%. урона сверх обычного",				-- Sinister Strike
		type={"addeddamage"} },
	{ pattern = "ближнего боя, наносящая дополнительно (%d+) единиц урона",	-- Aimed Shot
		type={"addeddamage"} },
	{ pattern = "наносящий цели на (%d+) ед%. урона больше",				-- Aimed Shot
		type={"addeddamage"} },
	{ pattern = "наносящих дополнительно (%d+) ед%. урона",					-- Multi-Shot
		type={"addeddamage"} },
	{ pattern = "нанося им (%d+) ед%. урона%.",								-- Swipe
		type={"addeddamage"} },
	{ pattern = "наносящий (%d+) ед%. урона,",								-- Mocking Blow
		type={"addeddamage"} },
	{ pattern = "нанося им (%d+) ед%. урона",								-- Thunder Clap
		type={"addeddamage"} },

}

TheoryCraft_MeleeMinMaxReplacer = {
	{ search = " наносящий противнику %d+ - %d+ ед%. урона (величина зависит от показателя блокирования щита) ", -- Shield Slam
	  replacewith = " наносящий противнику $damage$ ед. урона " },
	{ search = " урон, равный %d+%% стандартного урона оружия, и ",						-- Scattershot / Ghostly
	  replacewith = " урон, равный $damage$ стандартного урона оружия, и " },
	{ search = " урон, равный %d+%% от вашей силы атаки",								-- Bloodthirst
	  replacewith = " урон, равный $damage$ от вашей силы атаки" },
	{ search = "Увеличивает урон следующей атаки друида на %d+ ед",						-- Maul
	  replacewith = "Ваша следующая атака нанесет $damage$ ед. урона" },
	{ search = " нанося дополнительно %d+% ед%. урона",									-- Claw
	  replacewith = " нанося дополнительно $damage$ ед. урона" },
	{ search = " наносящий цели %d+%% урона от оружия и дополнительно %d+ ед%. урона",  -- Backstab
	  replacewith = " наносящий цели $damage$ урона от оружия" },
	{ search = " нанося ему %d+%% урона и еще %d+ ед%. урона",							-- Shred/Ravage
	  replacewith = " нанося ему $damage$ урона" },
	{ search = " наносящий %d+ ед%. урона сверх обычного урона оружия",					-- Sinister Strike
	  replacewith = " наносящий $damage$ ед. урона" },
	{ search = " атака ближнего боя, наносящая дополнительно %d+ единиц урона",			-- Aimed Shot
	  replacewith = " наносит $damage$ ед. урона по цели" },
	{ search = " наносящий цели на %d+ ед%. урона больше обычного",						-- Aimed Shot
	  replacewith = " наносящий цели на $damage$ ед. урона больше обычного" },
	{ search = " и наносящих дополнительно %d+ ед%. урона",								-- Multi-Shot
	  replacewith = " дополнительно $damage$ ед. урона" },
	{ search = " урон от оружия, усиленный на %d+ ед%., и ",							-- Mortal Strike
	  replacewith = " усиленный на $damage$ ед., и " },
	{ search = " наносящая увеличенный на %d+ ед%. урон ",								-- Cleave
	  replacewith = " наносящая увеличенный на $damage$ ед. урон " },
	{ search = " обычный урон от оружия, усиленный на %d+ ед",							-- Overpower
	  replacewith = " обычный урон от оружия, усиленный на $damage$ ед" },
	{ search = " заблокировать атаку противника в ближнем или дальнем бою%.",			-- Block
	  replacewith = " заблокировать атаку противника в ближнем или дальнем бою, получаемый урон снижен $blockvalue$." },
	{ search = "Эта атака наносит %d+%% от урона оружия ",								-- Riposte
	  replacewith = "Эта атака наносит $damage$ ед. урона " },
	{ search = "нанося им (%d+) ед. урона%.",											-- Swipe
	  replacewith = "нанося им $damage$ ед. урона." },
	{ search = "удар, наносящий (%d+) ед%. урона,",										-- Mocking Blow
	  replacewith = "удар, наносящий $damage$ ед. урона," },
	{ search = "противников, нанося им (%d+) ед%. урона",								-- Thunder Clap
	  replacewith = "противников, нанося им $damage$ ед. урона" },
	{ search = " нанося каждому противнику урон от оружия ",							-- Whirlwind
	  replacewith = " нанося каждому противнику $damage$ ед. урона " },
}

TheoryCraft_SpellMinMaxReader = {
	{ pattern = "наносящие заклинателю (%d+) - (%d+) ед%. урона от огня, а его противникам – (%d+) - (%d+) ед%. урона от огня",	-- Hellfire
		type={"mindamage", "maxdamage", "mindamage", "maxdamage"} },
	{ pattern = "наносящие заклинателю (%d+) ед%. урона от огня, а его противникам – (%d+) ед%. урона от огня", -- Hellfire
		type={"bothdamage", "bothdamage"} },

	{ pattern = "с помощью заклинания, получает (%d+) ед%. урона от сил природы%.", -- Lightning Shield
		type={"bothdamage"} },

	{ pattern = "и наносящий ему (%d+) ед%. урона от сил природы", -- Insect Swarm
		type={"bothdamage"} },

	{ pattern = "к паническому бегству в течение 3 сек%. и нанесение ему (%d+) ед%. урона от темной магии", -- Death Coil
		type={"bothdamage"} },

	{ pattern = "(%d+) - (%d+)(.+)и еще (%d+) - (%d+)",						-- Generic Hybrid spell
		type={"mindamage", "maxdamage", "tmptext", "dotmindamage", "dotmaxdamage"} },
	{ pattern = "(%d+) - (%d+)(.+)и еще (%d+)",								-- Generic Hybrid spell
		type={"mindamage", "maxdamage", "tmptext", "dotbothdamage"} },
	{ pattern = "(%d+)(.+)и еще (%d+) - (%d+)",								-- Generic Hybrid spell
		type={"bothdamage", "tmptext", "dotmindamage", "dotmaxdamage"} },
	{ pattern = "(%d+)(.+)и еще (%d+)",										-- Generic Hybrid spell
		type={"bothdamage", "tmptext", "dotbothdamage"} },

	{ pattern = "(%d+) - (%d+)(.+)и дополнительно (%d+) - (%d+)",			-- Generic Hybrid spell
		type={"mindamage", "maxdamage", "tmptext", "dotmindamage", "dotmaxdamage"} },
	{ pattern = "(%d+) - (%d+)(.+)и дополнительно (%d+)",					-- Generic Hybrid spell
		type={"mindamage", "maxdamage", "tmptext", "dotbothdamage"} },
	{ pattern = "(%d+)(.+)и дополнительно (%d+) - (%d+)",					-- Generic Hybrid spell
		type={"bothdamage", "tmptext", "dotmindamage", "dotmaxdamage"} },
	{ pattern = "(%d+)(.+)и дополнительно (%d+)",							-- Generic Hybrid spell
		type={"bothdamage", "tmptext", "dotbothdamage"} },

	{ pattern = "(%d+) - (%d+)(.+) и (%d+) - (%d+)",						-- Flame Shock
		type={"mindamage", "maxdamage", "tmptext", "dotmindamage", "dotmaxdamage"} },
	{ pattern = "(%d+) - (%d+)(.+) и (%d+)",								-- Flame Shock
		type={"mindamage", "maxdamage", "tmptext", "dotbothdamage"} },
	{ pattern = "наносит (%d+)(.+) и (%d+) - (%d+)",						-- Flame Shock
		type={"bothdamage", "tmptext", "dotmindamage", "dotmaxdamage"} },
	{ pattern = "наносит (%d+)(.+) и (%d+)",								-- Flame Shock
		type={"bothdamage", "tmptext", "dotbothdamage"} },

	{ pattern = "(%d+) - (%d+) ед%. урона от огня",							-- Magma totem
		type={"mindamage", "maxdamage"} },
	{ pattern = "(%d+) ед%. урона от огня",									-- Magma totem
		type={"bothdamage"} },

	{ pattern = "который восполняет (%d+) - (%d+) ед%. здоровья ",			-- Healing Stream totem
		type={"mindamage", "maxdamage"} },
	{ pattern = "который восполняет (%d+) ед%. здоровья ",					-- Healing Stream totem
		type={"bothdamage"} },

	{ pattern = "(%d+) - (%d+)",											-- Generic Normal spell
		type={"mindamage", "maxdamage"} },
	{ pattern = "(%d+)",													-- Generic no damage range spell
		type={"bothdamage"} },
}

TheoryCraft_Dequips = {
	{ type = "all", text="%+(%d+) ко всем характеристикам" },
	{ type = "formattackpower", text="Увеличивает силу атаки на (%d+) ед%. в облике кошки, медведя" },
	{ type = "attackpower", text="Увеличивает силу атаки на (%d+)" },
	{ type = "rangedattackpower", text="Увеличивает силу атаки дальнего боя на (%d+)" },
	{ type = "rangedattackpower", text="Увеличивает силу атаки дальнего боя на (%d+)%/" },
	{ type = "strength", text="%+(%d+) к силе" },
	{ type = "agility", text="%+(%d+) к ловкости" },
	{ type = "stamina", text="%+(%d+) к выносливости" },
	{ type = "intellect", text="%+(%d+) к интеллекту" },
	{ type = "spirit", text="%+(%d+) к духу" },
	{ type = "totalhealth", text="%+(%d+) к здоровью" },
	{ type = "totalhealth", text="%+(%d+) здоровья" },
	{ type = "meleecritchance", text="Увеличивает вероятность нанести критический удар на (%d+)%%%." },
}

TheoryCraft_Locale = {
	HitMessage	= "Ваше заклинание \"(.+)\" наносит (.+) (%d+) ед%. урона%.", -- SPELLLOGSELFOTHER
	CritMessage	= "Ваше заклинание \"(.+)\" наносит (.+) (%d+) ед%. урона: критический эффект%.", -- SPELLLOGCRITSELFOTHER
	Absorbed	= "поглощено: (%+)",
	ID_Beast	= "Животное",
	ID_Humanoid	= "Гуманоид",
	ID_Giant	= "Великан",
	ID_Dragonkin	= "Дракон",
	ID_Equip	= "Если на персонаже: ",
	ID_Set		= "Комплект: ",
	ID_Use		= "Использование: ",
	to			= " - ",
	Attack		= "Атака",
	InstantCast	= "Мгновенное действие",
	SecCast		= "Применение: сек%.",
	Mana		= "Мана: ",
	Cooldown	= "Восстановление: сек%.",
	CooldownRem	= "Времени до восстановления: ",
	Set		= "%(%d+/%d+%)",
	LoadText	= "TheoryCraft вер. "..TheoryCraft_Version.." от Aelian. Введите /tc для настроек. Введите /tc more для отображения скрытых функций.",
	lifetap		= "Жизнеотвод",
	MinMax  = {
		autoshotbefore = "Shoots the target for ",
		autoshotafter = ".",
		shooterror = "No wand equipped.",
		crusader = "повышает его силу атаки в ближнем бою на %d+",
	},
	SpellTranslator = {
		["Frostbolt"] = "Ледяная стрела",
		["Frost Nova"] = "Кольцо льда",
		["Cone of Cold"] = "Конус холода",
		["Blizzard"] = "Снежная буря",
		["Arcane Explosion"] = "Чародейский взрыв",
		["Arcane Missiles"] = "Чародейские стрелы",
		["Fire Blast"] = "Огненный взрыв",
		["Fireball"] = "Огненный шар",
		["Pyroblast"] = "Огненная глыба",
		["Scorch"] = "Ожог",
		["Blast Wave"] = "Взрывная волна",
		["Flamestrike"] = "Огненный столб",
		["Ice Barrier"] = "Ледяная преграда",
		["Evocation"] = "Прилив сил",

		["Shadow Bolt"] = "Стрела Тьмы",
		["Soul Fire"] = "Ожог души",
		["Searing Pain"] = "Жгучая боль",
		["Immolate"] = "Жертвенный огонь",
		["Firebolt"] = "Огненная стрела",
		["Lash of Pain"] = "Всплеск боли",
		["Conflagrate"] = "Поджигание",
		["Rain of Fire"] = "Огненный ливень",
		["Hellfire"] = "Адское Пламя",
		["Corruption"] = "Порча",
		["Curse of Agony"] = "Проклятие агонии",
		["Curse of Doom"] = "Проклятие рока",
		["Drain Soul"] = "Похищение души",
		["Siphon Life"] = "Вытягивание жизни",
		["Drain Life"] = "Похищение жизни",
		["Death Coil"] = "Лик смерти",
		["Shadowburn"] = "Ожог Тьмы",
		["Life Tap"] = "Жизнеотвод",

		["Prayer of Healing"] = "Молитва исцеления",
		["Shadow Word: Pain"] = "Слово Тьмы: Боль",
		["Mind Flay"] = "Пытка разума",
		["Mind Blast"] = "Взрыв разума",
		["Smite"] = "Кара",
		["Holy Fire"] = "Священный огонь",
		["Holy Nova"] = "Кольцо света",
		["Power Word: Shield"] = "Слово силы: Щит",
		["Desperate Prayer"] = "Молитва отчаяния",
		["Lesser Heal"] = "Малое исцеление",
		["Heal"] = "Исцеление",
		["Flash Heal"] = "Быстрое исцеление",
		["Greater Heal"] = "Великое исцеление",
		["Devouring Plague"] = "Всепожирающая чума",
		["Renew"] = "Обновление",
		["Starshards"] = "Звездные осколки",

		["Healing Touch"] = "Целительное прикосновение",
		["Tranquility"] = "Спокойствие",
		["Rejuvenation"] = "Омоложение",
		["Regrowth"] = "Восстановление",
		["Starfire"] = "Звездный огонь",
		["Wrath"] = "Гнев",
		["Insect Swarm"] = "Рой насекомых",
		["Entangling Roots"] = "Гнев деревьев",
		["Moonfire"] = "Лунный огонь",
		["Hurricane"] = "Гроза",
		["Ravage"] = "Накинуться",
		["Shred"] = "Полоснуть",
		["Claw"] = "Цапнуть",
		["Maul"] = "Трепка",
		["Ferocious Bite"] = "Свирепый укус",
		["Swipe"] = "Размах",

		["Bloodthirst"] = "Жажда крови",
		["Mortal Strike"] = "Смертельный удар",
		["Overpower"] = "Превосходство",
		["Whirlwind"] = "Вихрь",
		["Heroic Strike"] = "Удар героя",
		["Cleave"] = "Рассекающий удар",
		["Block"] = "Блок",
		["Thunder Clap"] = "Удар грома",
		["Mocking Blow"] = "Дразнящий удар",
		["Shield Slam"] = "Мощный удар щитом",

		["Sinister Strike"] = "Коварный удар",
		["Hemorrhage"] = "Кровоизлияние",
		["Backstab"] = "Удар в спину",
		["Ghostly Strike"] = "Призрачный удар",
		["Ambush"] = "Внезапный удар",
		["Riposte"] = "Ответный удар",
		["Eviscerate"] = "Потрошение",

		["Flash of Light"] = "Вспышка Света",
		["Holy Light"] = "Свет небес",
		["Exorcism"] = "Экзорцизм",
		["Holy Wrath"] = "Гнев небес",
		["Consecration"] = "Освящение",
		["Hammer of Wrath"] = "Молот гнева",
		["Seal of the Crusader"] = "Печать воина Света",
		["Seal of Command"] = "Печать повиновения",
		["Seal of Righteousness"] = "Печать праведности",
		["Holy Shock"] = "Шок небес",

		["Chain Lightning"] = "Цепная молния",
		["Lightning Bolt"] = "Молния",
		["Lightning Shield"] = "Щит молний",
		["Lesser Healing Wave"] = "Малая волна исцеления",
		["Healing Wave"] = "Волна исцеления",
		["Chain Heal"] = "Цепное исцеление",
		["Earth Shock"] = "Земной шок",
		["Flame Shock"] = "Огненный шок",
		["Frost Shock"] = "Ледяной шок",
		["Magma Totem"] = "Тотем магмы",
		["Searing Totem"] = "Опаляющий тотем",
		["Healing Stream Totem"] = "Тотем исцеляющего потока",

		["Arcane Shot"] = "Чародейский выстрел",
		["Serpent Sting"] = "Укус змеи",
		["Mend Pet"] = "Лечение питомца",
		["Multi-Shot"] = "Залп",
		["Volley"] = "Град стрел",
		["Aimed Shot"] = "Прицельный выстрел",
		["Scatter Shot"] = "Дезориентирующий выстрел",
		["Raptor Strike"] = "Удар ящера",
		["Auto Shot"] = "Автоматическая стрельба",

		["Attack"] = "Атака",
		["Shoot"] = "Выстрел",
	},
-- Appears on the advanced tab, left side matches spell data (do not translate), right side equals display text
	TalentTranslator = {
-- Warlock
		{ id="suppression", translated="Подавление" },
		{ id="impcorrupt", translated="Улуч. порча" },
		{ id="impdrainlife", translated="Улуч. пох-жизни" },
		{ id="impcoa", translated="Улуч. прок-агон" },
		{ id="shadowmastery", translated="Вл. над Тен." },
		{ id="demonicembrace", translated="Дем. облачение" },
		{ id="impsearing", translated="Неп. жгуч. боль" },
		{ id="impimmolate", translated="Жар. жерт-огонь" },
		{ id="emberstorm", translated="Бушующее пламя" },
		{ id="devastation", translated="Опустошение" },
		{ id="ruin", translated="Разгром" },
-- Mage
		{ id="subtlety", translated="Искусные чары" },
		{ id="focus", translated="Средоточие чар" },
		{ id="clearcast", translated="Чарод. сосред." },
		{ id="meditation", translated="Чар. медитация" },
		{ id="arcanemind", translated="Чародейский ум" },
		{ id="instab", translated="Маг. нестабиль." },
		{ id="impfire", translated="Улуч. огнен-шар" },
		{ id="ignite", translated="Воспламенение" },
		{ id="incinerate", translated="Испепеление" },
		{ id="impflame", translated="Улуч. огн-столб" },
		{ id="critmass", translated="Крит. масса" },
		{ id="firepower", translated="Сила огня" },
		{ id="impfrost", translated="Улуч лед-стрела" },
		{ id="shards", translated="Лед. осколки" },
		{ id="piercice", translated="Пронз. лед" },
		{ id="chanelling", translated="Поток льда" },
		{ id="shatter", translated="Облед." },
		{ id="impcoc", translated="Конус холода" },
-- Mage2
		{ id="subtlety", translated="Искусные чары" },
		{ id="focus", translated="Средоточие чар" },
		{ id="clearcast", translated="Чарод. сосред." },
		{ id="impae", translated="Улуч. чар-взрыв" },
		{ id="meditation", translated="Чар. медитация" },
		{ id="arcanemind", translated="Чародейский ум" },
		{ id="instab", translated="Маг. нестабиль." },
		{ id="impfire", translated="Улуч. огнен-шар" },
		{ id="ignite", translated="Воспламенение" },
		{ id="incinerate", translated="Испепеление" },
		{ id="impflame", translated="Улуч. огн-столб" },
		{ id="burnsoul", translated="Пылающая душа" },
		{ id="masterofelements", translated="Повел. Стихий" },
		{ id="critmass", translated="Крит. масса" },
		{ id="firepower", translated="Сила огня" },
		{ id="impfrost", translated="Ледяная стрела" },
		{ id="elemprec", translated="Точность стихии" },
		{ id="shards", translated="Лед. осколки" },
		{ id="piercice", translated="Пронз. лед" },
		{ id="chanelling", translated="Поток льда" },
		{ id="shatter", translated="Облед." },
		{ id="impcoc", translated="Конус холода" },
-- Hunter
		{ id="lethalshots", translated="Стр. на пораж." },
		{ id="mortalshots", translated="Смерт. выстрелы" },
		{ id="rws", translated="Сп. оруж. д-боя" },
		{ id="barrage", translated="Заград. огонь" },
		{ id="humanoidslaying", translated="Уб-во гуманойдов" },
		{ id="monsterslaying", translated="Уб-во монстров" },
		{ id="savagestrikes", translated="Бесп. удары" },
		{ id="survivalist", translated="Ост. в живых" },
		{ id="killerinstinct", translated="Инст. убийцы" },
		{ id="reflexes", translated="Мол. рефлексы" },
-- Priest
		{ id="imppwrword", translated="Улуч. сс: Щит" },
		{ id="pmeditation", translated="Медитация" },
		{ id="mentalagility", translated="Подв. мысли" },
		{ id="mentalstrength", translated="Сила мысли" },
		{ id="forceofwill", translated="Сила воли" },
		{ id="imprenew", translated="Улуч. обнов" },
		{ id="holyspec", translated="Спец свет-магии" },
		{ id="divinefury", translated="Бож. неистов." },
		{ id="imphealing", translated="Улуч. исцеление" },
		{ id="searinglight", translated="Опаляющий свет" },
		{ id="guidance", translated="Дух. направ." },
		{ id="imppoh", translated="Улуч. мол-исцл" },
		{ id="spiritual", translated="Дух. исцл." },
		{ id="shadowfocus", translated="Средот. Тьмы" },
		{ id="darkness", translated="Мрак" },
-- Warrior
		{ id="impoverpower", translated="Безус. превосх" },
		{ id="impale", translated="Прокалывание" },
		{ id="twohandspec", translated="Спец. на двуруч" },
		{ id="axespec", translated="Спец. на топор" },
		{ id="polearmspec", translated="Спец. на древ" },
		{ id="cruelty", translated="Безжалостность" },
		{ id="onehandspec", translated="Спец. на однор" },
-- Shaman
		{ id="lightningmast", translated="Покор. молнии" },
		{ id="elemfocus", translated="Сред. стихий" },
		{ id="convection", translated="Конвекция" },
		{ id="concussion", translated="Сотряс. мозга" },
		{ id="callofthunder", translated="Зов грома" },
		{ id="fury", translated="Неист. стихий" },
		{ id="impcl", translated="Imp Chain L" }, -- old
		{ id="ancestral", translated="Знания предков" },
		{ id="thundering", translated="Грохо. удары" },
		{ id="impls", translated="Улуч. щит молн" },
		{ id="imphealingwave", translated="Улуч. волн-исц" },
		{ id="tidalfocus", translated="Сред. приливов" },
		{ id="tidalmastery", translated="Повел. приливов" },
		{ id="purification", translated="Чистота" },
		{ id="natguid", translated="Пом. природы" },
		{ id="weaponmast", translated="Маст. влад оруж" },
-- Druid
		{ id="impwrath", translated="Удучщ. гнев" },
		{ id="impmoon", translated="Улуч. лун-огонь" },
		{ id="vengeance", translated="Отмщение" },
		{ id="impstarfire", translated="Улуч. зв-огонь" },
		{ id="grace", translated="Благ. природы" },
		{ id="moonfury", translated="Лунное неистов" },
		{ id="natweapons", translated="Оруж. природы" },
		{ id="claws", translated="Острые когти" },
		{ id="strikes", translated="Удары хищника" },
		{ id="savagefury", translated="Бешеное неист" },
		{ id="hotw", translated="Сердце дик-при" },
		{ id="imptouch", translated="Улуч. цел-прик" },
		{ id="reflection", translated="Отражение" },
		{ id="tranquil", translated="Мирный дух" },
		{ id="imprejuve", translated="Улуч. омолож" },
		{ id="giftofnat", translated="Дар природы" },
		{ id="impregrowth", translated="Улучш. восст" },
-- Paladin
		{ id="divineint", translated="Бож. интеллект" },
		{ id="divinestrength", translated="Бож. сила" },
		{ id="illumination", translated="Свечение" },
		{ id="holypower", translated="Священная сила" },
		{ id="conviction", translated="Приговор" },
-- Rogue
		{ id="malice", translated="Злоба" },
		{ id="lethality", translated="Смертоносность" },
		{ id="impbs", translated="Улуч. уд-спину" },
		{ id="daggerspec", translated="Спец. на кинж" },
		{ id="fistspec", translated="Спец. на кист" },
		{ id="aggression", translated="Агрессивность" },
		{ id="opportunity", translated="Камуфляж" },
		{ id="impambush", translated="Выучка" },
	},
-- Needs translating for the predefined sets to have set bonuses
	SetTranslator = {
		{ id="Magisters", translated="Регалии Магистра" },
		{ id="Sorcerers", translated="Регалии чародея" },
		{ id="Arcanist", translated="Регалии Чародея" },
		{ id="Netherwind", translated="Регалия ветра Пустоты" },
		
		{ id="Dreadmist", translated="Одеяния Багрового Тумана" },
		{ id="Deathmist", translated="Одеяния Тумана смерти" },
		{ id="Felheart", translated="Одеяния Сердца Скверны" },
		{ id="Nemesis", translated="Одеяния возмездия" },
		
		{ id="Devout", translated="Ризы Благочестия" },
		{ id="Virtuous", translated="Ризы Добродетели" },
		{ id="Prophecy", translated="Ризы Пророчества" },
		{ id="Transcendence", translated="Ризы Превосходства" },
		
		{ id="Wildheart", translated="Облачение дикого сердца" },
		{ id="Feralheart", translated="Одеяния буйного сердца" },
		{ id="Cenarion", translated="Кенарийские одеяния" },
		{ id="Stormrage", translated="Одеяния Ярости Бури" },
		
		{ id="Elements", translated="Стихии" },
		{ id="Five Thunders", translated="Пять Громов" },
		{ id="Earthfury", translated="Гнев Земли" },
		{ id="Ten Storms", translated="Десять Бурь" },
		
		{ id="Lightforge", translated="Доспехи из светостали" },
		{ id="Soulforge", translated="Доспехи Закаленного духа" },
		{ id="Lawbringer", translated="Доспехи Судии" },
		{ id="Judgement", translated="Доспехи Правосудия" },
		
		{ id="Valor", translated="Броня Доблести" },
		{ id="Heroism", translated="Броня Героизма" },
		{ id="Might", translated="Броня Мощи" },
		{ id="Wrath", translated="Броня Гнева" },
		
		{ id="Shadowcraft", translated="Доспехи незаметности" },
		{ id="Darkmantle", translated="Доспехи Покрова тьмы" },
		{ id="Nightslayer", translated="Доспехи ночного убийцы" },
		{ id="Bloodfang", translated="Доспехи Кровавых Клыков" },
		
		{ id="Beaststalker", translated="Доспехи загонщика" },
		{ id="Beastmaster", translated="Доспехи Повелителя зверей" },
		{ id="Giantstalker", translated="Доспехи Истребителя великанов" },
		{ id="Dragonstalker", translated="Доспехи охотника на драконов" },
	},

}
	
TheoryCraft_CheckButtons = {
	["embedstyle1"]	= { short = "УВС | Крит. удар", description = "Добавляет дополнительную строку в средине окна описания способности\nс уроном в секунду (УВС)/ исцелением в секунду (ИВС) слева и шансом критического удара справа.", descriptionmelee="Для классов ближнего боябудет показан только шанс критического урона\nотображаемого выше описания способности." },
	["embedstyle2"]	= { hide = {"ROGUE", "WARRIOR"}, short = "УВМ | Крит. удар", tooltiptitle = "Урон в минуту (УВМ) | Критический удар", description = "Добавляет дополнительную строку в средине окна описания способности\nс уроном в минуту (УВМ)/исцелением в минуту (ИВМ) слева и шансом критического удара справа." },
	["embedstyle3"]	= { hide = {"ROGUE", "WARRIOR"}, short = "УВС/ИВМ | Крит. удар", tooltiptitle = "Урон в секунду (УВС)/Исцеление в минуту (ИВМ) | Критический удар", description = "Добавляет дополнительную строку в средине окна описания способности\nс уроном в секунду (УВС)/исцелением в минуту (ИВМ) слева и шансом критического удара справа." },
	["titles"] 		= { hide = {"ROGUE", "WARRIOR"}, short = "Заглавия", description = "Разделяет дополнительную информацию в окне описания способности по категориям." },
	["embed"] 		= { short = "Заменить", description = "Изменяет базовое описание в окне описания вашего заклинания\n с учетом эффекта от снаряжения.", descriptionmelee = "Изменяет базовое описание в окне описания вашей способности\nзаменяя такие термины как \"урон от оружия и дополнительно 160\"\nна реальный урон." },
	["crit"] 		= { short = "Крит. удар", tooltiptitle = "Критический удар", description = "Добавляет запись о шансе критического удара в окно описания способности.\nУчитывает ваши таланты, снаряжение и базовый критический удар (интеллект/$cr).", descriptionmelee = "Добавляет запись о шансе и критическом уроне в окно описания способности." },
	["critdam"] 	= { hide = {"ROGUE", "WARRIOR"}, short = "Крит. урон", tooltiptitle = "Критический урон", description = "Отображает урон вашего критического удара." },
	["rollignites"]	= { hide = {"ROGUE", "WARRIOR", "WARLOCK", "PRIEST", "DRUID", "PALADIN", "SHAMAN", "HUNTER" }, short = "С возгоранием", description = "Все расчеты, которые включают в себя крит удары\nбудут учитывать возгорание. То есть,\nстаки возгарания так же будет повышать урон." },
	["sepignite"] 	= { hide = {"ROGUE", "WARRIOR", "WARLOCK", "PRIEST", "DRUID", "PALADIN", "SHAMAN", "HUNTER" }, short = "Возгор. отдельно", tooltiptitle = "Возгорание отдельно", description = "Отделяет возгорание от расчета вашего критического урона." },
	["dps"] 		= { hide = {"ROGUE", "WARRIOR"}, short = "УВС", tooltiptitle = "Урон в секунду (УВС)", description = "Добавляет урон в секунду (УВС) в окно описания способности.\nДля способности с мгновенным действием\nза продолжительность ее восстановления, берется\nглобаное восстановление способностей 1.5 сек.", descriptionmelee = "Отображает увеличение урона в секунду (УВС) способности, если вы используете ее сразу по восстановлению." },
	["combinedot"]	= { hide = {"ROGUE", "WARRIOR"}, short = "Объединение ДоТ", tooltiptitle = "Объединение периодического урона (ДоТ)", description = "Если включено, заклинания которые имеют 2 вида урона, прямой и периодический (ДоТ),\nбудут вычисляться по выражению (УВС+ДоТ)/Время применения\nпосле, ДоТ/Продолжительность." },
	["dotoverct"] 	= { hide = {"ROGUE", "WARRIOR"}, short = "ДоТ над CT", tooltiptitle = "Периодический урон (ДоТ) над CT", description = "Способности с периодическим уроном (ДоТы) будут высчитывать свой\nурон в секунду (УВС) как общий урон/время применения, \nпосле как общий урон/продолжительность периодического урона (ДоТа)" },
	["hps"] 		= { hide = {"ROGUE", "WARRIOR"}, short = "ИВС", tooltiptitle = "Исцеление в секунду (ИВС)", description = "Вычисляется так же, как и урон в секунду (УВС),\nс теми же расширенными опциями." },
	["dpsdam"] 		= { hide = {"ROGUE", "WARRIOR"}, short = "УВС от +урон экипир-ки", tooltiptitle = "Урон в секунду (УВС) от +урон экипировки", description = "На сколько зависим ваш урон в секунду (УВС)/исцеление в секунду (ИВС) от вашего +урона экипировки." },
	["averagedam"] 	= {short = "Средний урон", description = "Добавляет запись о среднем уроне в окно описания способности.", descriptionmelee = description },
	["procs"] 		= { hide = {"ROGUE", "WARRIOR"}, short = "Включить проки", description = "Все проки основных эффектов (Гнев Кенария, Аксессуар Новолуния, Комплект ветра Пустоты)\nусредняются, вместо того, чтобы применяться только в то время, когда активен положительный эффект." },
	["mitigation"] 	= { hide = {"STRIPPED"}, short = "Включить смягчение", description = "Если включено, броня вашей цели будет включена в расчеты аддона.\nВы можете просмотреть броню существ, введя /tc armor 'имя существа' или\nоставить это поле пустым, чтобы пересчитать всех известных существ." },
	["resists"] 	= { hide = {"ROGUE", "WARRIOR"}, short = "Сопротивления", description = "Добавляет категорию сопротивления в окно описания способности.\nВключает в себя рейтинг сопротивления вашей *цели* и\nвашего урона в секунду (УВС) после учета сопротивления на основе уровня.\nЕсли у вас есть экипировка с проникающей способностью заклинаний,\nто это также сообщит вам сколько урона в секунду (УВС) добавляет\nпроникновение от вашей экипировки.\n\nОбратите внимание, что, если ваша цель не имеет показатель сопротивления,\nравный или превышающий ваш показатель проникновения, этот проникающий\nурон в секунду (УВС) не будет достигнут." },
	["averagethreat"] = { hide = {"ROGUE", "WARRIOR", "SHAMAN", "HUNTER", "DRUID", "WARLOCK", "PRIEST", "MAGE"}, short = "Средняя угроза", description = "Средний показатель угрозы вызванный атакой." },
	["plusdam"] 	= { hide = {"ROGUE", "WARRIOR"}, short = "+Урон", description = "+Урон заклинания до коэффициент +урона." },
	["damcoef"] 	= { hide = {"ROGUE", "WARRIOR"}, short = "Коэффициент +урона", description = "Коэффициент +урон заклинания.\nБудет изменен в соответствии с выбранными талантами." },
	["dameff"] 		= { hide = {"ROGUE", "WARRIOR"}, short = "Эффективность +урона", description = "Система +урон основана на 3.5+урон = +1 урона в секунду (УВС), до критических ударов.\nЕсли заклинание достигнет этого, то эффективность будет 100%." },
	["damfinal"] 	= { hide = {"ROGUE", "WARRIOR"}, short = "Итоговый +урон", description = "Итоговый +урон добавляется в заклинание после коэффициента +урон." },
	["healanddamage"] = { hide = {"ROGUE", "WARRIOR", "MAGE", "SHAMAN", "HUNTER", "DRUID"}, short = "Показ. компонент исцел-ия", tooltiptitle = "Показать компонент исцеления", description = "Если включено, оба компонента заклинания которое наносит урон и исцеляет.\nбудут рассчитаны отдельно.\nОбычно отображен только компонент урона." },
	["nextagi"] 	= { hide = {"MAGE", "WARLOCK", "PRIEST", "PALADIN", "SHAMAN" }, short = "+10 к ловкости", description = "", descriptionmelee = "Показывает сколько +10 к ловкости добавит к вашему среднему урону." },
	["nextstr"] 	= { hide = {"MAGE", "WARLOCK", "PRIEST", "PALADIN", "SHAMAN" }, short = "+10 к силе", description = "", descriptionmelee = "Показывает сколько +10 к силе добавит к вашему среднему урону." },
	["nextcrit"] 	= { short = "+1% к критическому удару", description = "Показывает сколько +1% к критическому удару добавит к вашему *среднему урону*.", descriptionmelee = description },
	["nexthit"] 	= { short = "+1% к меткости", description = "Показывает сколько +1% к меткости добавит к вашему среднему урону.\nЧтобы учитывать уровень ваших целей, вы должны включить «Факторы сопротивления».", descriptionmelee = "Показывает сколько +1% к меткости добавит к вашему среднему урону." },
	["nextpen"] 	= { hide = {"ROGUE", "WARRIOR"}, short = "+10 к проникающей спос-ти", tooltiptitle = "+10 к проникающей способности", description = "Если цель имеет уровень сопротивления больше, чем ваша проникающая способность, тогда ваш урон\nбудет ниже, чем сообщает вам аддон.\nИмея дополнительные +10 к проникающему урону приблизит ваш текущий средний урон к расчетам аддона.\nTC также расскажет вам, сколько дополнительного +урона увеличит ваш фактический урон на ту же сумму.\nЕсли у вас включен «Фактор сопротивления», он скажет вам, сколько урона он добавит и эквивалентный +урон." },
	["mana"] 		= { hide = {"ROGUE", "WARRIOR"}, short = "Реальная стоимость маны", description = "Добавляет истинную стоимость маны вашего заклинания в окно описания способности.\nЕсли заклинание стоит 30 маны, и вы регенерируете 40 маны\nо время произнесения, тогда это будет отрицательным.\nЭто осуществляется такими вещами, как восполнение маны во время произнесения,\nбонус комплекта шамана Гнев Земли, талант паладина Свечение, и т.д.\nВсе внутренние вычисления уходят с этого значения." },
	["dpm"] 		= { hide = {"ROGUE", "WARRIOR"}, short = "УВМ", tooltiptitle = "Урон в минуту (УВМ)", description = "Средний урон деленный на истинную стоимость маны." },
	["hpm"] 		= { hide = {"ROGUE", "WARRIOR"}, short = "ИВМ", tooltiptitle = "Исцеление в минуту (ИВМ)", description = "Среднее исцеление деленное на истинную стоимость маны." },
	["max"] 		= { hide = {"ROGUE", "WARRIOR"}, short = "Макс. до конца маны", tooltiptitle = "Максимум до конца маны", description = "Показывает сколько урона/исцеления вы можете произвести до окончания маны." },
	["maxevoc"] 	= { hide = {"ROGUE", "WARRIOR", "WARLOCK", "PRIEST", "DRUID", "PALADIN", "SHAMAN", "HUNTER" }, short = "Макс. окон. маны (кам+прил)", tooltiptitle = "Максимум до окончания маны (камень+прил)", description = "Тоже что и 'Макс. до конца маны', но, включает в себя две способности мага на восполнение маны" },
	["lifetap"] 	= { hide = {"ROGUE", "WARRIOR", "MAGE", "SHAMAN", "HUNTER", "DRUID", "PRIEST", "PALADIN"}, short = "Значения Жизнеотвода", description = "Урон в секунду (УВС), урон в минуту (УВМ), исцеление в секунду (ИВС), исцеление в минуту (ИВМ),\nесли включено отобразит дополнительную информацию по использованию Жизнеотвода.\nПринимает для расчета глобальное восстановление." },
	["buttontext"] 	= { short = "Включить текст на кнопках", description = "TheoryCraft может отображать значения на ваших кнопках действий.\n\Заметка: Поддерживаются только стандартные Blizzard, Discord,\nNurfed и Flex Action Bars, наряду с книгой заклинаний." },
	["tryfirst"] 	= { short = "Стандартный текст кнопки", description = "Стандартные значения отображаемые на ваших кнопках действий." },
	["trysecond"] 	= { short = "Альт. текст кнопки", description = "Если стандартное значение равно nil, TheoryCraft будет\nпытаться показать это значение." },
	["tryfirstsfg"]	= { short = "Стандартное значение цифр", description = "На сколько следует округлить число.\nЗначение 100 отобразит число 353 как 400." },
	["trysecondsfg"]= { short = "Альт. значение цифр", tooltiptitle = "Альтернативное значение цифр", description = "На сколько следует округлить число.\nЗначение 100 отобразит число 353 как 400." },
	["framebyframe"]= { short = "Кадр за кадром", description = "Заставляет текст кнопки генерироваться по одной кнопке на кадр, а не сразу на всех.\nОбычно это делается только в бою, так как каждая кнопка практически мгновенно генерирует.\nНа очень медленных компьютерах вы можете заставить аддон всегда генерировать\nкнопки таким образом, отметив этот флажок." },
	["outfit"] 		= { short = " ", tooltiptitle = "Комплект", description = "TheoryCraft позволяет тестировать различные комплекты снаряжения.\nЛюбые из 8 - 9 частей классовых комплектов могут быть протестированы\n(с вашим снаряжением, составляющим другие ячейки), или вы можете смешать\nи сопоставить экипировку по вашему выбору, выбрав 'Пользовательский' комплект." },
	["showsimult"] 	= { short = "Режим сравнения", description = "Если отмечено, ваши текущие характеристики и ваши комплекты/таланты\nбудут одновременно отображены во сплывающей подсказке." },
	["dontcrit"] 	= { hide = {"ROGUE", "WARRIOR"}, short = "Не включ. крит. удар", tooltiptitle = "Не включать критический удар", description = "Если активно, критические удары не будут входить в расчет значений\n(например: урон в минуту (УВМ)/исцеление в минуту (ИВМ)/урон в секунду (УВС)).\nЭто также отключит подсветку, мастер элементов и природные бонусы." },
	["dontresist"] 	= { hide = {"ROGUE", "WARRIOR"}, short = "Фактор сопр.", tooltiptitle = "Фактор сопротивления", description = "Если активно, сопротивление на основе уровня и на основе введенных сопротивлений будут учитываться для всех вычисленных значений\n(например: урон в минуту (УВМ)/исцеление в минуту (ИВМ)/урон в секунду (УВС)).\nСопротивления можно установить ниже." },
	["useglock"] 	= { hide = {"ROGUE", "WARRIOR"}, short = "Исп-ть GLOCK", tooltiptitle = "Использовать GLOCK", description = "GLOCK это внешний аддон, который вычисляет сопротивления существа в бою.\nЕсли отмечено и включен GLOCK, тогда эти значения могут быть использованы TheoryCraft\nдля предоставления наиболее точной статистики, доступной для вашей цели.\n\nЕсли эта опция включена, поля редактирования ниже регулярно перезаписываются." },
}

-- Used for schoolname in the buffs/equips.  Wherever schoolname appears, it'll try each "text" value,
-- and the amount will be added to the "name" value.  "text" should be localised, "name" should not.

TheoryCraft_PrimarySchools = {
	{ name = "Frost", text = "магии льда" },
	{ name = "Nature", text = "сил природы" },
	{ name = "Fire", text = "огня" },
	{ name = "Arcane", text = "тайной магии" },
	{ name = "Shadow", text = "темной магии" },
	{ name = "Holy", text = "светлой магии" },
}

-- All buffs and equip effects are read from here
-- Variable Name:	Description:
-- text			The text that the buff description or equip line says. If it contains the word schoolname then it tries each
--			school name in that position, eg Frost, and adds it to the appropriate variable. Can not be used for the rare
--			cases of items that only increase crit to one school, as it will only add to the damage component
-- type			The variable to modify when it sees this label, from the following:
--	All/Damage/Frost		Increases damage/healing of all spells in that school
--	Allcritchance/Frostcrithit	Any of their subcategories can be modified too
--	manaperfive			Increases mana per 5 second regen
--	ICPercent			The value that your mana regen is multiplied by to get in-5-second-rule regen
-- amount		The amount to increase the value by. Valid values are:
--	"n/100" 100th of tooltip value
--	"totem" 5/2 of tooltip value (used for totem mana regen)
--	"hl"	for blessing of light, holy light +heal (read from tooltip)
--	"fol"	for blessing of light, flash of light +heal (read from tooltip)
--	any other value will add that amount to the data value
-- me			Mutually exclusive, if this tag is on an increaser then after this line has been found, no other increaser
--			with the me tag will read this line, good for things like Wizard Oil and Lesser Wizard Oil, where you don't want
--			Wizard Oil being picked up in Lesser Wizard Oil. The tag highest up gets spotted first.

-- Checks every buff for these

TheoryCraft_Buffs = {
	{ text="наносимый урон увеличивается на (%d+)%%", type="Damagebaseincrease", amount="n/100" },   							-- General's Warcry
	{ text="Игнорирование (%d+) ед%. вражеской брони%.", type="Sunder" },   							-- Bonereaver's Edge
--[[]]	{ text="Эффект заклинания \"Волна исцеления\" усилен до (%d+)%%.", type="Healing Wavetalentmod", amount="n/100" },  	-- Healing Way
--[[]]	{ text="Восполнение (%d+)%% маны раз в 4 сек%.", type="FelEnergy", amount="n/100" },   			-- Fel Energy
	{ text="Magical damage dealt.-increase.-(%d+)", type="All" },   						-- Very Berry/Eye of Moam
--[[?]]	{ text="Магическое сопротивление целей вашего заклинания снижено на (%d+)", type="Allpenetration" },   		-- Eye of Moam
	{ text="Увеличивает урон и исцеляющие действия магических эффектов и заклинаний не более чем на (%d+)%.", type="All" },   	-- Elements/Five Thunders
--[[]]	{ text="Сила атаки в ближнем бою увеличена на (%d+)%. Атаки ближнего боя ускорены на %d+%%, но наносят меньше урона%.", type="AttackPowerCrusader" }, -- Seal of the crusader
	{ text="(%d+) ед%. маны каждые 5 сек.%.", type="manaperfive" },							-- Warchief's blessing
--[[]]	{ text="Восполнение (%d+) ед%. маны раз в 2 сек%.", type="manaperfive", amount="totem" },				-- Totems
	{ text="Получение (%d+) дополнительного исцеления от заклинания \"Свет небес\"", type="Holy Light", amount="hl", target = "target"},	-- Blessing of light
	{ text="(%d+) дополнительного исцеления от заклинаний \"Вспышка Света\"%.", type="Flash of Light", amount="fol", target = "target" },	-- Blessing of light
	{ text="\"Шок небес\" повышена на 100%%", type="Holycritchance", amount=100 },				-- Divine Favour
	{ text="\"Шок небес\" повышена на 100%%", type="Holy Shockcritchance", amount=100 },			-- Divine Favor
--[[]]	{ text="Вероятность нанести критический урон заклинаниями магии огня повышена на (%d+)%%", type="Firecritchance" },		-- Combustion in 1.11
--[[]]	{ text="Эффект от заклинания увеличен на (%d+)%.", type="All" },							-- Spell Blasting
--[[]]	{ text="Расход маны на следующее заклинание снижен на 100%%%.", type="Holycritchance", amount=25 },		-- Inner Focus
--[[]]	{ text="Исцеление, производимое заклинаниями и эффектами, увеличено на (%d+) ед%.", type="Healing" },		-- Blessed Prayer
--[[]]	{ text="Урон от темной магии увеличен на (%d+)%%%.", type="Shadowbaseincrease", amount="n/100" },		-- Shadowform
	{ text="Урон увеличен на (%d+)%%%.", type="Allbaseincrease", amount=0.05 },					-- Sayge's fortune
	{ text="Урон увеличен на (%d+)%%%.", type="Meleebaseincrease", amount=0.05 },				-- Sayge's fortune
--[[]]	{ text="Урон от огня увеличен на (%d+)%%%.", type="Firebaseincrease", amount="n/100" },				-- Burning Wish Demonic Sacrifice Imp
--[[]]	{ text="Наносимый урон увеличен на (%d+)%%%.", type="Allbaseincrease", amount="n/100" },			-- Master Demonologist Succubus
--[[]]	{ text="Увеличение урона от темной магии на (%d+)%%%.", type="Shadowbaseincrease", amount="n/100" },			-- Touch of Shadow Demonic Sacrifice Succubus
	{ text="Наносимый урон в ближнем бою увеличен на (%d+)%%%.", type="Meleebaseincrease", amount="n/100" },			-- Enrage
--[[]]	{ text="Восполнение 100%% маны в процессе произнесения заклинаний%.", type="ICPercent", amount=4 }, 			-- Innervate
--[[]]	{ text="Во время произнесения заклинаний мана восполняется со скоростью, равной (%d+)%% от обычной%.", type="ICPercent", amount="n/100" },		-- Mage Armor
	{ text="Урон от schoolname увеличен вплоть до (%d+)%." },							-- Elixir of frost power
--[[]]	{ text="Урон, причиненный заклинаниями и способностями огня увеличен до (%d+)%.", type="Fire" },						-- Elixir of Greater Firepower
--[[]]	{ text="Урон от заклинаний и эффект исцеляющих заклинаний увеличены на (%d+)%%%.", type="Allbaseincrease", amount="n/100" },	-- Power Infusion
--[[]]	{ text="Урон от заклинаний и затраты маны увеличены%.", type="Damagemodifier", amount=0.35 },		-- Arcane Power
--[[]]	{ text="(%d+) ед%. маны раз в 5 сек%.", type="manaperfive" }, 						-- Blessing of Wisdom/Nightfin soup
	{ text="Скорость восполнения маны увеличена на (%d+) ед%. раз в 5 сек%.", type="manaperfive" }, 				-- Safefish Well Fed
--[[]]	{ text="Дополнительный урон от заклинаний вплоть до .-(%d+)", type="Damage" }, 							-- Flask of Supreme Power / ZHC Damage
--[[]]	{ text="вероятность критического удара заклинаний.-(%d+)", type="Allcritchance" },							-- Moonkin Aura/Fire Festival Fury
--[[]]	{ text="Наносимый магический урон и исцеляющие эффекты увеличены на (%d+)", type="All" },					-- Trinket Ephemeral Power
--[[?]]	{ text="Увеличение эффективности лечения на (%d+)", type="Healing" },							-- ZHC Healing
--[[]]	{ text="30%% урона, получаемого хозяином, передается демону. Весь наносимый урон повышен на (%d+)%%%.", type="Allbaseincrease", amount="n/100" },	-- Soul Link
}

TheoryCraft_Debuffs = {
	{ text="Броня ослаблена на (%d+) ед%.", type="Sunder" },   							-- Sunder Armor
	{ text="Броня ослаблена%.", type="DontMitigate", amount=1 },							-- Expose Armor
	{ text="Вероятность получить критический удар заклинанием магии льда повышена на (%d+)%%%.", type="Frostcritchance" },   						-- Winter's Chill
	{ text="Все противники получают (%d+) дополнительной силы атаки дальнего боя против выбранной цели%.", type="huntersmark" },		-- Hunter's Mark
	{ text="Получаемый урон от темной магии увеличен на (%d+)%%%.", type="Shadowbaseincrease", amount="n/100" },		-- Shadow Weaving
	{ text="Сопротивление огню и магии льда снижено на (%d+)%.", type="Firepenetration" },				-- Curse of the Elements
	{ text="Сопротивление огню и магии льда снижено на (%d+)%.", type="Frostpenetration" },				-- Curse of the Elements
	{ text="Получаемый урон от огня и магии льда увеличен на (%d+)%%%.", type="Firebaseincrease", amount="n/100" },		-- Curse of the Elements
	{ text="Получаемый урон от огня и магии льда увеличен на (%d+)%%%.", type="Frostbaseincrease", amount="n/100" },	-- Curse of the Elements
	{ text="Получаемый урон от темной и тайной магии увеличен на (%d+)%%%.", type="Shadowbaseincrease", amount="n/100" },	-- Curse of shadows
	{ text="Получаемый урон от темной и тайной магии увеличен на (%d+)%%%.", type="Arcanebaseincrease", amount="n/100" },	-- Curse of shadows
	{ text="Сопротивление темной и тайной магии снижено на (%d+) ед%.", type="Shadowpenetration" },				-- Curse of Shadows
	{ text="Сопротивление темной и тайной магии снижено на (%d+) ед%.", type="Arcanepenetration" },				-- Curse of Shadows
	{ text="Получаемый урон от светлой магии увеличен до (%d+)%%.", type="Holy" },						-- Judgement of Crusader
	{ text="Не в силах пошевелиться%.", type="doshatter", amount=1 },							-- Frost Nova
	{ text="Заморозка%.", type="doshatter", amount=1 },								-- Freezing Band?
	{ text="Увеличение урона от огня на (%d+)%%%.", type="Firebaseincrease", amount="n/100" },			-- Improved Scorch
}

-- Dot Duration is read from here

TheoryCraft_DotDurations = {
	{ text=" за (%d+) сек%.", amount="n" },						-- Shadow Word: Pain, Corruption, Immolate, Renew
	{ text="раз в секунду в течение (%d+) сек%.", amount="n" }, -- Volley
--[[?]]	{ text=" Время действия %– (%d+) сек%.", amount="n" },			-- Tranquility
--[[?]]	{ text="В течение (%d+) сек%.", amount="n" },			-- Arcane Missiles
	{ text="Время действия %- (%d+) сек%.", amount="n" },		-- Drain and Siphon Life
--[[]]	{ text="спустя 1 мин%.", amount="60" },						-- Curse of Doom
}

-- Checks every line for these

TheoryCraft_EquipEveryRight = {
	{ text="^Скорость (%d+%.?%d+)", type="OffhandSpeed", slot="SecondaryHand" },	-- Weapon Damage
	{ text="^Скорость (%d+%.?%d+)", type="MainSpeed", slot="MainHand" },			-- Weapon Damage
	{ text="^Скорость (%d+%.?%d+)", type="RangedSpeed", slot="Ranged" },			-- Weapon Damage
	{ text="^Кинжал", type="MeleeAPMult", amount=-0.7, slot="MainHand" },			-- Weapon Damage
	{ text="^Кинжал", type="DaggerEquipped", amount=1, slot="MainHand" }	,		-- Used for dagger spec
	{ text="^Кистевое", type="FistEquipped", amount=1, slot="MainHand" },			-- Used for fist spec
	{ text="^Топор", type="AxeEquipped", amount=1, slot="MainHand" },				-- Used for Axe Spec
	{ text="^Древковое", type="PolearmEquipped", amount=1, slot="MainHand" },		-- Used for Polearm Spec
	{ text="^Щит", type="ShieldEquipped", amount=1, slot="SecondaryHand" },			-- Used for Block
}

TheoryCraft_EquipEveryLine = {
	{ text=".+%+(%d+) к блокированию", type="BlockValueReport" }, 					-- Block Value (ZG Enchant)
	{ text="%+(%d+) к силе атаки дальнего боя", type="RangedAttackPowerReport" }, 	-- Hunter Leg/Helm enchant
--[[]]	{ text="Блокирование: (%d+)", type="BlockValueReport" }, 						-- Block Value (shield)

--[[?]]	{ text="%+(%d+) к силе атаки", type="AttackPowerReport" }, 						-- Attack power

--[[]]	{ text="Добавляет (%d+%.?%d+) ед%. урона в секунду", type="AmmoDPS", slot="Ammo" },	-- Arrows

	{ text="Правая рука", type="MeleeAPMult", amount="2.4", slot="MainHand" },		-- Weapon Damage
	{ text="Одноручное", type="MeleeAPMult", amount="2.4", slot="MainHand" },		-- Weapon Damage
	{ text="Двуручное", type="MeleeAPMult", amount="3.3", slot="MainHand" },		-- Weapon Damage
	{ text="(%d+) %- %d+", type="RangedMin", slot="Ranged" },						-- Weapon Damage
	{ text="%d+ %- (%d+)", type="RangedMax", slot="Ranged" }, 						-- Weapon Damage
--[[]]	{ text="Прицел %(%+(%d+) к урону%)", type="RangedMin", slot="Ranged" },			-- Weapon Damage enchant
--[[]]	{ text="Прицел %(%+(%d+) к урону%)", type="RangedMax", slot="Ranged" },			-- Weapon Damage enchant
	{ text="(%d+) %- %d+", type="MeleeMin", slot="MainHand" },						-- Weapon Damage
	{ text="%d+ %- (%d+)", type="MeleeMax", slot="MainHand" }, 						-- Weapon Damage
--[[?]]	{ text="%+(%d+) к урону оружием", type="MeleeMin", slot="MainHand" },				-- Weapon Damage enchant
--[[?]]	{ text="%+(%d+) к урону оружием", type="MeleeMax", slot="MainHand" },				-- Weapon Damage enchant
	{ text="(%d+) %- %d+", type="OffhandMin", slot="SecondaryHand" },				-- Weapon Damage
	{ text="%d+ %- (%d+)", type="OffhandMax", slot="SecondaryHand" }, 				-- Weapon Damage
--[[?]]	{ text="%+(%d+) к урону оружием", type="OffhandMin", slot="SecondaryHand" },		-- Weapon Damage enchant
--[[?]]	{ text="%+(%d+) к урону оружием", type="OffhandMax", slot="SecondaryHand" },		-- Weapon Damage enchant

--[[?]]	{ text="%+(%d+) к урону от schoolname" },										-- of wrath items
	{ text="%+(%d+) к урону от заклинаний schoolname" },							-- AQ Glove enchants
	{ text="%+(%d+) к лечению и урону от заклинаний", type="All", me=1 },			-- Hoodoo Hex
--[[?]]	{ text="%+(%d+) к лечению", type="Healing" },										-- of healing items
--[[?]]	{ text="%+(%d+) к лечению и урону от заклинаний", type="All" },						-- of sorcery items
	{ text="%+(%d+) к урону от заклинаний schoolname", me=1 }, 						-- Enchant Weapon - Winter's Might
	{ text="%+(%d+) к урону от заклинаний", type="All", me=1 }, 					-- Enchant Weapon - Spell Power
	{ text="%+(%d+) к лечению", type="Healing" },									-- Prophetic Aura
	{ text="+(%d+) к урону от заклинаний и лечению", type="All" }, 					-- Zandalar Signet of Mojo

	{ text="Использование: Восполняет 375 - 625 ед%. маны%.", type="manarestore", amount="500" }, -- Robe of the Archmage [spell 18385]

	{ text="%+(%d+)%% к меткости заклинаний", type="Allhitchance" },							-- Presence of Sight
--[[?]]	{ text="%/%+(%d+)%% к меткости", type="Meleehitchance" },						-- Falcon's Call

--[[?]]	{ text="^.(%d+) ед%. маны каждые 5 секунд", type="manaperfive" },						-- of restoration
--[[?]]	{ text="%+(%d+) к восполнению маны/", type="manaperfive" },								-- zg enchant
--[[?]]	{ text="Восполнение (%d+) ед%. маны каждые 5 секунд", type="manaperfive" },					-- bracers healing enchant

	{ text="^Сверкающее масло маны", type="manaperfive", amount="12" }, 			-- Enchanting oils
	{ text="^Сверкающее масло маны", type="Healing", amount="25" }, 				-- Enchanting oils
	{ text="^Сверкающее волшебное масло", type="Allcritchance", amount="1" }, 		-- Enchanting oils
	{ text="^Сверкающее волшебное масло", type="Damage", amount="36" }, 			-- Enchanting oils
	{ text="^Слабое масло маны", type="manaperfive", amount="4" }, 					-- Enchanting oils
	{ text="^Простое масло маны", type="manaperfive", amount="8" }, 				-- Enchanting oils
	{ text="^Слабое волшебное масло", type="Damage", amount="8" }, 					-- Enchanting oils
	{ text="^Простое волшебное масло", type="Damage", amount="16" }, 				-- Enchanting oils
	{ text="^Волшебное масло", type="Damage", amount="24" }, 						-- Enchanting oils
}

-- Won't check any lines containing the following words (for speed)

TheoryCraft_IgnoreLines = {
	"^Прочность", "^Персональный предмет", "^Классы%:", "^Требуется", "^Броня%: %d+", "^Голова", "^Шея", "^Плечо",
	"^Спина", "^Грудь", "^Запястья", "^Кисти рук", "^Пояс", "^Ноги", "^Ступни", "^Палец", "^Аксессуар",
	"^Жезл", "^Левая рука", "Сопротивление?$", "^%+%d+ к выносливости", "^%+%d+ к интеллекту",
	"^%+%d+ к духу", "^%+%d+ к ловкости", "^%+%d+ к силе"
}

-- These are handled specially

TheoryCraft_SetsDequipOnly= {
	{ text="Уменьшает расход маны на заклинания темной магии на %d+%%%.", type="Shadowmanacost", amount=-0.15 }, -- Felheart 8 piece bonus
}

-- Checks every line beginning Set: for these

TheoryCraft_Sets = {
	{ text="Во время произнесения заклинаний мана восполняется со скоростью, равной (%d+)%% от обычной%.", type="ICPercent", amount="n/100" }, 	     	-- Stormrage/Trans
	{ text="При обычной атаке в дальнем бою у вас есть 4%% шанса на восполнение 200 ед%. маны%.", type="Beastmanarestore", amount=200 },	-- Beaststalker/Beastmaster
	{ text="Повышение на 15%% величины восполняемого здоровья или маны при использовании заклинаний \"Похищение жизни\" и \"Похищение маны\".%.", type="Drain Lifeillum", amount=0.15 },	-- Felheart 3 piece bonus
	{ text="10%%%-я вероятность того, что после произнесения вами заклинаний \"Чародейские стрелы\", \"Огненный шар\" или \"Ледяная стрела\", следующее заклинание, время применения которого менее 10 секунд, будет произнесено мгновенно%.", type="FrostboltNetherwind", amount=1 },	    -- Netherwind
	{ text="10%%%-я вероятность того, что после произнесения вами заклинаний \"Чародейские стрелы\", \"Огненный шар\" или \"Ледяная стрела\", следующее заклинание, время применения которого менее 10 секунд, будет произнесено мгновенно%.", type="FireballNetherwind", amount=1 },	    -- Netherwind
	{ text="Увеличивает вероятность критического эффекта заклинания \"Молитва исцеления\" на (%d+)%%%.", type="Prayer of Healingcritchance" },	-- Prophecy 8 piece
	{ text="Повышает вероятность нанести критический удар заклинаниями категории \"Шок\" на (%d+)%%%.", type="Shockcritchance" }, 	-- Shaman Legionnaire set bonus
	{ text="Повышает вероятность критического эффекта заклинаний сил природы на (%d+)%%%.", type="Naturecritchance" }, 	-- ten storms set bonus
	{ text="После произнесения заклинаний \"Волна исцеления\" или \"Малая волна исцеления\", заклинатель с вероятностью 25%% восстанавливает 35%% маны от базового расхода на заклинание%.", type="EarthfuryBonusmanacost", amount=-0.0875 },   -- earth fury set bonus
	{ text="Увеличение урона от способностей \"Залп\" и \"Град стрел\" на (%d+)%%%.", type="Barragemodifier", amount="n/100"},   	-- giantstalker set bonus
	{ text="Увеличение вероятности критического эффекта ваших заклинаний светлой магии на (%d+)%%%.", type="Holycritchance" },		-- Prophecy
	{ text="Шанс при наложении заклинания увеличить наносимый вами урон и произносимое вами исцеление на 95 ед%. на 10 сек%.", type="All", amount=95, duration=9.9, proc=0.04, exact=1 }, 	     	-- Elements
}

-- Checks every line beginning with Equip: or Set: for these

TheoryCraft_Equips = {
	{ text="Увеличение урона, наносимого нежити магическими эффектами и заклинаниями, на (%d+) ед%.", type="Undead" }, 	    	    	    -- Rune of the Dawn
	{ text="Увеличивает исцеляющий эффект заклинания \"Малая волна исцеления\" не более чем на (%d+) ед%.", type="Lesser Healing Wave" }, 	    -- Totem of Life
	{ text="^(%d+) к блокированию", type="BlockValueReport" }, 							    -- Block Value
	{ text="Увеличивает показатель блокирования вашего щита на (%d+) ед%.", type="BlockValueReport" }, 				    -- Block Value
	{ text="Повышает меткость на (%d+)%%%.", type="Meleehitchance" }, 				    -- Generic Hit
	{ text="Увеличивает вероятность нанести критический удар на (%d+)%%%.", type="CritReport" }, 		    -- Generic Crit
	{ text="Увеличивает силу атаки на (%d+)%.", type="AttackPowerReport" }, 						    -- Attack power
	{ text="Увеличивает силу атаки дальнего боя на (%d+)%.", type="RangedAttackPowerReport" }, 				    -- Hunter's Royal seal of eldre'thalas
	{ text="Повышает вероятность нанести критический удар заклинаниями на (%d+)%%%.", type="Allcritchance" },    -- Generic spell crit
	{ text="Снижает сопротивление магии у целей ваших заклинаний на (%d+)%.", type="Allpenetration" },	    -- Penetration
	{ text="Повышает меткость заклинаний на (%d+)%%%.", type="Allhitchance" },		    	    -- ZG drops
	{ text="Увеличение вероятности критического эффекта ваших заклинаний светлой магии на (%d+)%%%.", type="Holycritchance" },    -- Benediction
	{ text="Увеличивает урон и исцеляющие действия магических эффектов и заклинаний не более чем на (%d+)%.", type="All" },    -- Standard +dam
	{ text="Увеличивает исцеляющие действия эффектов и заклинаний не более чем на (%d+)%.", type="Healing" },		    -- Standard +heal
	{ text="Увеличивает урон, наносимый заклинаниями и эффектами schoolname не более чем на (%d+)%." },			    -- Single school +dam
	{ text="Восполнение (%d+) маны .+ 5 сек%.", type="manaperfive" },					            -- mana per five
	{ text="При успешной атаке своими боевыми заклинаниями вы получаете шанс увеличить урон всех заклинаний и эффектов на 132 ед%. на 10 сек%.", type="All", amount=132, duration=9.9, proc=0.05, exact=1 }, -- Wrath of Cenarius
	{ text="С вероятностью 2% после каждого успешного заклинания вы сможете восполнять ману во время произнесения со скоростью, равной 100%% от обычной, в течение 15 сек%.", type="ICPercent", amount=1, duration=15, proc=0.02, exact=0 }, -- Darkmoon Trinket
}

TheoryCraft_WeaponSkillOther = "Рукопашный бой"

-- Used for calcuting real crit chance, off attack skill of your current weapon.
-- English must not be translated. ltext is the text that will be to the left of the weapon type
-- Skill is what skill it matches. (eg Two-Handed Axes)

TheoryCraft_WeaponSkills = {
	{ english="Axe", text="Топор", ltext="Двуручное", skill="Двуручные топоры" },
	{ english="Sword", text="Меч", ltext="Двуручное", skill="Двуручные мечи" },
	{ english="Mace", text="Дробящее", ltext="Двуручное", skill="Двуручное дробящее оружие" },
	{ english="Staff", text="Посох", skill="Посохи" },
	{ english="Axe", text="Топор", skill="Топоры" },
	{ english="Sword", text="Меч", skill="Мечи" },
	{ english="Mace", text="Дробящее", skill="Дробящее оружие" },
	{ english="Polearm", text="Древковое", skill="Древковое оружие" },
	{ english="Dagger", text="Кинжал", skill="Кинжалы" },
	{ english="", text="Удочка", skill="Рыбная ловля" },
}

-- Slot is the text that appears on the custom form, text needs to be translated. Realslot needs to stay as is.

TheoryCraft_SlotNames = {
	{ realslot="Head", slot="Head", text="Голова" },
	{ realslot="Neck", slot="Neck", text="Шея" },
	{ realslot="Shoulder", slot="Shoulder", text="Плечи" },
	{ realslot="Back", slot="Back", text="Спина" },
	{ realslot="Chest", slot="Chest", text="Грудь" },
	{ realslot="Shirt", slot="Shirt", text="Рубашка" },
	{ realslot="Tabard", slot="Tabard", text="Гербовая накидка" },
	{ realslot="Wrist", slot="Wrist", text="Запястья" },
	{ realslot="Hands", slot="Hands", text="Кисти рук" },
	{ realslot="Waist", slot="Waist", text="Пояс" },
	{ realslot="Legs", slot="Legs", text="Ноги" },
	{ realslot="Feet", slot="Feet", text="Ступни" },
	{ realslot="Finger0", slot="Finger0", text="Палец" },
	{ realslot="Finger1", slot="Finger1", text="Палец" },
	{ realslot="Trinket0", slot="Trinket0", text="Аксессуар" },
	{ realslot="Trinket1", slot="Trinket1", text="Аксессуар" },
	{ realslot="MainHand", slot="Main", text="Правая рука" },
	{ realslot="MainHand", slot="Main", text="Одноручное" },
	{ realslot="MainHand", slot="Main", text="Двуручное", both=true },
	{ realslot="SecondaryHand", slot="Off Hand", text="Левая рука" },
	{ realslot="SecondaryHand", slot="Off Hand", text="Левая рука" },
	{ realslot="SecondaryHand", slot="Off Hand", text="Левая рука" },
	{ realslot="Ranged", slot="Ranged", text="Жезл" },
	{ realslot="Ranged", slot="Ranged", text="Лук" },
	{ realslot="Ranged", slot="Ranged", text="Ружье" },
	{ realslot="Ranged", slot="Ranged", text="Арбалет" },
	{ realslot="Ranged", slot="Ranged", text="Оружие дальнего боя" },
	{ realslot="Ranged", slot="Ranged", text="Метательное" },
}
end
