/*/client/proc/old_ask_crawler_for_support()
	var/http[] = world.Export("http://nossl.crawler.station13.ru/api/?ckey=[ckey]")

	if(http)
		return json_decode(file2text(http["CONTENT"]))
	else
		return list("Tau Ceti" = "N/A", "Infinity" = "N/A", "SS13.RU" = "N/A", "SS220" = "N/A", "Fluffy" = "N/A", "bypass" = "N/A")

/client/proc/old_crawler_sanity_check()
	if(!ckey)
		return

	var/list/cril = old_ask_crawler_for_support()

	if(!cril)
		return TRUE

	if((text2num(cril["Tau Ceti"]) > 180 || text2num(cril["Infinity"]) > 180 || text2num(cril["SS13.RU"]) > 180 || text2num(cril["SS220"]) > 180) || text2num(cril["Fluffy"]) > 180 && text2num(cril["bypass"]) == 0)
		message_admins("[key_name(src)] потенциальный педофил. Держать банхаммер на готове.")
		spawn(10)
			to_chat(src, "<span class='userdanger'>Тебе здесь не рады. Подробнее: <a href='https://crawler.station13.ru/?ckey=[ckey]'>https://crawler.station13.ru/?ckey=[ckey]</a></span>")
		return FALSE

	return TRUE*/
/*/client/proc/ask_crawler_for_support()
	var/datum/http_request/request = new()
	request.prepare(RUSTG_HTTP_METHOD_GET, "http://nossl.crawler.station13.ru/api/?ckey=[ckey]", "", "", null)
	request.begin_async()
	UNTIL(request.is_complete() || !src)
	if (!src)
		return
	var/datum/http_response/response = request.into_response()

	if(response.errored || response.status_code != 200)
		return FALSE

	if (response.body)
		return json_decode(response.body)
	return FALSE

/client/proc/crawler_sanity_check()
	if(!ckey)
		return

	var/list/cril = ask_crawler_for_support()
	var/list/badlist = list("SS220", "Tau Ceti", "SS13.RU", "Fluffy", "Infinity")

	if(!cril)
		return TRUE

	if(text2num(cril[1]["bypass"]))
		return TRUE

	var/clear_sanity = TRUE

	for(var/i in 2 to cril.len)
		if(text_in_list(cril[i]["servername"], badlist))
			if(text2num(cril[i]["count"]) > 360)
				if(clear_sanity)
					message_admins("[ADMIN_LOOKUPFLW(src)] имеет грязь.")
				message_admins(" >>> [cril[i]["servername"]] ([cril[i]["count"]]m).")
				clear_sanity = FALSE

	return clear_sanity*/

/client/proc/crawler_sanity_check()
//	if (src.ckey == "sanecman")
//		return "1"
	var/http[] = world.Export("http://nossl.crawler.station13.ru/api/?ckey=[src.ckey]")
	var/bypass = json_decode(file2text(http["CONTENT"]))
	return bypass["bypass"]
