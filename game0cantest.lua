local tablekey = {
      "2vjd9yb485nyMd2",
     }
      if table.find(tablekey, getgenv().key) then
      if not _G.require then
        _G.require = require
      end
       print("whitelist")
if game.PlaceId == 4442272183 or game.PlaceId == 2753915549 or game.PlaceId == 7449423635 then
repeat wait()
until game:IsLoaded() and game.Players.LocalPlayer
repeat wait()
until game:GetService("Players").LocalPlayer:FindFirstChild("DataLoaded") 
repeat wait()
    pcall(function()
        if getgenv().Marines then
            for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
                v.Function()
            end
        else
            for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
                v.Function()
            end
        end
    end)
until game:GetService("Players").LocalPlayer.PlayerGui.Main:WaitForChild("ChooseTeam").Visible == false
repeat wait()
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Text == "$ ..." then
        game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
        print("cool")
    end
until game:GetService("Players").LocalPlayer:FindFirstChild("WeaponAssetCache")

weaponlist = { "Spikey Trident","Saber", "Pale Scarf", "Valkyrie Helm", "Bisento", "Kabucha", "Shisui", "Saddi", "Wando", "Buddy Sword", "Midnight Blade", "Tushita", "Dark Dagger", "Rengoku", "Yama", "Hallow Scythe", "Koku", "Dark Blade", "Dragon Trident", "True Triple Katana", "Pole V2", "Canvander" }
local checkacc = true
function checkwpmelee()
    if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
        MeleeA = "Dragon Talon"
    else
        MeleeA = ""
    end
    if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1 then
        MeleeB = "Electric Claw"
    else
        MeleeB = ""
    end
    if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySuperhuman", true) == 1 then
        MeleeC = "Superhuman"
    else
        MeleeC = ""
    end
    if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDeathStep", true) == 1 then
        MeleeD = "Death Step"
    else
        MeleeD = ""
    end
    if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == 1 then
        MeleeF = "Sharkman Karate"
    else
        MeleeF = ""
    end
    local Meleehienco = MeleeA .. " ," .. MeleeB .. " ," .. MeleeC .. " ," .. MeleeD .. " ," .. MeleeF

end



frutidangco = ""
getgenv().tablefruitausea3 = {
    ["1000000"] ="Quake-Quake",
    ["1200000"] = "Human-Human: Buddha",
    ["1500000"] = "String-String",
    ["1800000"] = "Bird-Bird: Phoenix",
    ["2100000"] = "Rumble-Rumble",
    ["2300000"] = "Paw-Paw",
    ["2500000"] = "Gravity-Gravity",
    ["2800000"] = "Dough-Dough",
    ["2900000"] = "Shadow-Shadow",
    ["3000000"] = "Venom-Venom",
    ["3200000"] = "Control-Control",
    ["3500000"] = "Dragon-Dragon"
}
local max = math.huge
    local name 
    for i, v in pairs(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventoryFruits")) do
        for i1,v1 in pairs(v) do
            if i1 == "Name" then
                for i2, v2 in pairs(getgenv().tablefruitausea3) do
                    if v1 == v2 then
                        if tonumber(i2) < tonumber(max) then
                            max = i2
                            name = v2
                           -- print(v2)
                            frutidangco = frutidangco..v2..", "
                            --game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v1)
                        end
                    end
                end
            end
        end
    end



 wpstorage = ""
    for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
        for i1,v1 in next, v do
            if i1 == "Name" then
                wpstorage = wpstorage..v1..", "
            end
        end
    end
local suffixes = {"K", "M", "B", "T", "Q","QA"} -- numbers don't go higher than 'Q' in Lua.

local function toSuffixString(n)
	local i = math.floor(math.log(n, 1e3))
	local v = math.pow(10, i * 3)
	return ("%.1f"):format(n / v):gsub("%.?0+$", "") .. (suffixes[i] or "")
end

local plr = game.Players.LocalPlayer
local frag = toSuffixString(game:GetService("Players").LocalPlayer.Data.Fragments.Value)
local beli = toSuffixString(game:GetService("Players").LocalPlayer.Data.Beli.Value)
local level = game:GetService("Players").LocalPlayer.Data.Level.Value
local race = plr.Data.Race.Value
function sendmsg2(url, j)
checkwpmelee()
    msg = {
        ["content"] = "Profile check",
        ["embeds"] = {
            {
            ["color"] = tonumber(0x000000),
            ["title"] = "Check",
            ["fields"] = {
                {
                ["name"] = "Username",
                ["value"] = "||"..game.Players.LocalPlayer.Name.."||",
                ["inline"] = false
            },
            {
                ["name"] = "Frag-Beli-Level",
                ["value"] = "Frag : "..toSuffixString(game:GetService("Players").LocalPlayer.Data.Fragments.Value).." Beli : "..toSuffixString(game:GetService("Players").LocalPlayer.Data.Beli.Value).." Level : "
                ..game:GetService("Players").LocalPlayer.Data.Level.Value,
                ["inline"] = false,   
            },
            {
                ["name"] = "Inventory: ",
                ["value"] = wpstorage,
                ["inline"] = false,   
            },
            {
                ["name"] = "Melee: ",
                ["value"] = MeleeA .. " ," .. MeleeB .. " ," .. MeleeC .. " ," .. MeleeD .. " ," .. MeleeF,
                ["inline"] = false,   
            }
            },
            }
        }
    }  
   local request = syn.request or http_request
    local response = request(
    {
    Url = url,
    Method = "POST",
    Headers = {
    ["Content-Type"] = "application/json"
    },
    Body = game:GetService("HttpService"):JSONEncode(msg)
    }
    )
if checkacc then
    sendmsg2(url,"Check Profile")
end    

end
--game:Shutdown()
      else
      game.Players.LocalPlayer:Kick("Invalid Key")
      end
      if not _G.require then
        _G.require = require
      end
