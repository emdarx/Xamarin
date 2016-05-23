local function run(msg, matches)
  local yon = http.request('http://api.yon.ir/?url='..URL.escape(matches[1]))
  local jdat = json:decode(yon)
  local bitly = https.request('https://api-ssl.bitly.com/v3/shorten?access_token=e11e36c8abbefd0b54d107f47f25b2ae38a6ac18&longUrl='..URL.escape(matches[1]))
  local data = json:decode(bitly)
  local yeo = http.request('http://yeo.ir/api.php?url='..URL.escape(matches[1])..'=')
 -- local opizo = http.request('http://api.gpmod.ir/shorten/?url='..URL.escape(matches[1])..'&username=mersad565@gmail.com')
  local u2s = http.request('http://u2s.ir/?api=1&return_text=1&url='..URL.escape(matches[1]))
  local llink = http.request('http://llink.ir/yourls-api.php?signature=a13360d6d8&action=shorturl&url='..URL.escape(matches[1])..'&format=simple')
 
    return '🌐 لینک اصلی :\n'..data.data.long_url..'\n___________________________\n\n1⃣ لینک کوتاه شده با bitly :\n'..data.data.url..'\n___________________________\n\n2⃣ لینک کوتاه شده با yeo :\n'..yeo..'\n___________________________\n\n3⃣ لینک کوتاه شده با yon :\nyon.ir/'..jdat.output..'\n___________________________\n\n4⃣ لینک کوتاه شده با u2s :\n'..u2s..'\nِ'
end
return {
  usage = "کوتاه کردن لینک سایت مورد نظر به 5 روش\n/short your Link\n لینک حتما با http://شروع شود",
  patterns = {
    "^[/#!]shortlink (.*)$"
  },
  run = run
}
