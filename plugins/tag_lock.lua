do
local function run(msg, matches)
    local chat_id =  msg.to.id
     local data = load_data(_config.moderation.data)
    if matches[1] == 'lock' and matches[2] == 'tag' then
     if not is_momod(msg) then
    return ""
   end
    local data = load_data(_config.moderation.data)
   local lock_tag = data[tostring(msg.to.id)]['lock_tag']
if data[tostring(msg.to.id)]['lock_tag'] and  lock_tag == 'yes' then
    return 'ارسال تگ هم اکنون قفل است'
  else
    data[tostring(msg.to.id)]['lock_tag'] = 'yes'
    save_data(_config.moderation.data, data)
    local hash = 'lock_tag:'..msg.to.id
    redis:set(hash, true)
     return "ارسال تگ قفل شد"
    end
end

local chat_id =  msg.to.id
     local data = load_data(_config.moderation.data)
    if matches[1] == 'unlock' then
   if not is_momod(msg) then
  return ""
 end
    local data = load_data(_config.moderation.data)
   local lock_tag = data[tostring(msg.to.id)]['lock_tag']
if data[tostring(msg.to.id)]['lock_tag'] then
  if lock_tag == 'no' then
    return 'ارسال تگ هم اکنون قفل نیست'
  else
    data[tostring(msg.to.id)]['lock_tag'] = 'no'
    save_data(_config.moderation.data, data)
    local hash = 'lock_tag:'..msg.to.id
    redis:set(hash, true)
     return "ارسال تگ مجاز شد"
    end
  end
end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
    if data[tostring(msg.to.id)]['lock_tag'] then
    local lock_tag = tonumber(data[tostring(msg.to.id)]['lock_tag'])
    local hash = 'lock_tag:'..msg.to.id
    if redis:get(hash) or lock_tag == 'yes'  then
    if not is_momod(msg) then
    if msg.to.type == 'channel' then 
    if msg.text:match("#(.*)") or msg.text:match("@(.*)") then
    delete_msg(msg.id, ok_cb, false)
    elseif msg.to.type == 'chat' or strict == "yes" then
     if msg.text:match("#(.*)") or msg.text:match("@(.*)") then
    delete_msg(msg.id, ok_cb, false)
    kick_user(msg.from.id, msg.to.id)
                   end
                end
             end
          end
       end 
    end
end
end
return {
    patterns = {
        "^[!/#](lock) (.*)$",
        "^[!/#](unlock) (.*)$",
        "#(.*)",
        "@(.*)",
    },
    run = run
}
end


