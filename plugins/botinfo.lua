do
    function run(msg, matches)
        
  local text = [[
🚀 ربات ضد اسپم زامارین

🔘 کاربردی ترین ربات مدیریت گروه

 🔸 مدیر ربات : @AmirDark 
 🔸 پشتیبانی : @S_KaQaZ
 🔸 کانال : @XamarinCH

🔷 نسخه ربات : 1.0.0 

http://yeo.ir/XaL
]]
    return text
  end
end 

return {
  description = "about for bot.  ", 
  usage = {
    "Show bot about.",
  },
  patterns = {
    "^[!/#]([Xx]amarin)$",
  }, 
  run = run,
}
