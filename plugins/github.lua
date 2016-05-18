local function run(msg, matches)
  local eq = URL.escape(matches[1])
     url = "https://api.github.com/users/"..eq
     jstr, res = https.request(url)
     jdat = JSON.decode(jstr)
  if jdat.message then
  return jdat.message
else
    text = '✏️ نام کاربر : '..jdat.name..'\n👤 نام کاربری : '..jdat.login..'\n❤️ فالورها : '..jdat.followers..'\n💙 فالوینگ ها : '..jdat.following..'\n📑 تعداد پروژه ها : '..jdat.public_repos..'\n🌐 لینک پروفایل : '..jdat.html_url..'\n'
  local file = download_to_file(jdat.avatar_url,'github.png')
  send_photo('channel#id'..msg.to.id,file,ok_cb,false)
  return text
end
end
return {
  description = "Search On Github.com", 
  usage = "",
  patterns = {
    "^[!#/]git (.*)",
  },
  run = run
}
-- Created by : Amir Dark
-- github.com/amirhmz
