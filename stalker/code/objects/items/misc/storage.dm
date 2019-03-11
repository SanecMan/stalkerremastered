/obj/item/storage/wallet/stalker

/obj/item/storage/wallet/stalker/New()
	..()
	var/item1_type = pick(/obj/item/stack/spacecash/c100,/obj/item/stack/spacecash/c50)
	var/item2_type
	if(prob(50))
		item2_type = pick(/obj/item/stack/spacecash/c100,/obj/item/stack/spacecash/c50)

	spawn(2)
		if(item1_type)
			new item1_type(src)
		if(item2_type)
			new item2_type(src)

/obj/item/storage/backpack/stalker
	name = "backpack"
	desc = "You wear this on your back and put items into it."
	icon_state = "backpack-tourist"
	item_state = "backpack-tourist"
	w_class = WEIGHT_CLASS_HUGE
	slot_flags = ITEM_SLOT_BACK

/obj/item/storage/backpack/stalker/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 30
	STR.max_w_class = WEIGHT_CLASS_BULKY
	STR.max_items = 21
	STR.display_numerical_stacking = TRUE

/obj/item/storage/backpack/stalker/civilian
	name = "civilian backpack"
	icon_state = "backpack-civilian"
	item_state = "backpack-civilian"

/obj/item/storage/backpack/stalker/civilian/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 20
	STR.max_w_class = WEIGHT_CLASS_NORMAL

/obj/item/storage/backpack/stalker/tourist
	name = "tourist backpack"
	icon_state = "backpack-tourist"
	item_state = "backpack-tourist"

/obj/item/storage/backpack/stalker/tourist/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 35
	STR.max_w_class = WEIGHT_CLASS_BULKY

/obj/item/storage/backpack/stalker/professional
	name = "professional backpack"
	icon_state = "backpack-professional"
	item_state = "backpack-professional"

/obj/item/storage/backpack/stalker/professional/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 55
	STR.max_w_class = WEIGHT_CLASS_BULKY

/obj/item/storage/backpack/satchel/stalker
	name = "satchel"
	icon_state = "satchel"
	item_state = "satchel"
	w_class = WEIGHT_CLASS_HUGE
	slot_flags = ITEM_SLOT_BACK

/obj/item/storage/backpack/satchel/stalker/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 30
	STR.max_w_class = WEIGHT_CLASS_BULKY
	STR.max_items = 21
	STR.display_numerical_stacking = TRUE

/obj/item/storage/backpack/satchel/stalker/civilian
	name = "civilian satchel"
	icon_state = "satchel-civilian"
	item_state = "satchel-civilian"

/obj/item/storage/backpack/satchel/stalker/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 20
	STR.max_w_class = WEIGHT_CLASS_NORMAL

/*
/obj/item/storage/backpack/stalker/attackby(obj/item/W, mob/user, params)
	playsound(src.loc, "sound/stalker/objects/inv_open.ogg", 50, 1, -5)
	..()
*/
//Some suit internal slots

/obj/item/storage/internal_slot
	name = "internal slot"
	desc = "You shouldn't see this."
	w_class = WEIGHT_CLASS_BULKY
	takeout_speed = 0
	touch_sound = 'stalker/sound/objects/internal_slot_toggle.ogg'
	insert_sound = null

/obj/item/storage/internal_slot/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 2
	STR.max_w_class = WEIGHT_CLASS_SMALL
	STR.max_items = 1

/obj/item/storage/internal_slot/attack_hand(mob/user)
	playsound(loc, touch_sound, 50, 1, -5)

	SEND_SIGNAL(user, COMSIG_TRY_STORAGE_SHOW, TRUE)

/obj/item/storage/internal_slot/MouseDrop(atom/over_object)
	if(iscarbon(usr) || isdrone(usr)) //all the check for item manipulation are in other places, you can safely open any storages as anything and its not buggy, i checked
		var/mob/M = usr

		if(!over_object)
			return

		if (istype(usr.loc,/obj/mecha)) // stops inventory actions in a mech
			return

		if(over_object == M && Adjacent(M)) // this must come before the screen objects only block
			SEND_SIGNAL(M, COMSIG_TRY_STORAGE_SHOW, TRUE)
			return

		if(!M.restrained() && !M.stat)
			if(!istype(over_object, /obj/screen))
				return

			if(loc != usr || (loc && loc.loc == usr))
				return

			playsound(loc, touch_sound, 50, 1, -5)
			add_fingerprint(usr)


//Artifact container//

/obj/item/storage/internal_slot/container
	name = "mounted artifact container"

/obj/item/storage/internal_slot/container/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 1
	STR.can_hold = typecacheof(list(/obj/item/artifact))

/obj/item/storage/internal_slot/container/advanced
	name = "mounted advanced artifact container"

/obj/item/storage/internal_slot/container/advanced/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 4
	STR.max_items = 2

/obj/item/storage/internal_slot/container/modern
	name = "mounted modern artifact container"
	radiation_protection = 1

/obj/item/storage/internal_slot/container/modern/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 4
	STR.max_items = 2

//Item slots//

/obj/item/storage/internal_slot/webbing
	name = "mounted webbing"

/obj/item/storage/internal_slot/webbing/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 4
	STR.max_items = 2

/obj/item/storage/internal_slot/webbing/advanced
	name = "mounted advanced webbing"

/obj/item/storage/internal_slot/webbing/advanced/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 6
	STR.max_items = 3

/obj/item/storage/internal_slot/webbing/modern
	name = "mounted modern webbing"

/obj/item/storage/internal_slot/webbing/modern/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_w_class = WEIGHT_CLASS_NORMAL
	STR.max_combined_w_class = 6
	STR.max_items = 4

//Gun slot//

/obj/item/storage/internal_slot/gun_case
	name = "mounted gun case"

/obj/item/storage/internal_slot/webbing/modern/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_w_class = WEIGHT_CLASS_GIGANTIC
	STR.max_combined_w_class = 6
	STR.max_items = 1
	STR.can_hold = typecacheof(list(/obj/item/gun))