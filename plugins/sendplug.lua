do

local function run(msg, matches)
  if matches[1] == "sendplug" then
    local file = matches[2]
    if is_sudo(msg) then
      local receiver = get_receiver(msg)
      send_document(receiver, "./plugins/"..file..".lua", ok_cb, false)
    end
  end
end

return {
  patterns = {
  "^[!/#](sendplug) (.*)$"
  },
  run = run
}
end
