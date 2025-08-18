local games = {
    ["hypershot"] = {
        placeid = 17516596118,
        executors = { {name = "Velocity", needs_custom_drawing = true} }
    }
}

local games_path = "https://raw.githubusercontent.com/bannedwastaken/Zero/refs/heads/main/games/"
for i, v in pairs(games) do
    if game.PlaceId == v.placeid then
        for _, z in ipairs(v.executors) do
            if z.name == identifyexecutor() then
                if z.needs_custom_drawing then
                    local a = tick()
                    warn("Executor needs custom drawing...")
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/bannedwastaken/Zero/refs/heads/main/drawing.lua"))()
                    local b = tick() - a
                    warn("Custom drawing loaded! | Time took: " .. string.format("%.3f", b) .. "s")
                end

                local a = tick()
                warn("Loading script...")
                loadstring(game:HttpGet(games_path .. i .. "/main.lua"))()
                local b = tick() - a
                warn("Script loaded! | Time took: " .. string.format("%.3f", b) .. "s")

                break
            else
                if getgenv().not_supported then
                     loadstring(game:HttpGet(games_path .. i .. "/main.lua"))()
                else
                    getgenv().not_supported = true
                    warn("Executor not supported. Please execute again if you want to continue anyway.")
                end
                break
            end
        end
    end
end
