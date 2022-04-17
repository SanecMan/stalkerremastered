/obj/item/attachment
	icon = 'stalker/icons/weapon_mods.dmi'
	var/list/types = list()
	w_class = 2

/obj/item/attachment/suppressor
	name = "suppressor"
	desc = "A universal suppressor."
	icon = 'icons/obj/guns/projectile.dmi'
	icon_state = "suppressor"
	types = list(/obj/item/gun/ballistic/automatic/pistol/pm,
				/obj/item/gun/ballistic/automatic/pistol/fort12,
				/obj/item/gun/ballistic/automatic/pistol/marta,
				/obj/item/gun/ballistic/automatic/pistol/sip,
				/obj/item/gun/ballistic/automatic/pistol/cora,
				/obj/item/gun/ballistic/automatic/pistol/usp_match,
				/obj/item/gun/ballistic/automatic/mp5,
				/obj/item/gun/ballistic/automatic/groza,
				/obj/item/gun/ballistic/automatic/ak74,
				/obj/item/gun/ballistic/automatic/aksu74,
				/obj/item/gun/ballistic/automatic/abakan,
				/obj/item/gun/ballistic/automatic/tpc301,
				/obj/item/gun/ballistic/automatic/kiparis)
	var/oldsound = null
	var/initial_w_class = null

/obj/item/attachment/scope
	name = "scope"
	desc = "A universal scope."
	icon = 'stalker/icons/weapon_mods.dmi'
	icon_state = "susat"
	var/zoom_add = 2

/obj/item/attachment/scope/SUSAT
	name = "SUSAT"
	desc = "Оптический прицел фиксированной кратности (4 диоптрии). Чаще всего используетс&#255; дл&#255; ведени&#255; прицельного огн&#255; из лёгкого стрелкового оружи&#255; на средние и большие дистанции. Устанавливаетс&#255; на планку Пикатинни."
	eng_desc = "A 4x fixed zoom scope produced primarily in Western countries. Attached to weapons by means of the NATO-standard Picatinny rail. Often used for accurate fire from small arms at medium to long range."
	icon = 'stalker/icons/weapon_mods.dmi'
	icon_state = "susat"
	types = list(/obj/item/gun/ballistic/automatic/tpc301,
				/obj/item/gun/ballistic/automatic/mp5,
				/obj/item/gun/ballistic/automatic/sigsg550)
	zoom_add = 4

/obj/item/attachment/scope/PS
	types = list(/obj/item/gun/ballistic/automatic/aksu74,
				 /obj/item/gun/ballistic/automatic/ak74,
				 /obj/item/gun/ballistic/automatic/abakan,
				 /obj/item/gun/ballistic/automatic/val,
				 /obj/item/gun/ballistic/automatic/groza)
	zoom_add = 2

/obj/item/attachment/scope/PS/U1
	name = "PSU-1"
	desc = "Оптический прицел фиксированной кратности (2,7 диоптрии). Оптимизирован дл&#255; бо&#255; на средних дистанци&#255;х, а также дл&#255; использовани&#255; в услови&#255;х городской застройки. Дл&#255; установки на оружие используетс&#255; стандартное в странах Варшавского договора крепление типа «ласточкин хвост»."
	icon_state = "PSU1"
	types = list(/obj/item/gun/ballistic/automatic/aksu74,
				/obj/item/gun/ballistic/automatic/ak74,
				/obj/item/gun/ballistic/automatic/abakan,
				/obj/item/gun/ballistic/automatic/val,
				/obj/item/gun/ballistic/automatic/groza)
	zoom_add = 3

/obj/item/attachment/scope/PS/O1
	name = "PSO-1"
	desc = "Широко распространённый оптический прицел советского производства фиксированной кратности (5). Оснащён шкалой дл&#255; определени&#255; дальности до цели. Дл&#255; установки на оружие используетс&#255; стандартное в странах Варшавского договора крепление типа «ласточкин хвост»."
	icon_state = "PSO1"
	types = list(/obj/item/gun/ballistic/automatic/aksu74,
				 /obj/item/gun/ballistic/automatic/ak74,
				 /obj/item/gun/ballistic/automatic/abakan,
				 /obj/item/gun/ballistic/automatic/val,
				 /obj/item/gun/ballistic/automatic/groza)
	zoom_add = 5

/obj/item/attachment/scope/rifle
	name = "rifle scope"
	desc = "WWII rifle scope"
	icon_state = "rifle"
	types = list(/obj/item/gun/ballistic/shotgun/boltaction/enfield,
				/obj/item/gun/ballistic/shotgun/bm16,
				/obj/item/gun/ballistic/shotgun/bm16/toz34)
	zoom_add = 6

/obj/item/attachment/scope/fnf2000
	name = "FN-F2000 scope"
	desc = "Прицел дл&#255; винтовки FN-F2000."
	icon_state = "fnf2000-scope"
	types = list(/obj/item/gun/ballistic/automatic/fnf2000)

/obj/item/attachment/grenadelauncher
	name = "grenade launcher"
	desc = "Подствольный гранатомёт."
	icon_state = ""
	types = list()

/obj/item/attachment/grenadelauncher/fnf2000
	name = "fn-f2000 grenade launcher"
	desc = "Подствольный гранатомёт для fn-f2000"
	icon_state = "fnf2000-gl"