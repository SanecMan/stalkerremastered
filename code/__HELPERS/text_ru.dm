#define UPC "�"
#define PHC "&#1103;"
#define PHCH "&#x044f;"
#define PBC "я"

//html uses "&#1103;" (unicode), byond dialogs use "я" (ascii)

//convesion stuff

/proc/ph_to_pb(text)
	return replacetext(text,PHC,PBC)

/proc/pb_to_ph(text)
	return replacetext(text,PBC,PHC)

GLOBAL_LIST_INIT(rus_unicode_conversion,list(
	"�" = "1040", "�" = "1072",
	"�" = "1041", "�" = "1073",
	"�" = "1042", "�" = "1074",
	"�" = "1043", "�" = "1075",
	"�" = "1044", "�" = "1076",
	"�" = "1045", "�" = "1077",
	"�" = "1046", "�" = "1078",
	"�" = "1047", "�" = "1079",
	"�" = "1048", "�" = "1080",
	"�" = "1049", "�" = "1081",
	"�" = "1050", "�" = "1082",
	"�" = "1051", "�" = "1083",
	"�" = "1052", "�" = "1084",
	"�" = "1053", "�" = "1085",
	"�" = "1054", "�" = "1086",
	"�" = "1055", "�" = "1087",
	"�" = "1056", "�" = "1088",
	"�" = "1057", "�" = "1089",
	"�" = "1058", "�" = "1090",
	"�" = "1059", "�" = "1091",
	"�" = "1060", "�" = "1092",
	"�" = "1061", "�" = "1093",
	"�" = "1062", "�" = "1094",
	"�" = "1063", "�" = "1095",
	"�" = "1064", "�" = "1096",
	"�" = "1065", "�" = "1097",
	"�" = "1066", "�" = "1098",
	"�" = "1067", "�" = "1099",
	"�" = "1068", "�" = "1100",
	"�" = "1069", "�" = "1101",
	"�" = "1070", "�" = "1102",
	"�" = "1071", "�" = "1103",

	"�" = "1025", "�" = "1105"
	))

GLOBAL_LIST_INIT(rus_unicode_conversion_hex,list(
	"�" = "0410", "�" = "0430",
	"�" = "0411", "�" = "0431",
	"�" = "0412", "�" = "0432",
	"�" = "0413", "�" = "0433",
	"�" = "0414", "�" = "0434",
	"�" = "0415", "�" = "0435",
	"�" = "0416", "�" = "0436",
	"�" = "0417", "�" = "0437",
	"�" = "0418", "�" = "0438",
	"�" = "0419", "�" = "0439",
	"�" = "041a", "�" = "043a",
	"�" = "041b", "�" = "043b",
	"�" = "041c", "�" = "043c",
	"�" = "041d", "�" = "043d",
	"�" = "041e", "�" = "043e",
	"�" = "041f", "�" = "043f",
	"�" = "0420", "�" = "0440",
	"�" = "0421", "�" = "0441",
	"�" = "0422", "�" = "0442",
	"�" = "0423", "�" = "0443",
	"�" = "0424", "�" = "0444",
	"�" = "0425", "�" = "0445",
	"�" = "0426", "�" = "0446",
	"�" = "0427", "�" = "0447",
	"�" = "0428", "�" = "0448",
	"�" = "0429", "�" = "0449",
	"�" = "042a", "�" = "044a",
	"�" = "042b", "�" = "044b",
	"�" = "042c", "�" = "044c",
	"�" = "042d", "�" = "044d",
	"�" = "042e", "�" = "044e",
	"�" = "042f", "�" = "044f",

	"�" = "0401", "�" = "0451"
	))

GLOBAL_LIST_INIT(rus_unicode_fix,null)

/proc/up2ph(text)
	text = strip_macros(text)
	text = pb_to_ph(text)

	for(var/s in GLOB.rus_unicode_conversion)
		text = replacetext(text, s, "&#[GLOB.rus_unicode_conversion[s]];")

	return text

/proc/ph2up(text) //dumb as fuck but necessary
	for(var/s in GLOB.rus_unicode_conversion)
		text = replacetext(text, "&#[GLOB.rus_unicode_conversion[s]];",s)
	return text

/proc/pa2pb(t)
	t = replacetext(t, PHC, UPC)
	t = replacetext(t, PBC, UPC)
	var/output = ""
	var/L = length(t)
	for(var/i = 1 to L)
		output += "&#[text2ascii(t,i)];"
	return output

//utility stuff

/proc/r_uppertext(text)
	var/t = ""
	for(var/i = 1, i <= length(text), i++)
		var/a = text2ascii(text, i)
		if (a > 223)
			t += ascii2text(a - 32)
		else if (a == 184)
			t += ascii2text(168)
		else t += ascii2text(a)
	return uppertext(t)

/proc/r_lowertext(text)
	var/t = ""
	for(var/i = 1, i <= length(text), i++)
		var/a = text2ascii(text, i)
		if (a > 191 && a < 224)
			t += ascii2text(a + 32)
		else if (a == 168)
			t += ascii2text(184)
		else t += ascii2text(a)
	return lowertext(t)

/proc/ruscapitalize(t)
	var/s = 1
	if (copytext(t,1,2) == ";" || copytext(t,1,2) == "#")
		s += 1
	else if (copytext(t,1,2) == ":")
		s += 2
	s = findtext(t, regex("\[^ \]","g"), s) + 1
	return r_uppertext(copytext(t, 1, s)) + copytext(t, s)

//sanitization shit

/proc/strip_macros(t)
	t = replacetext(t, "\proper", "")
	t = replacetext(t, "\improper", "")
	return t

/proc/sanitize_russian(t)
	t = strip_macros(t)
	return replacetext(t, UPC, PHC)

/proc/sanitize_russian_list(list) //recursive variant
	for(var/i in list)
		if(islist(i))
			sanitize_russian_list(i)

		if(list[i])
			if(istext(list[i]))
				list[i] = sanitize_russian(list[i])
			else if(islist(list[i]))
				sanitize_russian_list(list[i])

/proc/rhtml_encode(t)
	t = strip_macros(t)
	t = rhtml_decode(t)
	var/list/c = splittext(t, UPC)
	if(c.len == 1)
		return html_encode(t)
	var/out = ""
	var/first = 1
	for(var/text in c)
		if(!first)
			out += PHC
		first = 0
		out += html_encode(text)
	return out

proc/rhtml_decode(var/t)
	t = replacetext(t, PHC, UPC)
	t = replacetext(t, PBC, UPC)
	t = html_decode(t)
	return t

/proc/r_json_encode(json_data)
	if(!GLOB.rus_unicode_fix) // ���������� ������� ������
		GLOB.rus_unicode_fix = list()
		for(var/s in GLOB.rus_unicode_conversion_hex)
			if(s == UPC) // UPC breaks json_encode, so here is workaround
				GLOB.rus_unicode_fix[PHC] = "\\u[GLOB.rus_unicode_conversion_hex[s]]"
				continue

			GLOB.rus_unicode_fix[copytext(json_encode(s), 2, -1)] = "\\u[GLOB.rus_unicode_conversion_hex[s]]"

	sanitize_russian_list(json_data)
	var/json = json_encode(json_data)

	for(var/s in GLOB.rus_unicode_fix)
		json = replacetext(json, s, GLOB.rus_unicode_fix[s])

	return json

/proc/r_json_decode(text) //now I'm stupid
	for(var/s in GLOB.rus_unicode_conversion_hex)
		if (s == "�")
			text = replacetext(text, "\\u[GLOB.rus_unicode_conversion_hex[s]]", "я")
		text = replacetext(text, "\\u[GLOB.rus_unicode_conversion_hex[s]]", s)
	return json_decode(text)

#undef UPC
#undef PHC
#undef PHCH
#undef PBC
