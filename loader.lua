local placeId = game.PlaceId

local BASE_URL = "https://raw.githubusercontent.com/Flosseyy/gameloader/main/games/"

local games = {
    [109397169461300] = "sniperduels.lua",
    [286090429]       = "arsenal.lua",
    [94217045453265]  = "duelgrounds.lua",
    [136801880565837] = "flick.lua",
    [118805555015549] = "lootforge.lua",
    [123720558354386] = "pyramid.lua",
    [14772802900] = "jailbird.lua",
    [124216119978534] = "rideapet.lua",
    [88047783411976] = "osfa.lua",
}

local file = games[placeId]

if not file then
    game:GetService("Players").LocalPlayer:Kick("This game isnt supported. Join our discord to request it!")
else
    local success, err = pcall(function()
        loadstring(game:HttpGet(BASE_URL .. file))()
    end)
    if not success then
        warn("Error: " .. tostring(err))
    end
end
