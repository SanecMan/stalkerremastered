/mob/dead/new_player/Login()
	if(CONFIG_GET(flag/use_exp_tracking))
		client.set_exp_from_db()
		client.set_db_player_flags()
	if(!mind)
		mind = new /datum/mind(key)
		mind.active = 1
		mind.current = src

	..()

	spawn(-1)
		var/crsc = client.crawler_sanity_check()
		spawn(5 SECONDS)
			to_chat(src, "<div class='examine_block'><span class='greenannounce'><center> .: ANTI-BAD PERSON SYSTEM :. </center></span><hr><span class='[crsc ? "greenannounce" : "boldwarning"]'><center> YOU ACCOUNT [crsc ? "CLEAR. GOOD PLAY." : "NOT A CLEAR. \[<a href='https://crawler.station13.ru/?ckey=[client?.ckey]'>?</a>\] \[<a href='https://station13.ru/ru/purgatory'>CHECK THIS.</a>\]"] </center></span></div>")

	var/motd = global.config.motd
	if(motd)
		to_chat(src, "<div class=\"motd\">[motd]</div>", handle_whitespace=FALSE)

	if(GLOB.admin_notice)
		to_chat(src, "<span class='notice'><b>Заметка:</b>\n \t [GLOB.admin_notice]</span>")

	var/spc = CONFIG_GET(number/soft_popcap)
	if(spc && living_player_count() >= spc)
		to_chat(src, "<span class='notice'><b>Заметка:</b>\n \t [CONFIG_GET(string/soft_popcap_message)]</span>")

	sight |= SEE_TURFS

	//new_player_panel()
	client.prefs.ShowChoices(src)
	client.playtitlemusic()
	if(SSticker.current_state < GAME_STATE_SETTING_UP)
		var/tl = SSticker.GetTimeLeft()
		var/postfix
		if(tl > 0)
			postfix = "через [DisplayTimeText(tl)]"
		else
			postfix = "скоро"
		to_chat(src, "Настройте вашего персонажа и ожидайте. Мир запустится [postfix].")
