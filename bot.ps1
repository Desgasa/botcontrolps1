$json = Invoke-RestMethod -Uri "https://api.telegram.org/botToken/getUpdates"
 $data = $json.result | Select-Object -Last 1
 $timem = $data.message.date
 $timed = Get-Date -UFormat %s
 $times = $timed - $timem
if($times -gt 4500 -and $times -lt 5400)
 {Invoke-RestMethod -Uri "https://api.telegram.org/botToken/sendMessage?chat_id=yourchatid&text=Anybody Her?"}
elseif ($times -gt 5400) {
Invoke-RestMethod -Uri "https://api.telegram.org/botToken/sendMessage?chat_id=yourchatid&text=Hello"}
