local games = {
    ['hypershot'] = 100040622766961
}

local games_path = "https://raw.githubusercontent.com/bannedwastaken/Zero/refs/heads/main/games/"
for i,v in pairs(games) do
    if game.PlaceId == v then 
        loadstring(game:HttpGet(games_path..i.."/main.lua"))()
    end
	warn('No game support, Loading universal!')
	-- Adding universal soon
end
