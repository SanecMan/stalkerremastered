
///////////////////////////// Пистолеты //////////////////////////////////////////
/obj/item/gun/ballistic/automatic/pistol
	modifications = list("barrel_pistol" = 0, "frame_pistol" = 0, "grip_pistol" = 0)

/obj/item/gun/ballistic/automatic/pistol/pm   // Макаров
	name = "PMm"
	desc = "Пистолет Макарова Модернизированный. Наиболее распространённый в зоне пистолет - наследие советской эпохи. Достаточно надёжный и дешёвый, отличаетс&#255; невысокой ёмкостью магазина при недостаточной мощности и неудовлетворительности кучности патрона. Основное оружие сталкера-новичка-неудачника. Отличное средство дл&#255; распугивани&#255; ворон."
	eng_desc = "This Soviet legacy is the most common pistol in the Zone and is one of the best compact self-defense handguns available. It is small, highly reliable, easy to use and maintain in working order. It also suffers from several drawbacks, including its short range, low firing accuracy and poor stopping power, while also losing out to modern pistols in its class in terms of weight and magazine size."
	icon_state = "pm"
	w_class = 2
	fire_sound = 'stalker/sound/weapons/pm_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x18pm
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	durability = 60
	spread = 10
	recoil = 0.2
	damagelose = 0.2
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/tt   // ТТ
	name = "TT-33"
	desc = "Старый пистолет, произведенный под столь же старый советский патрон. Весьма попул&#255;рен из-за того, что сотни таких экземпл&#255;ров остались в складах, где их спуст&#255; почти полвека достали и выпустили в продажу бедным новичкам. Мало на что годен, но лучше чем ничего."
	eng_desc = "An old soviet pistol made for similiarly old soviet ammo. Extremely widespread because of large numbers of those pistols left in USSR army stashes around Pripyat. Isn't very powerful, but bullets penetrate armor well enough."
	icon_state = "tt"
	w_class = 2
	fire_sound = 'stalker/sound/weapons/tt33_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/tt
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	fire_delay = 0.5
	durability = 50
	spread = 8
	recoil = 0.15
	damagelose = 0.1
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/sip  // Sig-Sauer
	name = "SIG-Sauer P220"
	desc = "Модель, разработанна&#255; ещё в 1975 году, но до сих пор попул&#255;рна&#255; во всём мире. Магазин недостаточно ёмкий, зато механизм надёжен как швейцарские часы; вторым плюсом &#255;вл&#255;етс&#255; использование мощного кольтовского патрона .45 калибра."
	eng_desc = "The only remaining mass produced model of a globally renowned pistol, this weapon has earned a reputation for its excellent ergonomics and accuracy, and while its magazine is relatively small, it benefits from powerful ammo and a mechanism that functions like a Swiss watch. Some believe the P220 to be the best mass produced .45 ACP caliber handgun there and it has certainly got a following among experienced stalkers and mercenaries."
	icon_state = "sip"
	w_class = 2
	fire_sound = 'stalker/sound/weapons/sig220_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sc45
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	durability = 85
	spread = 6
	recoil = 0.4
	damagelose = 0.2
	draw_sound = 'stalker/sound/weapons/draw/sig220_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/cora  // Colt1911A
	name = "Colt M1911"
	desc = "Классический автоматический «кольт», с честью прошедший все вооружённые конфликты XX века и уверенно вошедший в новое столетие. Невысока&#255; ёмкость магазина в определённой степени компенсируетс&#255; использованием мощного патрона."
	eng_desc = "An improved version of a classic automatic pistol, which passed all the major armed conflicts of the 20th century with flying colors and entered the new millennium with confidence. Produced by dozens if not hundreds of arms manufacturers around the world in both standard and modified configurations. The weapon's only drawback, its mediocre magazine capacity, is largely compensated by the hard-hitting ammo it uses."
	icon_state = "cora"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/colt1911_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sc45
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	spread = 8
	recoil = 0.5
	durability = 100
	damagelose = 0.15
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/marta  // Beretta92FS
	name = "Beretta 92FS"
	desc = "Состоит на вооружении вооружённых сил и полиции США, многих военизированных и правохранительных формирований во всём мире. Столь же попул&#255;рна и у представителей преступного мира благодар&#255; мощному патрону и большой ёмкости магазина."
	eng_desc = "Beretta M9 pistols enjoy the reputation of a relatively reliable, albeit somewhat cumbersome weapon, around the world. In service with armed forces and police across the ocean, as well as various military and law enforcement organizations worldwide. The pistol is equally popular with members of the underworld, thanks to its powerful round and magazine capacity. Berettas found in the Zone are usually dated, probably from retired stock."
	icon_state = "marta"
	item_state = "marta"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/marta_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x19marta
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	spread = 7
	recoil = 0.25
	damagelose = 0.2
	durability = 75
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/fort12  // Фора12
	name = "Fort-12"
	desc = "Пистолет полицейского назначени&#255; украинского производства, пришедший на смену ПМм. Обладает лучшими по сравнению с последним точностью бо&#255;, эргономикой и более вместительным магазином, однако менее надёжен."
	eng_desc = "An Ukranian-made pistol predominantly used by law enforcement organizations. Provides higher accuracy, better ergonomics and has a larger magazine than the PM. These pistols make it into the Zone in large numbers thanks to the sale of defective weapons, which suffer from technical miscalculations in early design models. Despite this, the pistol is in demand among stalkers thanks to its good combat characteristics."
	icon_state = "fort12"
	fire_sound = 'stalker/sound/weapons/fort_shot.ogg'
	w_class = 2
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x18fort
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	spread = 8
	recoil = 0.25
	durability = 50
	damagelose = 0.2
	draw_sound = 'stalker/sound/weapons/draw/fort_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/fort12/unique  // Фора12 - расширенный магазин
	desc = "Экспериментальный прототип пистолета Фора. Единичный экземпл&#255;р."
	unique = 1
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x18fort_u

/obj/item/gun/ballistic/automatic/pistol/pb1s  //ПБ1С
	name = "PB1s"
	desc = "Пистолет с интегрированным глушителем, некогда использовавшийс&#255; советским спецназом. Морально устарел, но в умелых руках по-прежнему довольно эффективен."
	eng_desc = "This pistol was developed in the second half of the 20th century on the basis of the PM for use by special forces and scouting units. The front of the pistol's barrel is covered with an integrated silencer, while the bolt mechanism is short, which prevents a back-moving spring from being located inside it, and it is therefore situated in the weapon's handle. Morally obsolete, the weapon is still effective in the right hands."
	icon_state = "pb1s"
	w_class = 2
	fire_sound = 'stalker/sound/weapons/pb_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x18pm
	force = 10
	suppressed = 1
	can_suppress = 0
	can_unsuppress = 0
	spread = 10
	recoil = 0.25
	durability = 50
	damagelose = 0.2
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/usp_match  // USP Match
	name = "H&K USP Match"
	desc = "Матчева&#255; модификаци&#255; известного немецкого пистолета, калибра .45. Имеет специальную насадку, котора&#255; уменьшает подброс ствола при стрельбе за счёт своего веса. Увеличенный магазин на 15 патронов. На руко&#255;тке инициалы - L.C."
	eng_desc = "Impeccable reliability and durability combined with excellent accuracy are the main noteworthy features of this weapon. Its minor drawbacks include its considerable size, relatively high center of gravity and massive bolt, which make it difficult to conceal but do not outweigh the weapon's positive features. The weapon is especially popular with the Zone's veterans."
	icon_state = "usp-match"
	w_class = 2
	mag_type = /obj/item/ammo_box/magazine/stalker/usp45
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	spread = 8
	recoil = 0.35
	durability = 60
	damagelose = 0.25
	draw_sound = 'stalker/sound/weapons/draw/usp_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/desert  // Desert Eagle
	name = "Desert Eagle .44"
	desc = "Большой, т&#255;желый, блест&#255;щий и чертовски внушительный - разработанный в 80-е года прошлого века израильским предпри&#255;тием и попул&#255;ризированный многочисленными боевиками конца того же столети&#255;, Пустынный Орел стал своеобразной иконой мощных полуавтоматических пистолетов. Позволить себе такую красоту могут немногие, попасть из нее в кого-то в бою - еще меньшее число людей."
	eng_desc = "An extremely powerful gun, featured in many Hollywood movies and popularised by criminals. Truly a killing machine for close-range combat."
	icon_state = "desert"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/desert_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/desert
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	spread = 8
	recoil = 0.65
	durability = 50
	damagelose = 0.15
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/usp_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/revolver/anaconda
	name = "Colt Anaconda .44"
	desc = "Я знаю, о чём ты сейчас думаешь. Выстрелил он шесть раз, или только п&#255;ть? Честно говор&#255;, в этой суматохе &#255; и сам сбилс&#255; со счёта. Но начнём с того, что это Магнум 44-го калибра, самый убойный револьвер на свете, и он может подчистую снести тебе башку. Теперь ты задаёшь себе один вопрос: Повезёт ли мне? Ну, повезёт ли, подонок?"
	eng_desc = "A very popular amongst western cops weapon, reliable, powerful and precise. Did he shoot six times, or only five?"
	icon_state = "anaconda"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/desert_shot.ogg'
	fire_delay = 1.5
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/anaconda
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	spread = 6
	recoil = 1
	durability = 500
	damagelose = 0.1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/usp_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/obrez_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/obrez_open.ogg'


///////////////////////////// Автоматы, ПП //////////////////////////////////////////

/obj/item/gun/ballistic
	var/image/mag_overlay 			= null
	var/image/mag_overlay_inhands 	= null
	var/image/silencer_overlay 		= null
	var/image/scope_overlay 		= null
	var/image/colored_overlay 		= null
	var/colored 					= null

/obj/item/gun/ballistic/New()
	..()
	if(!istype(src, /obj/item/gun/ballistic/automatic/pistol))
		mag_overlay = image('stalker/icons/projectile_overlays32x32.dmi', "[initial(icon_state)]-mag", layer = FLOAT_LAYER)

	if(can_suppress)
		silencer_overlay = image('stalker/icons/projectile_overlays48x48.dmi', "[initial(icon_state)]-silencer", layer = FLOAT_LAYER)

	if(can_scope)
		scope_overlay = image('stalker/icons/projectile_overlays32x32.dmi', "[initial(icon_state)]-scope", layer = FLOAT_LAYER)

	if(colored)
		colored_overlay = image('stalker/icons/projectile_overlays32x32.dmi', "[initial(icon_state)]-[colored]", layer = FLOAT_LAYER)
		overlays += colored_overlay

	update_icon()

/obj/item/gun/ballistic/update_icon()
	..()
	//overlays.Cut()

	if(colored)
		overlays += colored_overlay

	if(magazine && mag_overlay)
		overlays += mag_overlay

	if(suppressed && silencer_overlay)
		overlays += silencer_overlay

	if(zoomable && scope_overlay)
		overlays += scope_overlay

	if(unique)
		overlays += image('stalker/icons/projectile_overlays32x32.dmi', "unique", layer = FLOAT_LAYER)

	if(istype(src, /obj/item/gun/ballistic/automatic/pistol))
		icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"
	else
		item_state = "[initial(item_state)][magazine ? "" : "-e"]"	//Пока не разберусь с оверлеями на мобах, будет так

	return
/*
/obj/item/gun/ballistic/automatic/worn_overlays(var/isinhands = TRUE)
	. = list()
	if(!isinhands)
		if(magazine )
			overlays += mag_overlay

		if(suppressed )
			overlays += silencer_overlay
        . += image(icon = 'icons/effects/effects.dmi', icon_state = "[shield_state]")
*/

/obj/item/gun/ballistic/automatic
	modifications = list("barrel_automatic" = 0, "frame_automatic" = 0, "grip_automatic" = 0, "compensator_automatic" = 0)

/obj/item/gun/ballistic/automatic/ak74  // AK-74
	name = "AK 74"
	desc = "Автомат образца 1974 года под патрон 5,45x39мм. Представл&#255;ет собой простое и надёжное оружие, хот&#255; дешевизна в производстве несколько сказалась на удобстве использовани&#255; и точности бо&#255;. В Зоне это основное оружие военных сталкеров и многих одиночек."
	eng_desc = "This weapon, designed in 1974, signaled the adoption of small caliber and low impulse rounds by Warsaw Pact countries. A descendant of the most popular assault rifle in the world, the AK-74 has an even bigger muzzle brake, resulting in a reduction of what was already manageable recoil. This facilitates better accuracy and groupings, especially when fired in fast single shots or bursts. As before, the rifle is very simple and reliable."
	icon_state = "ak74"
	item_state = "ak74"
	colored = 0//"normal"
	slot_flags = ITEM_SLOT_BACK//|SLOT_BELT
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m545
	fire_sound = 'stalker/sound/weapons/ak74_shot.ogg'
	can_suppress = 1
	can_unsuppress = 1
	burst_size = 3
	fire_delay = 1.6
	pin = /obj/item/firing_pin
	durability = 120
	w_class = 4
	spread = 6
	recoil = 0.5
	randomspread = 0
	damagelose = 0.25
	can_scope = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/ak74_draw.ogg'

/obj/item/gun/ballistic/automatic/aksu74  // АКС74У
	name = "AK 74S"
	desc = "По своим габаритам и массе АК-74У (укороченный) близок к пистолетам-пулемётам, однако он &#255;вл&#255;етс&#255; представителем автоматов. Достоинства: малые габариты и довольно высока&#255; пробивающа&#255; способность. Главные недостатки - мала&#255; прицельна&#255; дальность и склонность к быстрому перегреву при стрельбе очеред&#255;ми."
	eng_desc = "Despite being similar to submachineguns in size, weight and tactical purpose, this weapon is classified as an assault rifle due to the fact that its internal mechanism is identical to that of the AK-74. The weapon is notable for its mobility in close quarters and high armor-penetration capacity, while its drawbacks are its short effective range, despite the relatively long bullet range, a tendency to overheat and high ricochet propensity."
	icon_state = "aksu74"
	item_state = "aksu74"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m545
	fire_sound = 'stalker/sound/weapons/ak74u_shot.ogg'
	can_suppress = 1
	burst_size = 3
	fire_delay = 1.5
	pin = /obj/item/firing_pin
	durability = 100
	w_class = 4
	spread = 9
	recoil = 0.7
	damagelose = 0.5
	can_scope = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/ak74u_draw.ogg'

/*
/obj/item/gun/ballistic/automatic/aksu74/black  // АКС74У - черный цвет
	colored = "black"
	item_state = "aksu74-black"
	mag_type = /obj/item/ammo_box/magazine/stalker/m545
*/

/obj/item/gun/ballistic/automatic/mp5  // MP5
	name = "MP-5"
	desc = "Одно из самых лучших в классе пистолетов-пулемётов оружие. В течении последних дес&#255;тилетий XX века был прин&#255;т на вооружение спецподразделений армии и полиции во многих странах мира. С началом его постепенной замены более современными модел&#255;ми стал часто по&#255;вл&#255;тьс&#255; на чёрном рынке, откуда массово попал и в Зону."
	eng_desc = "This submachine gun has gained popularity around the world thanks to its reliability, ease of use and accuracy. Over the last few decades the MP5 was in service with special armed forces and police units worldwide. Not surprisingly, having flooded the global black markets, it eventually made its way to the Zone."
	icon_state = "mp5"
	item_state = "arg"
	fire_sound = 'stalker/sound/weapons/mp5_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x19mp5
	can_suppress = 1
	burst_size = 3
	fire_delay = 1.25
	slot_flags = ITEM_SLOT_BELT
	durability = 100
	w_class = 3
	spread = 7
	recoil = 0.2
	damagelose = 0.4
	can_scope = 1
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/mp5_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/mp5_open.ogg'

/obj/item/gun/ballistic/automatic/kiparis  // Кипарис
	name = "Kiparis"
	desc = "Небольшой, легкий и удобный пистолет-пулемет под маломощный калибр, разработанный по заказу Министерства Обороны СССР в 1972-ом году. Не нашел широкого распространени&#255; в армии из-за сложностей в производстве дл&#255; тех времен, но был прин&#255;т на вооружении службами МВД, ФСО, инкассаторами и некоторыми другими отечественными вооруженными группами."
	eng_desc = "A small, light submachine gun firing a low-powered bullet, was designed by USSR Defense Ministry in the year 1972. Wasn't adopted by army, but found use and popularity amongst different modern russian government military forces and police."
	icon_state = "kiparis"
	item_state = "arg"
	fire_sound = 'stalker/sound/weapons/fort_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/kiparis
	can_suppress = 1
	burst_size = 2
	fire_delay = 1
	slot_flags = ITEM_SLOT_BELT
	durability = 80
	w_class = 3
	spread = 8
	recoil = 0.15
	damagelose = 0.25
	can_scope = 0
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/mp5_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/mp5_open.ogg'

/obj/item/gun/ballistic/automatic/ppsh  // ППШ
	name = "PPSh"
	desc = "Один из самых старых отечественных дизайнов автоматического ручного оружи&#255;, пистолет-пулемет Шпагина, с гордостью прошел сквозь Великую Отечественную... чтобы в огромных количествах осесть на складах и ржаветь там более полувека. Некоторые умельцы, однако, хорошенько поработав над старым оружием, переделывают его под новый калибр и отправл&#255;ют Сидору на продажу. У вас в руках - один из таких экземпл&#255;ров."
	eng_desc = "The PPSh saw extensive combat use during World War II and the Korean War. It was one of the major infantry weapons of the Soviet Armed Forces during World War II. Around six million PPSh-41s were manufactured. In the form of the Chinese Type 50 (licensed copy), it was still being used by the Viet Cong as late as 1970. According to the 2002 edition of the Encyclopedia of Weapons of World War II the PPSh was still in use with irregular militaries."
	icon_state = "ppsh"
	item_state = "arg"
	fire_sound = 'stalker/sound/weapons/ppsh_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/ppsh
	can_suppress = 0
	burst_size = 5
	fire_delay = 1.2
	slot_flags = ITEM_SLOT_BELT
	durability = 50
	w_class = 4
	spread = 9
	recoil = 0.25
	damagelose = 0.5
	can_scope = 0
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/mp5_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/mp5_open.ogg'

/obj/item/gun/ballistic/automatic/berettam38  // Моделло 38
	name = "Beretta M38"
	desc = "Италь&#255;нский пистолет-пулемёт, впервые представленный в 1938 году и примен&#255;вшийс&#255; Италией во врем&#255; Второй мировой войны. По общему количеству произведённых образцов Beretta MAB 38 проиграла магазинной винтовке Carcano M1891, но по эффективности она считаетс&#255; лучшим стрелковым оружием Италии времён Второй мировой войны."
	eng_desc = "Modello 38, or Model 38 and its variants were a series of official submachine guns of the Royal Italian Army introduced in 1938 and used during World War II."
	icon_state = "berettam38"
	item_state = "berettam38"
	fire_sound = 'stalker/sound/weapons/berettam38_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/berettam38
	can_suppress = 0
	burst_size = 3
	fire_delay = 1.7
	slot_flags = ITEM_SLOT_BELT
	durability = 75
	w_class = 4
	spread = 6
	recoil = 0.3
	damagelose = 0.45
	can_scope = 0
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/berettam38_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/berettam38_open.ogg'

/obj/item/gun/ballistic/automatic/tpc301  // Эмка
	name = "LR-300"
	desc = "Нова&#255; ступень в развитии семейства знаменитой М-16. Благодар&#255; исключительно ровному спуску, высокой эргономике и небольшому весу данное оружие отличаетс&#255; высокой точностью бо&#255;, хот&#255; высока&#255; чувствительность к загр&#255;знению делает его малопригодным дл&#255; использовани&#255; в сложных услови&#255;х."
	eng_desc = "A new step in the development of this famous weapon family. The changes were made to the upper half of the steel construction comprising the barrel, gas tube and bolt assembly, reducing the weapon's weight, improving ergonomics and its gas system. The weapon is highly accurate, although its propensity to catch dirt makes it a poor choice for the Zone's difficult conditions."
	icon_state = "tpc301"
	item_state = "tpc301"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	fire_sound = 'stalker/sound/weapons/tpc301_shoot.ogg'
	can_suppress = 1
	burst_size = 3
	fire_delay = 1.4
	pin = /obj/item/firing_pin
	durability = 80
	w_class = 4
	spread = 4
	recoil = 0.4
	damagelose = 0.2
	can_scope = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/tpc301_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/tpc301_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/tpc301_open.ogg'

/obj/item/gun/ballistic/automatic/abakan  // Абакан
	name = "AC-96"
	desc = "Оружие элитных войск советской армии. Был разработан в качестве замены устаревшему АК-74. В «Абакане» подвижны не только внутренние механизмы, но и вс&#255; ствольна&#255; коробка вместе со стволом, что позвол&#255;ет снизить отдачу, тем самым значительно повысив точность бо&#255;."
	eng_desc = "A modern assault rifle developed as a replacement for the ageing AK-74. The main difference is its high speed 2-round burst firing mode, which allows two bullets to be fired at exactly the same spot on a target up to 100 meters away. This significantly increases the likelihood of hitting the target in comparison to the 1 round firing mode, which considerably improves kill potential, stopping power and armor piercing capability."
	icon_state = "abakan"
	item_state = "abakan"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m545
	fire_sound = 'stalker/sound/weapons/abakan_shoot.ogg'
	can_suppress = 1
	burst_size = 2
	fire_delay = 1.5
	pin = /obj/item/firing_pin
	durability = 200
	w_class = 4
	spread = 4
	recoil = 0.4
	damagelose = 0.2
	can_scope = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/abakan_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/abakan_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/abakan_open.ogg'

/obj/item/gun/ballistic/automatic/il86  // ИЛ86
	name = "L85"
	desc = "После того, как эта винтовка была заменена армией Великобритании на немецкую ГП37, она в большом количестве всплыла на чёрном рынке, а затем и в Зоне. Главным достоинством ИЛ86 &#255;вл&#255;ютс&#255; штатный 4-кратный прицел и высока&#255; точность первого выстрела. При стрельбе очеред&#255;ми точность бо&#255; резко падает, а надёжность основных механизмов винтовки недостаточно высока. Эффективна при стрельбе короткими очеред&#255;ми и одиночными."
	eng_desc = "This rifle's considerable number of drawbacks caused most of these weapons to be modernized, with the retired stock making its way to the Zone via the black market. The rifle's main advantages are its built-in 4x scope, high single-shot accuracy and reliable upgrade technology. When the weapon is fired in bursts, its accuracy decreases significantly and the rifle's basic internal mechanisms become somewhat unreliable."
	icon_state = "il86"
	item_state = "il86"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	fire_sound = 'stalker/sound/weapons/il86_shoot.ogg'
	can_suppress = 1
	zoomable = 1
	zoom_amt = 9
	zoom_out_amt = 12
	burst_size = 3
	fire_delay = 1.8
	pin = /obj/item/firing_pin
	durability = 75
	w_class = 4
	spread = 4
	recoil = 0.4
	damagelose = 0.1
	can_scope = 0
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/l85_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/groza_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/groza_open.ogg'

/obj/item/gun/ballistic/automatic/sigsg550
	name = "SIG SG 550"
	desc = "Представитель относительно нового семейства штурмовых винтовок. Благодар&#255; высокой надёжности, точности в бою и удобству в обращении, &#255;вл&#255;етс&#255; одним из лучших образцов вооружени&#255; этого класса. В Зоне встречаетс&#255; нечасто и стоит немалых денег; обычно её специально заказывают дл&#255; себ&#255; бывалые сталкеры."
	eng_desc = "A relatively new assault rifle that has quickly found admirers around the world, despite lacking a \"trendy\" design. Weapons of this series are one of the best in their class, renowned for their reliability, accuracy and ease of use. Despite being relatively difficult to obtain in the Zone, this assault rifle is often ordered by experienced stalkers at considerable expense."
	icon_state = "sigsg550"
	item_state = "sigsg550"
	slot_flags = ITEM_SLOT_BACK
	fire_sound = 'stalker/sound/weapons/sigsg550_shoot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	can_suppress = 0
	durability = 125
	burst_size = 3
	fire_delay = 1.3
	w_class = 4
	spread = 3
	recoil = 0.3
	damagelose = 0.2
	can_scope = 0
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/fnf2000_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/fnf2000_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/fnf2000_open.ogg'

/obj/item/gun/ballistic/automatic/gp37  // GP37
	name = "GP37"
	desc = "Штурмова&#255; винтовка нового поколени&#255;, производима&#255; в Германии в малых парти&#255;х дл&#255; отр&#255;дов специального назначени&#255;. Оборудована встроенным прицелом дл&#255; бо&#255; на средних дистанци&#255;х, крайне надежна и эффективна в любых услови&#255;х. Выбор многих мастеров группировок вроде Свободы и Наемников."
	eng_desc = "A new addition to the Western-made assault rifle family, which differs significantly from previous models in the series built on an automatic foundation with a semi-open bolt assembly, this weapon is more like American automatic gas-operated assault rifles with a short-stroke gas piston system. These changes ensure that the rifle is a first-rate example of a modern weapon - lightweight, reliable and ergonomic."
	icon_state = "gp37"
	item_state = "gp37"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	fire_sound = 'stalker/sound/weapons/il86_shoot.ogg'
	can_suppress = 1
	zoomable = 1
	zoom_amt = 10
	zoom_out_amt = 13
	burst_size = 3
	fire_delay = 1.25
	pin = /obj/item/firing_pin
	durability = 150
	w_class = 4
	spread = 3
	recoil = 0.35
	damagelose = 0.1
	can_scope = 0
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/l85_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/groza_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/groza_open.ogg'

/obj/item/gun/ballistic/automatic/fnf2000  // fnf2000
	name = "FN-F2000"
	desc = "ФН-Ф2000 — по-своему идеальное оружие. Возможность установки подствольного гранатомета и сложной баллистической вычислительной системы позволит быстро уложить даже псевдогиганта. При использовании автоматического огн&#255; будут очень быстро расходоватьс&#255; боеприпасы. Нар&#255;ду с ГП37 &#255;вл&#255;етс&#255; одним из лучших орудий убийства в Зоне."
	eng_desc = "This futuristic-looking weapon with a bullpup layout is actually a mass produced modular system, comprising a rifle grenade complex with a computerized fire control system and a 40-mm grenade launcher. Despite its bulky appearance, the weapon is highly ergonomic, easy to use and benefits from good technical characteristics. This one lacks a built-in computerised scope, yet itself is very precise and powerful."
	icon_state = "fnf2000"
	item_state = "fnf2000"
	slot_flags = SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	fire_sound = 'stalker/sound/weapons/fnf2000_shoot.ogg'
	can_suppress = 0
	burst_size = 3
	fire_delay = 1.4
	pin = /obj/item/firing_pin
	durability = 250
	w_class = 4
	spread = 3
	recoil = 0.35
	damagelose = 0.15
	can_scope = 0
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/fnf2000_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/fnf2000_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/fnf2000_open.ogg'

/obj/item/gun/ballistic/automatic/fnf2000s  // fnf2000
	name = "FN-F2000-OTBS"
	desc = "ФН-Ф2000 — по-своему идеальное оружие. Возможность установки подствольного гранатомета и сложной баллистической вычислительной системы позволит быстро уложить даже псевдогиганта. При использовании автоматического огн&#255; будут очень быстро расходоватьс&#255; боеприпасы. Нар&#255;ду с ГП37 &#255;вл&#255;етс&#255; одним из лучших орудий убийства в Зоне. В данную модель баллистическа&#255; система уже встроена и дает все преимущества."
	eng_desc = "This futuristic-looking weapon with a bullpup layout is actually a mass produced modular system, comprising a rifle grenade complex with a computerized fire control system and a 40-mm grenade launcher. Despite its bulky appearance, the weapon is highly ergonomic, easy to use and benefits from good technical characteristics."
	icon_state = "fnf2000s"
	item_state = "fnf2000s"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	fire_sound = 'stalker/sound/weapons/fnf2000_shoot.ogg'
	can_suppress = 0
	burst_size = 3
	fire_delay = 1.4
	zoomable = 1
	zoom_amt = 12
	zoom_out_amt = 15
	pin = /obj/item/firing_pin
	durability = 250
	w_class = 4
	spread = 1
	recoil = 0.35
	damagelose = 0.15
	can_scope = 0
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/fnf2000_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/fnf2000_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/fnf2000_open.ogg'


/obj/item/gun/ballistic/automatic/l6_saw/pkm
	name = "PKM"
	desc = "Этот монстр стрел&#255;ет винтовочными патронами с таким грохотом, что уши сворачиваютс&#255; в трубочку, и столь великим вредом всему живому и неживому, что шут&#255; можно снести очередью маленькое здание. Признак не просто успешности и достатка - но смерти. Смерти, несомой всем врагам пулеметчика."
	eng_desc = "This belt-fed machine gun is a portable modification with a complex two-stage feeding system. Despite its weight and low precision, this LMG has found admirers in the Zone. Used primarily to fight off outnumbering enemy forces during faction conflicts and clear out mutant lairs"
	icon_state = "PKMclosed200"
	item_state = "l6closedmag"
	w_class = 5
	slot_flags = ITEM_SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/stalker/pkm
	weapon_weight = WEAPON_HEAVY
	fire_sound = 'stalker/sound/weapons/pkm_shot.ogg'
	can_suppress = 0
	can_scope = 0
	burst_size = 5
	fire_delay = 1.8
	spread = 6
	recoil = 1
	damagelose = 0.25
	pin = /obj/item/firing_pin
	durability = 500

/obj/item/gun/ballistic/automatic/l6_saw/pkm/update_icon()
	icon_state = "PKM[cover_open ? "open" : "closed"][magazine ? 200 : "-empty"]"

/obj/item/gun/ballistic/automatic/l6_saw/pkm/shottie
   name = "PTV M-777"
   desc = "Личное оружие Петровича. Ху&#255;рит как залупа."
   mag_type = /obj/item/ammo_box/magazine/stalker/pkm/shottie

///////////////////////////// Снайперские винтовки //////////////////////////////////////////
/obj/item/gun/ballistic/automatic/val  // Вал
	name = "AS Val"
	desc = "Создан на базе бесшумной снайперской винтовки 'Винторез', от которой отличаетс&#255; складным прикладом и укороченным стволом. Изначально предназначалс&#255; дл&#255; применени&#255; спецподразделени&#255;ми в услови&#255;х атаки, требующей бесшумной и беспламенной стрельбы."
	eng_desc = "A modified version of the silent Vintorez sniper rifle, the assault rifle was designed as a special forces weapon. The rifle's primary purpose is effective fire against enemies employing modern personal protection equipment without disclosing the shooter's location. Thanks to its integrated silencer and 9x39mm caliber round with a heavy subsonic bullet, the weapon's noise and muzzle flash have been reduced to a minimum."
	icon_state = "val"
	item_state = "val"
	fire_sound = 'stalker/sound/weapons/vintorez_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sp9x39val
	suppressed = 1
	can_suppress = 0
	can_unsuppress = 0
	durability = 150
	slot_flags = ITEM_SLOT_BACK
	force = 15
	burst_size = 3
	fire_delay = 1.2
	pin = /obj/item/firing_pin
	w_class = 4
	spread = 3
	recoil = 0.3
	damagelose = 0.1
	can_scope = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/val_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/val_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/val_open.ogg'

/obj/item/gun/ballistic/automatic/vintorez  // ВСС Винторез
	name = "VSS Vintorez"
	desc = "Винтовка специальна&#255; снайперска&#255; 'Винторез'. Предназначена дл&#255; бесшумной и беспламенной снайперской стрельбы и снабжена интегрированным глушителем. С рассто&#255;ни&#255; 400 метров пробивает большинство бронежилетов. Очень ценимое сталкерами любого уровн&#255; оружие."
	eng_desc = "A special military sniper rifle purpose-built for silent, flashless sniping during special operations where early detection of the shooter may be critical. The Vintorez provides high armor-piercing capability and stopping power, as well as being equipped with an integrated sniper and optical scope. Highly rated by many stalkers despite its small magazine."
	icon_state = "vintorez"
	item_state = "vintorez"
	fire_sound = 'stalker/sound/weapons/vintorez_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sp9x39vint
	suppressed = 1
	can_suppress = 0
	can_unsuppress = 0
	zoomable = 1
	zoom_amt = 7
	zoom_out_amt = 10
	burst_size = 3
	fire_delay = 1.2
	durability = 150
	slot_flags = ITEM_SLOT_BACK
	force = 15
	pin = /obj/item/firing_pin
	w_class = 4
	spread = 2
	recoil = 0.3
	damagelose = 0
	can_scope = 0
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/val_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/val_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/val_open.ogg'

/obj/item/gun/ballistic/automatic/groza  // ОЦ-14 Гроза
	name = "Groza OTs-14"
	desc = "Автоматно-гранатомётный комплекс - очень удачный в услови&#255;х Зоны вариант штурмовой винтовки: компактный, надёжный, и в то же врем&#255; универсальный и мощный. 'Грозу' очень люб&#255;т военные сталкеры."
	eng_desc = "This assault rifle combined with a grenade launcher, which is similar to the AKM series, was specifically developed for rapid response units. The main differences are its 9x39mm caliber ammunition, bullpup layout and extensive configuration options. This weapon is highly valued by military stalkers due to its ability to kill enemies wearing body armor behind improvised cover at a distance during urban combat."
	icon_state = "groza"
	item_state = "groza"
	fire_sound = 'stalker/sound/weapons/groza_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sp9x39groza
	can_suppress = 0
	durability = 125
	slot_flags = ITEM_SLOT_BACK
	fire_delay = 1
	force = 15
	burst_size = 3
	pin = /obj/item/firing_pin
	w_class = 4
	spread = 5
	recoil = 0.4
	damagelose = 0.35
	can_scope = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/groza_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/groza_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/groza_open.ogg'

///////////////////////////// Прочие винтовки //////////////////////////////////////////

/obj/item/gun/ballistic/automatic/gauss  // Гаусс-винтовка
	name = "gauss rifle"
	desc = "Сверхточное высокотехнологичное оружие, известное как «изделие № 62», было разработано конструкторами секретных лабораторий внутри Зоны. Принцип его действия основан на разгоне пули системой электромагнитов; пуля при этом способна развивать сверхскорости, что обеспечивает колоссальную пробивную способность при почти полном отсутствии отдачи. Для обеспечения достаточной энергоёмкости аккумуляторов в последних используются частицы определённых артефактов."
	icon_state = "gauss"
	item_state = "gauss"
	fire_sound = 'stalker/sound/weapons/gauss_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/gauss
	suppressed = 1
	can_suppress = 0
	can_unsuppress = 0
	zoomable = 1
	zoom_amt = 7
	zoom_out_amt = 10
	burst_size = 1
	fire_delay = 3
	durability = 150
	slot_flags = ITEM_SLOT_BACK
	force = 15
	pin = /obj/item/firing_pin
	w_class = 4
	spread = 1
	recoil = 1
	damagelose = 0.90
	can_scope = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/generic_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/gauss_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/abakan_open.ogg'