do
 function run(msg, matches)
 
 local fuse = '📌 #فیدبک جدید\n\n🆔 کد کاربری : ' .. msg.from.id .. '\n\n👤 نام کاربر : ' .. msg.from.print_name ..'\n\n🔢 نام کاربری : @' .. msg.from.username .. '\n\n📬 متن پیام :\n\n' .. matches[1] 
 local fuses = '!printf user#id' .. msg.from.id
 
 
   local text = matches[1]
   local chat = "user#id"..119626024
   --like : local chat = "channel#id"..12345678
   
  local sends = send_msg(chat, fuse, ok_cb, false)
  return '📝 پیام شما دریافت شد'
 
 end
 end
 return {
  
  description = "Feedback",
 
  usage = "!feedback message",
  patterns = {
  "^[!#/][Ff]eedback (.*)$"
 
  },
  run = run
 }
