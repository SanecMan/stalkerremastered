/proc/ui_hand_position(i) //values based on old hand ui positions (CENTER:-/+16,SOUTH:5)
	if (i == 1)
		return"WEST-1,NORTH-4"
	else
		return"WEST-3,NORTH-4"

/proc/ui_equip_position(mob/M)
	var/y_off = round((M.held_items.len-1) / 2) //values based on old equip ui position (CENTER: +/-16,SOUTH+1:5)
	return "CENTER:-16,SOUTH+[y_off+1]:5"

/proc/ui_swaphand_position(mob/M, which = 1) //values based on old swaphand ui positions (CENTER: +/-16,SOUTH+1:5)
	return"WEST-2,NORTH-5:20"

#define ui_storage1 "WEST-3,NORTH-7:18"
#define ui_storage2 "WEST-1,NORTH-7:18"

#define ui_borg_sensor "CENTER-3:16, SOUTH:5"		//borgs
#define ui_borg_lamp "CENTER-4:16, SOUTH:5"			//borgs
#define ui_borg_thrusters "CENTER-5:16, SOUTH:5"	//borgs
#define ui_inv1 "CENTER-2:16,SOUTH:5"				//borgs
#define ui_inv2 "CENTER-1  :16,SOUTH:5"				//borgs
#define ui_inv3 "CENTER  :16,SOUTH:5"				//borgs
#define ui_borg_module "CENTER+1:16,SOUTH:5"		//borgs
#define ui_borg_store "CENTER+2:16,SOUTH:5"			//borgs
#define ui_borg_camera "CENTER+3:21,SOUTH:5"		//borgs
#define ui_borg_album "CENTER+4:21,SOUTH:5"			//borgs
#define ui_borg_language_menu "CENTER+4:21,SOUTH+1:5"	//borgs

#define ui_monkey_head "CENTER-5:13,SOUTH:5"	//monkey
#define ui_monkey_mask "CENTER-4:14,SOUTH:5"	//monkey
#define ui_monkey_neck "CENTER-3:15,SOUTH:5"	//monkey
#define ui_monkey_back "CENTER-2:16,SOUTH:5"	//monkey

//#define ui_alien_storage_l "CENTER-2:14,SOUTH:5"//alien
#define ui_alien_storage_r "CENTER+1:18,SOUTH:5"//alien
#define ui_alien_language_menu "EAST-3:26,SOUTH:5" //alien

#define ui_drone_drop "CENTER+1:18,SOUTH:5"     //maintenance drones
#define ui_drone_pull "CENTER+2:2,SOUTH:5"      //maintenance drones
#define ui_drone_storage "CENTER-2:14,SOUTH:5"  //maintenance drones
#define ui_drone_head "CENTER-3:14,SOUTH:5"     //maintenance drones

//Lower right, persistent menu
#define ui_drop_throw "WEST-1,NORTH-9:18"
#define ui_above_movement "EAST+1,SOUTH+2:16" //rest
#define ui_above_intent "EAST+1,SOUTH+2" //resist
#define ui_pull_intent "WEST-1,SOUTH+4:18"
#define ui_movi "EAST+1,SOUTH+1"
#define ui_acti "WEST-2,NORTH-9:18"
#define ui_zonesel "EAST+1,SOUTH"
#define ui_acti_alt "EAST-1:28,SOUTH:5"	//alternative intent switcher for when the interface is hidden (F12)
#define ui_crafting	"EAST+1,CENTER"
#define ui_building "EAST-4:22,SOUTH:21"
#define ui_language_menu "EAST-4:6,SOUTH:21"

#define ui_borg_pull "EAST-2:26,SOUTH+1:7"
#define ui_borg_radio "EAST-1:28,SOUTH+1:7"
#define ui_borg_intents "EAST-2:26,SOUTH:5"


//Upper-middle right (alerts)
#define ui_alert1 "EAST-1:28,CENTER+5:27"
#define ui_alert2 "EAST-1:28,CENTER+4:25"
#define ui_alert3 "EAST-1:28,CENTER+3:23"
#define ui_alert4 "EAST-1:28,CENTER+2:21"
#define ui_alert5 "EAST-1:28,CENTER+1:19"


//Middle right (status indicators)
#define ui_healthdoll "EAST+1,BOTTOM+6"
#define ui_health "EAST+1:1,BOTTOM+3:1"
#define ui_health_rad "EAST+1:12,BOTTOM+3:1"
#define ui_health_stamina "EAST+1:22,BOTTOM+3:1"
#define ui_internal "EAST-1:28,CENTER:17"
#define ui_mood "EAST-1:28,CENTER-3:10"

//borgs
#define ui_borg_health "EAST-1:28,CENTER-1:15"		//borgs have the health display where humans have the pressure damage indicator.

//aliens
#define ui_alien_health "EAST,CENTER-1:15"	//aliens have the health display where humans have the pressure damage indicator.
#define ui_alienplasmadisplay "EAST,CENTER-2:15"
#define ui_alien_queen_finder "EAST,CENTER-3:15"

//constructs
#define ui_construct_pull "EAST,CENTER-2:15"
#define ui_construct_health "EAST,CENTER:15"  //same as borgs and humans

// AI

#define ui_ai_core "SOUTH:6,WEST"
#define ui_ai_camera_list "SOUTH:6,WEST+1"
#define ui_ai_track_with_camera "SOUTH:6,WEST+2"
#define ui_ai_camera_light "SOUTH:6,WEST+3"
#define ui_ai_crew_monitor "SOUTH:6,WEST+4"
#define ui_ai_crew_manifest "SOUTH:6,WEST+5"
#define ui_ai_alerts "SOUTH:6,WEST+6"
#define ui_ai_announcement "SOUTH:6,WEST+7"
#define ui_ai_shuttle "SOUTH:6,WEST+8"
#define ui_ai_state_laws "SOUTH:6,WEST+9"
#define ui_ai_pda_send "SOUTH:6,WEST+10"
#define ui_ai_pda_log "SOUTH:6,WEST+11"
#define ui_ai_take_picture "SOUTH:6,WEST+12"
#define ui_ai_view_images "SOUTH:6,WEST+13"
#define ui_ai_sensor "SOUTH:6,WEST+14"
#define ui_ai_multicam "SOUTH+1:6,WEST+13"
#define ui_ai_add_multicam "SOUTH+1:6,WEST+14"

//Pop-up inventory
#define ui_shoes "WEST-3,NORTH-8:18"

#define ui_iclothing "WEST-2,NORTH-7:18"
#define ui_oclothing "WEST-2,NORTH-4"
#define ui_gloves "WEST-2,NORTH-6:18"

#define ui_glasses "WEST-1,NORTH-2"
#define ui_mask "WEST-2,NORTH-2"
#define ui_ears "WEST-3,NORTH-2"
#define ui_neck "WEST-2,NORTH-3"
#define ui_head "WEST-2,NORTH-1"

//Lower left, persistent menu
#define ui_inventory "WEST-1,SOUTH"

//Middle left indicators
#define ui_lingchemdisplay "WEST,CENTER-1:15"
#define ui_lingstingdisplay "WEST:6,CENTER-3:11"

#define ui_devilsouldisplay "WEST:6,CENTER-1:15"

//Lower center, persistent menu
#define ui_sstore1 "WEST-1,NORTH-3"
#define ui_id "WEST-1,NORTH-8:18"
#define ui_belt "WEST-2,NORTH-8:18"
#define ui_back "WEST-3,NORTH-3"

//Ghosts

#define ui_ghost_jumptomob "SOUTH:6,CENTER-2:24"
#define ui_ghost_orbit "SOUTH:6,CENTER-1:24"
#define ui_ghost_reenter_corpse "SOUTH:6,CENTER:24"
#define ui_ghost_teleport "SOUTH:6,CENTER+1:24"
#define ui_ghost_pai "SOUTH: 6, CENTER+2:24"

#define ui_whitenoise "CENTER-7,CENTER-7"
#define ui_left_panel "WEST-3,SOUTH"
#define ui_right_panel "EAST+1,SOUTH"
