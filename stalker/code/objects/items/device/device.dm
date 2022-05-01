//Интерактивные штуки

/obj/item/radio/intercom/domofon
	name = "Domofon"
	desc = "Таким обычно пользуются для связи на небольшие расстояния."
	icon_state = "intercom_stalker"
	canhear_range = 7
	freqlock = TRUE
	frequency = FREQ_STALKER

/obj/item/radio/intercom/domofon/attackby(obj/item/I, mob/living/user, params)
	if(I.tool_behaviour == TOOL_SCREWDRIVER)
		return //no unfastening!
	. = ..()
