var/list/real_sidormat_items = list()
var/list/trash_tier_sidormatitems = list()
var/list/low_tier_sidormatitems = list()
var/list/medium_tier_sidormatitems = list()
var/list/high_tier_sidormatitems = list()
var/list/global_sidormat_list = list(
		///////////////////////////////  Оружие  /////////////////////////////////////////
	"Handguns" = list(
		///////////////////////////// **Пистолеты** /////////////////////////////////////
		new /datum/data/stalker_equipment("PMm",			"ПМм",				/obj/item/gun/ballistic/automatic/pistol/pm,				3000,	ROOKIE),
		new /datum/data/stalker_equipment("TT",				"ТТ",				/obj/item/gun/ballistic/automatic/pistol/tt,				3000,	ROOKIE),
		new /datum/data/stalker_equipment("Fort-12",		"Форт-12",			/obj/item/gun/ballistic/automatic/pistol/fort12,			6500,	ROOKIE),
		new /datum/data/stalker_equipment("PB1s",			"ПБС1с",			/obj/item/gun/ballistic/automatic/pistol/pb1s,				4500,	ROOKIE),
		new /datum/data/stalker_equipment("SIG-Sauer P220",	"П-220",			/obj/item/gun/ballistic/automatic/pistol/sip,				12500,	EXPERIENCED),
		new /datum/data/stalker_equipment("Colt M1911",		"Кольт",			/obj/item/gun/ballistic/automatic/pistol/cora,				9000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Beretta 92FS",	"Беретта",			/obj/item/gun/ballistic/automatic/pistol/marta,				9000,	EXPERIENCED),
		new /datum/data/stalker_equipment("USP-match",		"ЮСП-матч",			/obj/item/gun/ballistic/automatic/pistol/usp_match, 		16000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Colt Anaconda",	"Кольт Анаконда",	/obj/item/gun/ballistic/revolver/anaconda,					25000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Desert Eagle",	"Дёзерт Игл",		/obj/item/gun/ballistic/automatic/pistol/desert,			30000,	EXPERIENCED)
		),

	"Automatic Weapons" = list(
		///////////////////////////// **Автоматы, ПП** /////////////////////////////////////
		new /datum/data/stalker_equipment("Beretta M38",	"Беретта М38",		/obj/item/gun/ballistic/automatic/berettam38,				10000,	ROOKIE),
		new /datum/data/stalker_equipment("Kiparis",		"Кипарис",			/obj/item/gun/ballistic/automatic/kiparis,					10000,	ROOKIE),
		new /datum/data/stalker_equipment("PPSh",			"ППШ",				/obj/item/gun/ballistic/automatic/ppsh,						15000,	ROOKIE),
		new /datum/data/stalker_equipment("MP-5",			"МП-5",				/obj/item/gun/ballistic/automatic/mp5,						18000,	ROOKIE),
		new /datum/data/stalker_equipment("AK-74S",			"АК-74У",			/obj/item/gun/ballistic/automatic/aksu74 ,					24000,	ROOKIE),
		new /datum/data/stalker_equipment("AK-74",			"АК-74",			/obj/item/gun/ballistic/automatic/ak74,						30000,	ROOKIE),
		new /datum/data/stalker_equipment("AS-96",			"АС-96",			/obj/item/gun/ballistic/automatic/abakan,					40000,	EXPERIENCED),
		new /datum/data/stalker_equipment("LR-300",			"ЛР-300",			/obj/item/gun/ballistic/automatic/tpc301,					40000,	EXPERIENCED),
		new /datum/data/stalker_equipment("L85",			"Л85",				/obj/item/gun/ballistic/automatic/il86,						40000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Tunder OTs-14", 	"ОЦ-14 Гроза",		/obj/item/gun/ballistic/automatic/groza,					35000,	EXPERIENCED),
		new /datum/data/stalker_equipment("AS \"Val\"",		"АС \"Вал\"",		/obj/item/gun/ballistic/automatic/val,						50000,	VETERAN),
		new /datum/data/stalker_equipment("SIG SG 550",		"СИГ СГ 550",		/obj/item/gun/ballistic/automatic/sigsg550,					50000,	VETERAN),
		new /datum/data/stalker_equipment("FN F2000",		"ФН Ф2000",			/obj/item/gun/ballistic/automatic/fnf2000,					65000,	EXPERT),
		new /datum/data/stalker_equipment("GP 37",			"ГП 37",			/obj/item/gun/ballistic/automatic/gp37,						75000,	EXPERT),
		new /datum/data/stalker_equipment("FN F2000S",		"ФН Ф2000С",		/obj/item/gun/ballistic/automatic/fnf2000s,					100000,	EXPERT),
		new /datum/data/stalker_equipment("PKM",			"ПКМ",				/obj/item/gun/ballistic/automatic/l6_saw/pkm,				200000,	EXPERT)
		),

	"Shotguns" = list(
		/////////////////////////////// **Дробовики** /////////////////////////////////////
		new /datum/data/stalker_equipment("Sawn off",		"Обрез",			/obj/item/gun/ballistic/shotgun/bm16/sawnoff,				6000,	ROOKIE),
		new /datum/data/stalker_equipment("BM-16",			"БМ-16",			/obj/item/gun/ballistic/shotgun/bm16,						10000,	ROOKIE),
		new /datum/data/stalker_equipment("TOZ-34",			"ТОЗ-34", 			/obj/item/gun/ballistic/shotgun/bm16/toz34,					15000,	ROOKIE),
		new /datum/data/stalker_equipment("Ithaca M37",		"Итака М37",		/obj/item/gun/ballistic/shotgun/ithaca,						20000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Wincheaster-1300","Винчестер-1300",	/obj/item/gun/ballistic/shotgun/chaser,						30000,	EXPERIENCED),
		new /datum/data/stalker_equipment("SPAS-12",		"СПАС-12",			/obj/item/gun/ballistic/shotgun/spsa,						50000,	VETERAN)
		),

	"Rifles" = list(
		/////////////////////////////// **Винтовки** /////////////////////////////////////
		new /datum/data/stalker_equipment("Lee Enfield",	"Ли Энфилд",		/obj/item/gun/ballistic/shotgun/boltaction/enfield,			15000,	ROOKIE),
		new /datum/data/stalker_equipment("Vintorez", 		"Винторез",			/obj/item/gun/ballistic/automatic/vintorez,					60000,	EXPERT)
		),

	"Melee Weapons" = list(
		/////////////////////////////// **Другое** /////////////////////////////////////
		new /datum/data/stalker_equipment("Kitchen Knife",		"Кухонный нож",				/obj/item/kitchen/knife,												1500,	ROOKIE),
		new /datum/data/stalker_equipment("Tourist Knife",		"Нож туриста",				/obj/item/kitchen/knife/tourist,										4000,	ROOKIE),
		new /datum/data/stalker_equipment("Bayonet",			"Штык-нож",					/obj/item/kitchen/knife/bayonet,										7000,	ROOKIE),
		new /datum/data/stalker_equipment("Butcher's Cleaver",	"Тесак мясника",		/obj/item/kitchen/knife/butcher,										10000,	ROOKIE),
		new /datum/data/stalker_equipment("Frag Grenade",		"Осколочная Граната",		/obj/item/grenade/syndieminibomb/concussion/stalker/frag,				2500,	ROOKIE),
		new /datum/data/stalker_equipment("Flash Grenade",		"Светошумовая Граната",		/obj/item/grenade/flashbang,											2000,	ROOKIE)
		),

	"Ammo Boxes" = list(
		////////////////////////////////  Патроны  /////////////////////////////////////////
		new /datum/data/stalker_equipment("9x18mm Box",				"Коробка 9х18мм",							/obj/item/ammo_box/stalker/b9x18,						2500,	ROOKIE,			sale_price =300),
		new /datum/data/stalker_equipment("9x18mm AP Box",			"Коробка 9x18мм Бронебойные",				/obj/item/ammo_box/stalker/b9x18P,						3500,	EXPERIENCED,	sale_price =350),
		new /datum/data/stalker_equipment("7.62x25mm Box",			"Коробка 7.62x25мм",						/obj/item/ammo_box/stalker/b762x25,						2500,	ROOKIE,			sale_price =400),
		new /datum/data/stalker_equipment("9x19mm Box",				"Коробка 9x19мм",							/obj/item/ammo_box/stalker/b9x19,						3500,	ROOKIE,			sale_price =450),
		new /datum/data/stalker_equipment("9x19mm AP Box",			"Коробка 9x19мм Бронебойные",				/obj/item/ammo_box/stalker/b9x19P,						5750,	EXPERIENCED,	sale_price =500),
		new /datum/data/stalker_equipment(".45 ACP Box",			"Коробка .45 ACP",							/obj/item/ammo_box/stalker/bacp45,						8000,	ROOKIE,			sale_price =550),
		new /datum/data/stalker_equipment(".45 ACP Hydroshock Box",	"Коробка .45 ACP Hydroshock",				/obj/item/ammo_box/stalker/bacp45ap,					15000,	EXPERIENCED,	sale_price =600),
		new /datum/data/stalker_equipment(".44 Magnum Box",			"Коробка .44 Магнум",						/obj/item/ammo_box/stalker/bmag44,						14000,	EXPERIENCED,	sale_price =650),
		new /datum/data/stalker_equipment(".44 Magnum FMJ Box",		"Коробка .44 Магнум Цельномет. оболочка",	/obj/item/ammo_box/stalker/bmag44fmj,					15000,	EXPERIENCED,	sale_price =700),
		new /datum/data/stalker_equipment("12x70 Buckshot Box",		"Коробка дроби 12x70",						/obj/item/ammo_box/stalker/b12x70,						8000,	ROOKIE,			sale_price =500),
		new /datum/data/stalker_equipment("12x70 Slug Box",			"Коробка дроби 12x70 Бронебойные",			/obj/item/ammo_box/stalker/b12x70P,						9500,	EXPERIENCED,	sale_price =550),
		new /datum/data/stalker_equipment("12x70 Dart Box",			"Коробка 12x70 Дротик",						/obj/item/ammo_box/stalker/b12x70D,						7000,	EXPERIENCED,	sale_price =600),
		new /datum/data/stalker_equipment("5.45x39mm Box",			"Коробка 5.45х39мм",						/obj/item/ammo_box/stalker/b545,						10000,	ROOKIE,			sale_price =650),
		new /datum/data/stalker_equipment("5.45x39mm AP Box",		"Коробка 5.45х39мм Бронебойные",			/obj/item/ammo_box/stalker/b545ap,						15000,	VETERAN,		sale_price =700),
		new /datum/data/stalker_equipment("5.56x45mm Box",			"Коробка 5.56x45мм",						/obj/item/ammo_box/stalker/b55645,						12000,	ROOKIE,			sale_price =680),
		new /datum/data/stalker_equipment("5.56x45mm AP Box",		"Коробка 5.56x45мм Бронебойные",			/obj/item/ammo_box/stalker/b55645ap,					20000,	VETERAN,		sale_price =720),
		new /datum/data/stalker_equipment("7.62x51 Box",			"Коробка 7.62х51",							/obj/item/ammo_box/stalker/b762x51,						10000,	ROOKIE,			sale_price =480),
		new /datum/data/stalker_equipment("9x39 PAB-9 Box",			"Коробка 9x39мм ПАБ-9",						/obj/item/ammo_box/stalker/b939,						30000,	EXPERIENCED,	sale_price =700),
		),

	"Ammo Magazines and Clips" = list(
		new /datum/data/stalker_equipment("PMm; PB1s Magazine",						"Магазин к ПМм; ПБ1с",			/obj/item/ammo_box/magazine/stalker/m9x18pm,			1000,	ROOKIE,		sale_price =500),
		new /datum/data/stalker_equipment("TT Magazine",							"Магазин к ТТ",					/obj/item/ammo_box/magazine/stalker/tt,					1000,	ROOKIE,		sale_price =500),
		new /datum/data/stalker_equipment("Fort-12 Magazine",						"Магазин к Форт-12",			/obj/item/ammo_box/magazine/stalker/m9x18fort,			2000,	ROOKIE,		sale_price =500),
		new /datum/data/stalker_equipment("Kiparis Magazine",						"Магазин к Кипарису",			/obj/item/ammo_box/magazine/stalker/kiparis,			2400,	ROOKIE,		sale_price =500),
		new /datum/data/stalker_equipment("MP-5 Magazine",							"Магазин к МП-5",				/obj/item/ammo_box/magazine/stalker/m9x19mp5,			3000,	ROOKIE,		sale_price =500),
		new /datum/data/stalker_equipment("PPSh Drum",								"Магазин к ППШ",				/obj/item/ammo_box/magazine/stalker/ppsh,				7000,	ROOKIE,		sale_price =500),
		new /datum/data/stalker_equipment("5.45x39mm Magazine",						"Магазин 5.45x39мм",			/obj/item/ammo_box/magazine/stalker/m545,				5250,	ROOKIE,		sale_price =500),
		new /datum/data/stalker_equipment("5.56x45mm Magazine",						"Магазин 5.56x45мм",			/obj/item/ammo_box/magazine/stalker/m556x45,			6500,	ROOKIE,		sale_price =500),
		new /datum/data/stalker_equipment("AS \"Val\" Magazine",					"Магазин к АС \"Вал\"",			/obj/item/ammo_box/magazine/stalker/sp9x39val,			6000,	VETERAN,	sale_price =500),
		new /datum/data/stalker_equipment("Tunder S14 Magazine",					"Магазин к ОЦ-14 Гроза",		/obj/item/ammo_box/magazine/stalker/sp9x39groza,		6500,	EXPERIENCED,	sale_price =500),
		new /datum/data/stalker_equipment("Vintorez Magazine",						"Магазин к Винторезу",			/obj/item/ammo_box/magazine/stalker/sp9x39vint,			6000,	VETERAN,	sale_price =500),
		new /datum/data/stalker_equipment("Colt M1911; SIG-Sauer P220 Magazine",	"Магазин к Кольту; П-220",		/obj/item/ammo_box/magazine/stalker/sc45,				3400,	ROOKIE,		sale_price =500),
		new /datum/data/stalker_equipment("Beretta 92FS Magazine",					"Магазин к Беретте 92ФС",		/obj/item/ammo_box/magazine/stalker/m9x19marta,			3500,	ROOKIE,		sale_price =500),
		new /datum/data/stalker_equipment("Beretta M38 Magazine",					"Магазин к Беретте М38",		/obj/item/ammo_box/magazine/stalker/berettam38,			3250,	ROOKIE,		sale_price =500),
		new /datum/data/stalker_equipment("USP-match Magazine",						"Магазин к ЮСП-Матч",			/obj/item/ammo_box/magazine/stalker/usp45,				4500,	ROOKIE,		sale_price =500),
		new /datum/data/stalker_equipment("Desert Eagle Magazine",					"Магазин к Desert Eagle",		/obj/item/ammo_box/magazine/stalker/desert,				4000,	EXPERIENCED,	sale_price =500),
		new /datum/data/stalker_equipment("PKM ammo belt box",						"Жестянка с лентой к ПКМ",		/obj/item/ammo_box/magazine/stalker/pkm,				40000,	EXPERIENCED,	sale_price =500),
		new /datum/data/stalker_equipment("7.62x51 Clip",							"Обойма 7.62х51",				/obj/item/ammo_box/stalker/cl762x51,					2000,	ROOKIE,		sale_price =500),
		),

	"Suits" = list(
		///////////////////////////////  Броня  /////////////////////////////////////////
		new /datum/data/stalker_equipment("Leather jacket",				"Кожанка",							/obj/item/clothing/suit/hooded/kozhanka,					5000,	ROOKIE),
		new /datum/data/stalker_equipment("White leather jacket",		"Белая кожанка",				/obj/item/clothing/suit/hooded/kozhanka/white,				5000,	ROOKIE),
		new	/datum/data/stalker_equipment("Bandit jacket",				"Бандитская кожанка",			/obj/item/clothing/suit/hooded/kozhanka/banditka,			6000,	ROOKIE,		faction = "Bandits"),
		new	/datum/data/stalker_equipment("Army suit",					"Армейский комбинезон",				/obj/item/clothing/suit/army,								15000,	ROOKIE,		faction = "Army"),
		new /datum/data/stalker_equipment("\"Sunrize\"",				"Комбинезон \"Заря\"",		/obj/item/clothing/suit/hooded/kombez,						33000,	ROOKIE,		faction = "Loners"),
		new /datum/data/stalker_equipment("Merc suit",					"Комбинезон наёмников",				/obj/item/clothing/suit/hooded/kombez/mercenary,			25000,	ROOKIE,		faction = "Mercenaries"),
		new /datum/data/stalker_equipment("Bandit suit",				"Комбинезон бандитов",				/obj/item/clothing/suit/hooded/kombez/kombez_bandit,		25000,	ROOKIE,		faction = "Bandits"),
		new /datum/data/stalker_equipment("Black trenchcoat",			"Тёмный плащ",						/obj/item/clothing/suit/hooded/kozhanka/banditka/coat,		12500,	ROOKIE,		faction = "Bandits"),
		new /datum/data/stalker_equipment("Brown trenchcoat",			"Плащ",								/obj/item/clothing/suit/hooded/kozhanka/banditka/coat/brown,12500,	ROOKIE),
		new /datum/data/stalker_equipment("Berill-5M",					"Берилл-5М",						/obj/item/clothing/suit/berill,								50000,	EXPERIENCED,faction = "Loners"),
		new /datum/data/stalker_equipment("Wind of Freedom",	    	"Ветер Свободы",					/obj/item/clothing/suit/hooded/kombez/veter,				25000,	ROOKIE,		faction = "Freedom"),
		new /datum/data/stalker_equipment("Guardian of Freedom",		"Страж Свободы",					/obj/item/clothing/suit/strazh,								40000,	EXPERIENCED,faction = "Freedom"),
		new /datum/data/stalker_equipment("PZ-1	",						"ПЗ-1",								/obj/item/clothing/suit/hooded/kombez/monolith,				25000,	ROOKIE,		faction = "Monolith", sale_price = 8000),
		new /datum/data/stalker_equipment("Monolith scientific suit	",	"Научный комбинезон монолита",		/obj/item/clothing/suit/hooded/sealed/monolith,				60000,	ROOKIE,		faction = "Monolith"),
		new /datum/data/stalker_equipment("PS5-M",						"ПС5-М",							/obj/item/clothing/suit/hooded/kombez/ps5m,					25000,	ROOKIE,		faction = "Duty"),
		new /datum/data/stalker_equipment("Heavy merc armor",			"Тяжелая броня наёмников",			/obj/item/clothing/suit/assaultmerc,						50000,	EXPERIENCED,faction = "Mercenaries"),
		new /datum/data/stalker_equipment("PSZ-9D",						"ПСЗ-9Д",							/obj/item/clothing/suit/psz9d,								60000,	VETERAN,	faction = "Duty"),
		new /datum/data/stalker_equipment("SKAT-9M",					"СКАТ-9М",							/obj/item/clothing/suit/skat,								150000,	VETERAN),
		new	/datum/data/stalker_equipment("PSZ-9Md",					"ПСЗ-9Мд",							/obj/item/clothing/suit/hooded/sealed/psz9md,				80000,	VETERAN,	faction = "Duty"),
		new	/datum/data/stalker_equipment("SSP-99 Ecologist",			"ССП-99 Эколог",					/obj/item/clothing/suit/hooded/sealed/ecolog,				85000,	EXPERT),
		new	/datum/data/stalker_equipment("SSP-99M Ecologist",			"ССП-99М Эколог",					/obj/item/clothing/suit/hooded/sealed/ecologm,				150000,	EXPERT,	faction = "Scientists"),
		new	/datum/data/stalker_equipment("SEVA",						"СЕВА",								/obj/item/clothing/suit/hooded/sealed/seva,					225000,	EXPERT),
		new	/datum/data/stalker_equipment("Exoskeleton",				"Экзоскелет",						/obj/item/clothing/suit/hooded/sealed/exoskelet,			2500000,	EXPERT)
		),

	"Masks and Helmets" = list(
		////////////////////////////	Маски, Шлемы	/////////////////////////////////////
		new /datum/data/stalker_equipment("Joy Mask",					"Странная Маска",				/obj/item/clothing/mask/joy,									3000,	ROOKIE),
		new /datum/data/stalker_equipment("Gasmask",					"Противогаз",					/obj/item/clothing/mask/gas/stalker,							7500,	ROOKIE),
		new /datum/data/stalker_equipment("Merc gasmask",				"Противогаз наемников",			/obj/item/clothing/mask/gas/stalker/mercenary,					9500,	ROOKIE),
		new /datum/data/stalker_equipment("Steel helmet",				"Стальная каска",				/obj/item/clothing/head/steel,									10000,	ROOKIE),
		new /datum/data/stalker_equipment("Light tactical helmet",		"Легкий тактический шлем",		/obj/item/clothing/head/hardhat/tactical/light,					22500,	EXPERIENCED),
		new /datum/data/stalker_equipment("Tactical helmet",			"Тактический шлем",				/obj/item/clothing/head/tacticalhelmet,							45000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Assault helmet",	    		"Штурмовой шлем",				/obj/item/clothing/head/assaultmerc,							50000,	EXPERIENCED,	faction = "Mercenaries"),
		new /datum/data/stalker_equipment("Sphera-M12",			 		"Сфера-М12",					/obj/item/clothing/head/spheram,								60000,	EXPERIENCED),
		new /datum/data/stalker_equipment("SKAT-9M (helmet)",			"СКАТ-9М (шлем)",				/obj/item/clothing/head/skathelmet,								100000,	VETERAN)
		),

	"Medicine" = list(
		///////////////////////////////	Медикаменты	/////////////////////////////////////////
		new /datum/data/stalker_equipment("Medkit",						"Аптечка",							/obj/item/reagent_containers/pill/stalker/aptechka/civilian,		1500,	ROOKIE),
		new /datum/data/stalker_equipment("Army medkit",				"Армейская; аптечка",				/obj/item/reagent_containers/pill/stalker/aptechka/army,			3500,	EXPERIENCED),
		new /datum/data/stalker_equipment("Scientific medkit",			"Научная; аптечка",					/obj/item/reagent_containers/pill/stalker/aptechka/scientific,		6000,	VETERAN),
		new /datum/data/stalker_equipment("Bandage",					"Бинт",								/obj/item/reagent_containers/pill/stalker/aptechka/bint,			750,	ROOKIE),
		new /datum/data/stalker_equipment("Anti-rad",					"Анти-рад препараты",				/obj/item/reagent_containers/hypospray/medipen/stalker/antirad,		3500,	ROOKIE),
		new /datum/data/stalker_equipment("LSD Pills",					"Таблетки ЛСД",						/obj/item/storage/pill_bottle/lsd,									10000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Happines Pills",				"Таблетки Счастья",					/obj/item/storage/pill_bottle/happiness,							5000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Epinephrine Pills",			"Эпинефрин в таблетках",			/obj/item/storage/pill_bottle/epinephrine,							5000,	ROOKIE),
		new /datum/data/stalker_equipment("Cyanide Bottle",				"Бутыль Цианида",					/obj/item/reagent_containers/glass/bottle/cyanide,					20000,	ROOKIE),
		new /datum/data/stalker_equipment("Toxin Bottle",				"Бутыль с токсичной жидкостью",		/obj/item/reagent_containers/glass/bottle/toxin,					15000,	ROOKIE),
		new /datum/data/stalker_equipment("Mutagen Bottle",				"Бутыль с Мутагеном",				/obj/item/reagent_containers/glass/bottle/mutagen,					200000,	ROOKIE)
		),

	"Food" = list(
		/////////////////////////////////	Еда	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Canned stew",				"Тушенка",					/obj/item/reagent_containers/food/snacks/stalker/konserva,				550,	ROOKIE),
		new /datum/data/stalker_equipment("Canned fish",				"Шпроты",					/obj/item/reagent_containers/food/snacks/stalker/konserva/shproti,		750,	ROOKIE),
		new /datum/data/stalker_equipment("Vodka \"Kazaki\"",			"Водка \"Казаки\"",			/obj/item/reagent_containers/food/drinks/bottle/vodka/kazaki,			1500,	ROOKIE),
		new /datum/data/stalker_equipment("Energy drink \"NonStop\"",	"Энергетик \"NonStop\"",	/obj/item/reagent_containers/food/drinks/soda_cans/energetic,			500,	ROOKIE),
		new /datum/data/stalker_equipment("Snickers",					"Сникерс",					/obj/item/reagent_containers/food/snacks/stalker/konserva/snack/snikers,300,	EXPERIENCED),
		new /datum/data/stalker_equipment("Salami",						"Колбаса",					/obj/item/reagent_containers/food/snacks/stalker/kolbasa,				500,	ROOKIE),
		new /datum/data/stalker_equipment("Bread",						"Батон",					/obj/item/reagent_containers/food/snacks/stalker/baton,					400,	ROOKIE)
		),

	"Bacpacks" = list(
		new /datum/data/stalker_equipment("Cheap satchel",					"Дешевая сумка",		/obj/item/storage/backpack/satchel/stalker/civilian,				2500,	ROOKIE),
		new /datum/data/stalker_equipment("Cheap backpack",					"Дешевый рюкзак",			/obj/item/storage/backpack/stalker/civilian,						2500,	ROOKIE),
		new /datum/data/stalker_equipment("Tourist backpack",				"Рюкзак туриста",			/obj/item/storage/backpack/stalker/tourist,							10000,	ROOKIE, sale_price = 3000),
		new /datum/data/stalker_equipment("Professional backpack",			"Рюкзак профессионала",		/obj/item/storage/backpack/stalker/professional,					35000,	ROOKIE, sale_price = 10000),
		),

	"Misc" = list(
		/////////////////////////////////	Другое	/////////////////////////////////////////////
		new /datum/data/stalker_equipment/stalker_pda("PDA",					"КПК",													/obj/item/stalker_pda,								4000,	ROOKIE),
		new /datum/data/stalker_equipment("Radio",								"Рация",											/obj/item/radio,									7000,	ROOKIE),
		new /datum/data/stalker_equipment("Repair-kit for suits and helmets",	"Рем. комплект для бронекостюмов и шлемов",		/obj/item/repair_kit/clothing,						10000,	ROOKIE),
		new /datum/data/stalker_equipment("Repair-kit for guns",				"Рем. комплект для огнестрельного оружия",	/obj/item/repair_kit/gun,							4000,	ROOKIE),
		new /datum/data/stalker_equipment("Guitar",								"Гитара",												/obj/item/instrument/guitar,						3000,	ROOKIE),
		new /datum/data/stalker_equipment("Geiger counter",						"Дозиметр",												/obj/item/geiger_counter,							3000,	ROOKIE),
		new /datum/data/stalker_equipment("Flashlight",							"Фонарик",												/obj/item/flashlight/seclite,						1000,	ROOKIE),
		new /datum/data/stalker_equipment("Big Artifact belt",					"Большой пояс для артефактов",				/obj/item/storage/belt/stalker/artifact_belt,		60000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Small Artifact belt",				"Маленький пояс для артефактов",			/obj/item/storage/belt/stalker/artifact_belt/small,	25000,	ROOKIE),
		new /datum/data/stalker_equipment("Matches",							"Спички",												/obj/item/storage/box/matches,						1000,	ROOKIE),
		new /datum/data/stalker_equipment("Simple lighter",						"Пластиковая зажигалка",							/obj/item/lighter/greyscale,						3000,	ROOKIE),
		new /datum/data/stalker_equipment("Zippo lighter",						"Зажигалка \"Зиппо\"",									/obj/item/lighter,									5000,	ROOKIE),
		new /datum/data/stalker_equipment("Cigarettes \"Maxim\"",				"Сигареты \"Maxim\"",									/obj/item/storage/fancy/cigarettes/cigpack/maxim,	2500,	ROOKIE),
		new /datum/data/stalker_equipment("Cigars",								"Сигары",												/obj/item/storage/fancy/cigarettes/cigars,			10000,	ROOKIE),
		new /datum/data/stalker_equipment("100RUB",								"100Rub",												/obj/item/stack/spacecash/c100,						100,	ROOKIE, sale_price =100),
		new /datum/data/stalker_equipment("500RUB",								"500Rub",												/obj/item/stack/spacecash/c500,						500,	ROOKIE, sale_price =500),
		new /datum/data/stalker_equipment("1000RUB",							"1000Rub",												/obj/item/stack/spacecash/c1000,					1000,	ROOKIE, sale_price =1000),
		new /datum/data/stalker_equipment("5000RUB",							"5000Rub",												/obj/item/stack/spacecash/c5000,					5000,	ROOKIE, sale_price =5000),
		new /datum/data/stalker_equipment("Bolts",								"Болты",												/obj/item/stalker/bolts,							300,	ROOKIE),
		new /datum/data/stalker_equipment("HandCuffs",							"Наручники",											/obj/item/restraints/handcuffs,						500,	ROOKIE, faction = "Army")
		),

	"Clothing" = list(
		new /datum/data/stalker_equipment("Under",								"Бабушкин свитер",										/obj/item/clothing/under/color/switer,						1000,	ROOKIE),
		new /datum/data/stalker_equipment("Dark under",							"Тёмный бабушкин свитер",								/obj/item/clothing/under/color/switer/dark,					1500,	ROOKIE),
		new /datum/data/stalker_equipment("Telnyashka",							"Тельняшка",										/obj/item/clothing/under/color/switer/lolg,					1500,	ROOKIE),
		new /datum/data/stalker_equipment("Tracksuit",							"Спортивный костюм",									/obj/item/clothing/under/color/switer/tracksuit,			1500,	ROOKIE),
		new /datum/data/stalker_equipment("Worn out army boots",				"Поношенные берцы",										/obj/item/clothing/shoes/jackboots/warm,					800,	ROOKIE),
		new /datum/data/stalker_equipment("Fingerless gloves",					"Перчатки без пальцев",									/obj/item/clothing/gloves/fingerless,						600,	ROOKIE),
		new /datum/data/stalker_equipment("Balaclava",							"Балаклава",											/obj/item/clothing/mask/balaclava,							700,	ROOKIE)
		),

	"Detectors" = list(
		/////////////////////////////////	Детекторы	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Blink", 		"Отклик",					/obj/item/detector/blink,				8000,	ROOKIE,	sale_price =1000),
		new /datum/data/stalker_equipment("Bear",		"Медведь",					/obj/item/detector/bear,				17000,	EXPERIENCED,	sale_price =4000),
		new /datum/data/stalker_equipment("Veles",		"Велес",					/obj/item/detector/veles,				66000,	VETERAN,	sale_price =10000)
		),

	"Attachments" = list(
		/////////////////////////////////	Аттачменты	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Universl suppressor",	"Универсальный глушитель",					/obj/item/attachment/suppressor,			4000,	ROOKIE,		sale_price =500),
		new /datum/data/stalker_equipment("SUSAT",					"СУСАТ",									/obj/item/attachment/scope/SUSAT,			10000,	EXPERIENCED,	sale_price =3000),
		new /datum/data/stalker_equipment("PSU-1",					"ПСУ-1",									/obj/item/attachment/scope/PS/U1,			15000,	EXPERIENCED,	sale_price =5000),
		new /datum/data/stalker_equipment("PSO-1",					"ПСО-1",									/obj/item/attachment/scope/PS/O1,			30000,	EXPERIENCED,	sale_price =8000),
		new /datum/data/stalker_equipment("Rifle/Shotgun scope",	"Прицел для винтовок/дробовиков",		/obj/item/attachment/scope/rifle,			10000,	ROOKIE,			sale_price =4000)
		///////////////////////////////////////////////////////////////////////////////////////////
		),

	"Unbuyable" = list(
		new /datum/data/stalker_equipment("Canned soup",					"Консервированный Суп",			/obj/item/reagent_containers/food/snacks/stalker/konserva/soup,				900,	ROOKIE),
		new /datum/data/stalker_equipment("Canиed beans",					"Консервированные Бобы",		/obj/item/reagent_containers/food/snacks/stalker/konserva/bobi,				750,	ROOKIE),
		new /datum/data/stalker_equipment("Canned stew",					"Тушенка",						/obj/item/reagent_containers/food/snacks/stalker/konserva/govyadina2,		900,	ROOKIE),
		new /datum/data/stalker_equipment("Canned fish",					"Консервированная рыба",	/obj/item/reagent_containers/food/snacks/stalker/konserva/fish,				750,	ROOKIE),
		new /datum/data/stalker_equipment("Cream cheese",					"Плавленый сыр",				/obj/item/reagent_containers/food/snacks/stalker/konserva/snack/sirok,		400,	ROOKIE),
		new /datum/data/stalker_equipment("Chocolate bar",					"Плитка шоколада",				/obj/item/reagent_containers/food/snacks/stalker/konserva/snack/chocolate,	600,	ROOKIE),
		new /datum/data/stalker_equipment("Biscuits",						"Галеты",						/obj/item/reagent_containers/food/snacks/stalker/konserva/galets,			400,	ROOKIE),
		new /datum/data/stalker_equipment("Cerreal",						"Каша",							/obj/item/reagent_containers/food/snacks/stalker/konserva/kasha,			550,	ROOKIE),
		new /datum/data/stalker_equipment("Canned meat",					"Тушенка",						/obj/item/reagent_containers/food/snacks/stalker/konserva/MREkonserva1,		700,	ROOKIE),
		new /datum/data/stalker_equipment("Canned meat",					"Тушенка",						/obj/item/reagent_containers/food/snacks/stalker/konserva/MREkonserva2,		700,	ROOKIE),
		new /datum/data/stalker_equipment("Canned meat with vegetables",	"Тушенка с овощами",			/obj/item/reagent_containers/food/snacks/stalker/konserva/MREkonserva3,		850,	ROOKIE),
		new /datum/data/stalker_equipment("Biscuits",						"Галеты",						/obj/item/reagent_containers/food/snacks/stalker/konserva/galets,			400,	ROOKIE),
		/////////////////////////////////	Лут с мутантов	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Песий хвост",					"Песий хвост",			/obj/item/stalker/loot/dog_tail,			1000,		ROOKIE, sale_price = 500),
		new /datum/data/stalker_equipment("Плотий глаз",					"Плотий глаз",			/obj/item/stalker/loot/flesh_eye,			1800,		ROOKIE, sale_price = 650),
		new /datum/data/stalker_equipment("Кабаний ног",					"Кабаний ног",			/obj/item/stalker/loot/boar_leg,			6000,		ROOKIE, sale_price = 800),
		new /datum/data/stalker_equipment("Cноркий рук",					"Снорукий рук",			/obj/item/stalker/loot/snork_leg,			7000,		ROOKIE, sale_price = 1000),
		new /datum/data/stalker_equipment("Кровососий щупалец",				"Кровососий щупалец",	/obj/item/stalker/loot/bloodsucker,			16000,		ROOKIE, sale_price = 2500),
		new /datum/data/stalker_equipment("Псевдопесий хвост",				"Псевдопесий хвост",	/obj/item/stalker/loot/pseudo_tail,			8000,		ROOKIE, sale_price = 1500),
		new /datum/data/stalker_equipment("Контроллерий мозг",				"Контроллерий мозг",	/obj/item/stalker/loot/controller_brain,	40000,		ROOKIE, sale_price = 10000),
		/////////////////////////////////	Артефакты	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Медуза",				"Медуза",							/obj/item/artifact/meduza,					5000,	ROOKIE,	sale_price = 1500),
		new /datum/data/stalker_equipment("Каменный цветок",	"Каменный цветок",					/obj/item/artifact/stoneflower,				10000,	ROOKIE,	sale_price = 2500),
		new /datum/data/stalker_equipment("Ночная звезда",		"Ночная звезда",					/obj/item/artifact/nightstar,				30000,	ROOKIE,	sale_price = 13000),
		new /datum/data/stalker_equipment("Душа",				"Душа",								/obj/item/artifact/soul,					80000,	ROOKIE,	sale_price = 25000),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("Вспышка",			"Вспышка",							/obj/item/artifact/flash,					6000,	ROOKIE,	sale_price = 1300),
		new /datum/data/stalker_equipment("Лунный свет",		"Лунный свет",						/obj/item/artifact/moonlight,				12000,	ROOKIE,	sale_price = 2700),
		new /datum/data/stalker_equipment("Пустышка",			"Пустышка",							/obj/item/artifact/pustishka,				40000,	ROOKIE,	sale_price = 8000),
		new /datum/data/stalker_equipment("Батарейка",			"Батарейка",						/obj/item/artifact/battery,					70000,	ROOKIE,	sale_price = 24000),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("Капля",		"Капля",						/obj/item/artifact/droplet,					7000,	ROOKIE,	sale_price = 800),
		new /datum/data/stalker_equipment("Огненный шар",		"Огненный шар",						/obj/item/artifact/fireball,				15000,	ROOKIE,	sale_price = 3500),
		new /datum/data/stalker_equipment("Кристалл",			"Кристалл",							/obj/item/artifact/crystal,					60000,	ROOKIE,	sale_price = 15000),
		new /datum/data/stalker_equipment("Мамины бусы",		"Мамины бусы",						/obj/item/artifact/maminibusi,				80000,	ROOKIE,	sale_price = 35000),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("Кровь Камня",	"Кровь Камня",				/obj/item/artifact/stone_blood,				4000,	ROOKIE,	sale_price = 2500),
		new /datum/data/stalker_equipment("Пузырь",				"Пузырь",							/obj/item/artifact/bubble,					12000,	ROOKIE,	sale_price = 3600),
		new /datum/data/stalker_equipment("Слюда",				"Слюда",							/obj/item/artifact/mica,					30000,	ROOKIE,	sale_price = 9500),
		new /datum/data/stalker_equipment("Светляк",		"Светляк",					/obj/item/artifact/firefly,					60000,	ROOKIE,	sale_price = 25000),
		/////////////////////////////////	Мусор	//////////////////////////////////////////////
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva,					400,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva/MREkonserva1,		200,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva/MREkonserva2,		200,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva/MREkonserva3,		200,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva/bobi,				400,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva/fish,				500,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva/govyadina,			400,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva/shproti,			600,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva/soup,				500,	ROOKIE),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("50 RU",				"50 RU",							/obj/item/stack/spacecash/c50,				50,		ROOKIE,	sale_price = 50),
		new /datum/data/stalker_equipment("100 RU",				"100 RU",							/obj/item/stack/spacecash/c100,				100,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("500 RU",				"500 RU",							/obj/item/stack/spacecash/c500,				500,	ROOKIE,	sale_price = 500),
		new /datum/data/stalker_equipment("1000 RU",			"1000 RU",							/obj/item/stack/spacecash/c1000,			1000,	ROOKIE,	sale_price = 1000),
		new /datum/data/stalker_equipment("5000 RU",			"5000 RU",							/obj/item/stack/spacecash/c5000,			5000,	ROOKIE,	sale_price = 5000)
		)
	)
//Квесты
var/list/quest_list_available = list()
var/list/quest_list_all = list()

/world/New()
	..()
	for(var/path in subtypesof(/datum/data/stalker_quests) - /datum/data/stalker_quests/findartifact)
		quest_list_all += new path()
		if(quest_list_available.len > 4)
			spawn(rand(600, 9000))
				quest_list_available += new path()
		else
			quest_list_available += new path()

/datum/data/stalker_quests
	name = "Quest"
	var/name_ru = "Квест"
	var/desc = "Typical quest"
	var/desc_ru = "Типичный квест"
	var/reward = 0
	var/experience = 50
	var/obj/item/needed = null
	var/name_kill = null

	var/icon/icon = null
	var/icon_state = null


/datum/data/stalker_quests/findartifact
	name = "Bring a specific anomalous object"
	name_ru = "Добыть специфичный аномальный объект"
	reward = 100000
	desc = "Some pricks from the 'great land' are willing to pay a very good price for a specific rare object. They know how it should look, here's the photo of a similiar item, so if you find one by any chance - bring it here, you'll be paid well."
	desc_ru = "Моим поставщикам с 'большой земли' необходим определенный объект из тех, что растут лишь в местных аномальных полях. Они предоставили фото другого подобного аномального образования в качестве ориентира, так что если по пути попадется такой - приноси, щедро заплачу."
	needed = /obj/item/kitchen/knife/tourist
	icon = 'stalker/icons/artifacts.dmi'
	icon_state = "flash"

/datum/data/stalker_quests/findartifact/meduza
	needed = /obj/item/artifact/meduza
	icon_state = "meduza"
