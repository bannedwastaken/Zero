local games = {
    ['hypershot'] = 17516596118
}

local games_path = "https://raw.githubusercontent.com/bannedwastaken/Zero/refs/heads/main/games/"
for i,v in pairs(games) do
    if game.PlaceId == v then 
        loadstring(game:HttpGet(games_path..i.."/main.lua"))()
    end
	-- Adding universal soon
end
