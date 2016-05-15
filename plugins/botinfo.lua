do
    function run(msg, matches)
        
  local text = [[
🚀 ربات ضد اسپم زامارین

🔘 کاربردی ترین ربات مدیریت گروه

 🔸 مدیر ربات : @AmirDark 
 🔸 پشتیبانی : @SinaSereen
 🔸 کانال : @DarkTeam

🔷 نسخه ربات : 1.0.0 (سوپر گروه)

http://yeo.ir/XLO
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
