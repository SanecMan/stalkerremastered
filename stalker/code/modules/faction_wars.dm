GLOBAL_LIST_EMPTY(cps)

/obj/machinery/stalker/sidorpoint
	name = "SIDORPOINT - null"
	desc = "Контрольная точка."
	eng_desc = "Control point."
	icon = 'stalker/icons/device_new.dmi'
	icon_state = "radio_free"
	density = 1
	anchored = 1

	var/controlled_by		= null
	var/capturing_faction	= null
	var/capturing_faction_ru	= null

	var/control_percent		= 0

	var/all_capture = 1

	var/unlocked_weapons	= null
//	var/respawn_income		= 0 //каждые 30 минут
//	var/last_respawn_income	= 0

	var/path_ending = null
	var/area/outdoor_area = null
	var/area/buildings_area = null
	var/area/noblowout_area = null
	var/obj/machinery/stalker/sidormat/special/connected_sidormat = null

/obj/machinery/stalker/sidorpoint/New()
	..()
	name = "SIDORPOINT ([get_area(src).name])"
	GLOB.cps += src
	outdoor_area = locate(text2path("/area/stalker/blowout/outdoor/backwater/[path_ending]"))
	buildings_area = locate(text2path("/area/stalker/blowout/buildings/backwater/[path_ending]"))
	noblowout_area = locate(text2path("/area/stalker/buildings/backwater/[path_ending]"))
	update_desc()

	if(!connected_sidormat)
		connected_sidormat = locate(/obj/machinery/stalker/sidormat/special) in noblowout_area
		if(!connected_sidormat)
			connected_sidormat = locate(/obj/machinery/stalker/sidormat/special) in buildings_area
		else if(!connected_sidormat)
			connected_sidormat = locate(/obj/machinery/stalker/sidormat/special) in outdoor_area

	if(connected_sidormat)
		connected_sidormat.GetSidorPoint(src)

/obj/machinery/stalker/sidorpoint/proc/update_desc()
	if(controlled_by)

		desc = "Точка находится под контролем группировки [get_rus_faction(controlled_by)] на [control_percent]%"
		eng_desc = "Point is under [controlled_by] control by [control_percent]%"

	else if(control_percent)

		desc = "Точка находится под контролем группировки [get_rus_faction(capturing_faction)] на [control_percent]%"
		eng_desc = "Point is under [capturing_faction] control by [control_percent]%"

	else

		desc = "Точка свободна для захвата"
		eng_desc = "This point can be captured."

/obj/machinery/stalker/sidorpoint/proc/update_icon_percent()
	switch(control_percent)
		if(100)
			icon_state = "radio_captured"
		if(80 to 99)
			icon_state = "radio_in_progress_80"
		if(60 to 80)
			icon_state = "radio_in_progress_60"
		if(40 to 60)
			icon_state = "radio_in_progress_40"
		if(20 to 40)
			icon_state = "radio_in_progress_20"
		if(1 to 20)
			icon_state = "radio_in_progress_0"
		if(0)
			icon_state = "radio_free"

/obj/machinery/stalker/sidorpoint/proc/check_invader()
	if(!capturing_faction)
		return 1

	for(var/mob/living/carbon/human/H in range(5, src))
		var/datum/data/record/sk = find_record("sid", H.sid, GLOB.data_core.stalkers)
		if(sk && sk.fields["faction_s"] == capturing_faction)
			return 1

	return 0

/obj/machinery/stalker/sidorpoint/attack_hand(mob/user)
	if(..())
		return

	/*if(!blowout_count)
		say("Psy emission damaged relay. Come after next blowout.")
		return*/

	if(!istype(user,/mob/living/carbon/human))
		say("Ты че ебу дал?")
		return

	var/mob/living/carbon/human/H = user

	if(!istype(H.wear_id, /obj/item/stalker_pda))
		say("Активируй КПК.")
		return

	var/datum/data/record/sk = find_record("sid", H.sid, GLOB.data_core.stalkers)
	var/obj/item/stalker_pda/KPK = H.wear_id

	if(!sk || !KPK.owner)
		say("Активируй профиль КПК.")
		return

	if(KPK.owner != H)
		say("Нет доступа.")
		return

	if(sk.fields["faction_s"] == "Loners" || sk.fields["faction_s"] == "Bandits" && all_capture == 1)
		say("Нет доступа: ты не во фракции")
		return

	if(sk.fields["faction_s"] == "Army" || sk.fields["faction_s"] == "Scientist" && all_capture == 1)
		say("Нет доступа: твоя фракция не позволяет.")
		return

	if(control_percent == 100 && controlled_by == sk.fields["faction_s"])
		say("[get_area(src).name]: уже захвачено!")
		return

	if(capturing_faction && capturing_faction == sk.fields["faction_s"])
		say("[get_area(src).name]: захват начат!")
		return

	if(!do_after(user, 10, 1, src))
		return

	capturing_faction = sk.fields["faction_s"]
	capturing_faction_ru = sk.fields["faction_s_ru"]
	add_lenta_message(null, "0", "Sidorovich", "Loners", "[capturing_faction_ru] начинают захват [get_area(src).name].")
	say("[capturing_faction_ru] начинает захват [get_area(src).name]!")

	return

/obj/machinery/stalker/sidorpoint/process()
	if(!connected_sidormat)
		connected_sidormat = locate(/obj/machinery/stalker/sidormat/special) in noblowout_area
		if(!connected_sidormat)
			connected_sidormat = locate(/obj/machinery/stalker/sidormat/special) in buildings_area
		else if(!connected_sidormat)
			connected_sidormat = locate(/obj/machinery/stalker/sidormat/special) in outdoor_area
	else
		connected_sidormat.GetSidorPoint(src)

	if(noblowout_area && buildings_area && outdoor_area)
		if(noblowout_area.controlled_by != controlled_by)
			noblowout_area.controlled_by = controlled_by

		if(buildings_area.controlled_by != controlled_by)
			buildings_area.controlled_by = controlled_by

		if(outdoor_area.controlled_by != controlled_by)
			outdoor_area.controlled_by = controlled_by

	update_desc()
	update_icon_percent()

	//if(controlled_by && last_respawn_income)

	if(!check_invader())
		capturing_faction = null
		return

	if(capturing_faction && !controlled_by)
		controlled_by = capturing_faction
		controlled_by_ru = capturing_faction_ru

	if((controlled_by == capturing_faction) && capturing_faction != null)

		control_percent += 2

		if(control_percent >= 100)

			control_percent = 100
			add_lenta_message(null, "0", "Sidorovich", "Loners", "[controlled_by_ru] захватила [get_area(src).name].")
			say("[controlled_by_ru] захватила [get_area(src).name]!")
			capturing_faction = null

		return

	if(control_percent in 1 to 100)
		//if(control_percent >= 50)

		//	control_percent = min(100, control_percent + 2)

		//else

		if(capturing_faction)
			control_percent -= 2
			if(control_percent <= 0)

				control_percent = 0
				add_lenta_message(null, "0", "Sidorovich", "Loners", "[controlled_by] lost control of [get_area(src).name].")
				say("[controlled_by] lost control of [get_area(src).name]!")
				controlled_by = capturing_faction

/obj/machinery/stalker/sidorpoint/ex_act(severity, target)
	return

/obj/machinery/stalker/sidorpoint/proc/SendJobTotalPositions()
	if(control_percent < 100)
		return

	for(var/datum/job/J in SSjob.occupations)
		if(controlled_by == J.faction_s)
			J.total_positions += 3

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/obj/machinery/stalker/sidormat/special
	desc = "An equipment vendor for experienced stalkers."
	switches = SHOW_FACTION_EQUIPMENT
	var/obj/machinery/stalker/sidorpoint/SP = null

/obj/machinery/stalker/sidormat/special/proc/GetSidorPoint(var/obj/machinery/stalker/sidorpoint/SP_)
	SP = SP_
	path_ending = SP_.path_ending

/obj/machinery/stalker/sidormat/special/ui_interact(mob/living/carbon/human/H)
	if(!SP)
		return

	if(!istype(H.wear_id, /obj/item/stalker_pda))
		say("Put on your KPK.")
		return

	var/datum/data/record/sk = find_record("sid", H.sid, GLOB.data_core.stalkers)
	var/obj/item/stalker_pda/KPK = H.wear_id

	if(!sk || !KPK.owner)
		say("Активируй КПК.")
		return

	if(KPK.owner != H)
		say("Нет доступа: не твой КПК.")
		return

	if(!SP.controlled_by || SP.control_percent < 100)
		say("Нет доступа: Точка захвачена на [control_percent] из 100 процентов.")
		return

	if(SP.controlled_by != sk.fields["faction_s"])
		say("Нет доступа: не твоя фракция.")
		return

	..()

/obj/effect/forcefield/lazyvip
	name = "VIP room"
	desc = "Достойное место для достойных людей."
	icon = 'icons/obj/watercloset.dmi'
	icon_state = "closed"
	timeleft = 0
	density = 1
	var/static/list/vip_users = list()

/obj/effect/forcefield/lazyvip/CanPass(atom/movable/mover, turf/target)
	if(mover in vip_users)
		return TRUE

	if(!isliving(mover)) //No stowaways
		return FALSE

	return FALSE

/obj/effect/forcefield/lazyvip/Bumped(atom/movable/AM)
	if(!isliving(AM))
		return ..()
