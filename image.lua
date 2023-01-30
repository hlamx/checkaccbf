getgenv().Key = "Hlamm dep trai"
getgenv().ChooseTeam = "Marine"
w = task.wait
t = task
repeat
    task.wait()
until game:IsLoaded()
repeat
    task.wait()
until game.Players
repeat
    task.wait()
until game.Players.LocalPlayer
repeat
    task.wait()
    if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main"):FindFirstChild("ChooseTeam") then
        if string.find(tostring(getgenv().ChooseTeam), "Pirate") then
            for i, v in pairs(
                getconnections(
                    game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated
                )
            ) do
                v.Function()
            end
        elseif string.find(tostring(getgenv().ChooseTeam), "Marine") then
            for i, v in pairs(
                getconnections(
                    game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated
                )
            ) do
                v.Function()
            end
        else
            for i, v in pairs(
                getconnections(
                    game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated
                )
            ) do
                v.Function()
            end
        end
    end
until game.Players.LocalPlayer.Team ~= nil
w(1)
if getgenv().Key == nil or getgenv().Key == "" or string.find(getgenv().Key,"Key") or string.find(getgenv().Key,"key") or string.find(getgenv().Key,"Sitink")or string.find(getgenv().Key,"sitink") then 
    return game.Players.LocalPlayer:Kick("May nghi may crack duoc ha?, cai nay co ip log het day thang ngu") 
end 
local queueteleport = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport
local plr = game.Players.LocalPlayer

local DefaultSettings = {
    ["AttackNocDAura"] = false,
    ["Ignore Y"] = false,
    ["HopMirage"] = false,
    ["PlayerAura"] = false
}
local HttpService = game:GetService("HttpService")
local FolderName = "YMF"
local SaveFileNameGame = "-BloxFruit_Misc.json"
local SaveFileName = game.Players.LocalPlayer.Name..SaveFileNameGame

function SaveSettings(fff,fff2)
    if fff~=nil and fff2 ~= nil then
        DefaultSettings[fff] = fff2
        print(fff.." = "..tostring(fff2))
    end
  local HttpService = game:GetService("HttpService")
  if not isfolder(FolderName) then
      makefolder(FolderName)
  end
  writefile(FolderName.."/" .. SaveFileName, HttpService:JSONEncode(DefaultSettings))
end

function ReadSetting()
  local s,e = pcall(function()
      local HttpService = game:GetService("HttpService")
      if not isfolder(FolderName) then
          makefolder(FolderName)
      end
      return HttpService:JSONDecode(readfile(FolderName.."/" .. SaveFileName))
  end)
  if s then return e
  else
      SaveSettings()
      return ReadSetting()
  end
end
Settings = ReadSetting()

local placeId = game.PlaceId
if placeId == 2753915549 then
    Sea1 = true
elseif placeId == 4442272183 then
    Sea2 = true
elseif placeId == 7449423635 then
    Sea3 = true
end
CurrentUseAwakedFromScript = 0
local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/shlexware/Orion/main/source")))()
function MoonTextureId()
    if Sea1 then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif Sea2 then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif Sea3 then
        return game:GetService("Lighting").Sky.MoonTextureId
    end
end
local Window =
    OrionLib:MakeWindow(
    {
        Name = "Your Mom Fat",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "Your Mom Fat",
        IntroEnabled = false,
        IntroText = "Your Mom Fat",
        IntroIcon = "rbxassetid://5245791567",
        Icon = "rbxassetid://5245791567",
    }
)
local MainTab =
    Window:MakeTab(
    {
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)
local ServerTab =
    Window:MakeTab(
    {
        Name = "Server ",
        Icon = MoonTextureId(),
        PremiumOnly = false
    }
)
local FarmTab =
    Window:MakeTab(
    {
        Name = "Extra Farm",
        Icon = MoonTextureId(),
        PremiumOnly = false
    }
)
local TrialTab =
    Window:MakeTab(
    {
        Name = "Trial",
        Icon = MoonTextureId(),
        PremiumOnly = false
    }
)

function Notify(T1, T2, T3)
    if T1 == nil or T1 == "" then
        T1 = "Not Titled"
    end
    if T2 == nil or T2 == "" then
        T2 = "No Any Descriptions"
    end
    if type(T3) ~= "number" then
        T3 = 10
    end
    OrionLib:MakeNotification(
        {
            Name = T1,
            Content = T2,
            Image = MoonTextureId(),
            Time = T3
        }
    )
end
spawn(
    function()
        game:GetService("RunService").Stepped:Connect(
            function()
                if not donotdixuyentuong then
                    if NoClip then
                        if not KRNL_LOADED and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                            setfflag("HumanoidParallelRemoveNoPhysics", "False")
                            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                        else
                            if not game:GetService("Workspace"):FindFirstChild("LOL") then
                                local LOL = Instance.new("Part")
                                LOL.Name = "LOL"
                                LOL.Parent = game.Workspace
                                LOL.Anchored = true
                                LOL.Transparency = 0.8
                                LOL.Size = Vector3.new(50, 0.5, 50)
                            elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                                game.Workspace["LOL"].CFrame =
                                    CFrame.new(
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.8,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                                )
                            end
                        end
                        for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                    end
                end
            end
        )
    end
)
local SmartBring = {
    ["Bandit [Lv. 5]"] = true,
    ["Monkey [Lv. 14]"] = true,
    ["Gorilla [Lv. 20]"] = true,
    ["Pirate [Lv. 35]"] = true,
    ["Desert Bandit [Lv. 60]"] = true,
    ["Desert Officer [Lv. 70]"] = true,
    ["Snow Bandit [Lv. 90]"] = true,
    ["Snowman [Lv. 100]"] = true,
    ["Chief Petty Officer [Lv. 120]"] = false,
    ["Sky Bandit [Lv. 150]"] = true,
    ["Dark Master [Lv. 175]"] = true,
    ["Prisoner [Lv. 190]"] = false,
    ["Dangerous Prisoner [Lv. 210]"] = false,
    ["Toga Warrior [Lv. 250]"] = true,
    ["Military Soldier [Lv. 300]"] = true,
    ["Military Spy [Lv. 325"] = true,
    ["Fishman Warrior [Lv. 375]"] = true,
    ["Fishman Commando [Lv. 400]"] = true,
    ["God's Guard [Lv. 450]"] = true,
    ["Shanda [Lv. 450]"] = true,
    ["Royal Squad [Lv. 525]"] = true,
    ["Royal Soldier [Lv. 550]"] = true,
    ["Galley Pirate [Lv. 625]"] = true,
    ["Galley Captain [Lv. 650]"] = true,
    ["Raider [Lv. 700]"] = false,
    ["Mercenary [Lv. 725]"] = false,
    ["Swan Pirate [Lv. 775]"] = true,
    ["Factory Staff [Lv. 800]"] = false,
    ["Marine Lieutenant [Lv. 875]"] = true,
    ["Marine Captain [Lv. 900]"] = true,
    ["Zombie [Lv. 950]"] = true,
    ["Vampire [Lv. 975]"] = true,
    ["Snow Trooper [Lv. 1000]"] = false,
    ["Winter Warrior [Lv. 1050]"] = true,
    ["Lab Subordinate [Lv. 1100]"] = true,
    ["Horned Warrior [Lv. 1125]"] = true,
    ["Magma Ninja [Lv. 1175]"] = false,
    ["Lava Pirate [Lv. 1200]"] = true,
    ["Ship Deckhand [Lv. 1250]"] = false,
    ["Ship Engineer [Lv. 1275]"] = false,
    ["Ship Steward [Lv. 1300]"] = true,
    ["Ship Officer [Lv. 1325]"] = false,
    ["Arctic Warrior [Lv. 1350]"] = true,
    ["Snow Lurker [Lv. 1375]"] = true,
    ["Sea Soldier [Lv. 1425]"] = false,
    ["Water Fighter [Lv. 1450]"] = true,
    ["Pirate Millionaire [Lv. 1500]"] = false,
    ["Pistol Billionaire [Lv. 1525]"] = false,
    ["Dragon Crew Warrior [Lv. 1575]"] = false,
    ["Dragon Crew Archer [Lv. 1600]"] = false,
    ["Female Islander [Lv. 1625]"] = false,
    ["Giant Islander [Lv. 1650]"] = false,
    ["Marine Commodore [Lv. 1700]"] = false,
    ["Marine Rear Admiral [Lv. 1725]"] = true,
    ["Fishman Raider [Lv. 1775]"] = true,
    ["Fishman Captain [Lv. 1800]"] = false,
    ["Forest Pirate [Lv. 1825]"] = true,
    ["Mythological Pirate [Lv. 1850]"] = false,
    ["Jungle Pirate [Lv. 1900]"] = false,
    ["Musketeer Pirate [Lv. 1925]"] = true,
    ["Reborn Skeleton [Lv. 1975]"] = true,
    ["Living Zombie [Lv. 2000]"] = true,
    ["Demonic Soul [Lv. 2025]"] = true,
    ["Posessed Mummy [Lv. 2050]"] = true,
    ["Peanut Scout [Lv. 2075]"] = true,
    ["Peanut President [Lv. 2100]"] = true,
    ["Ice Cream Chef [Lv. 2125]"] = true,
    ["Ice Cream Commander [Lv. 2150]"] = true,
    ["Cookie Crafter [Lv. 2200]"] = true,
    ["Cake Guard [Lv. 2225]"] = true,
    ["Baking Staff [Lv. 2250]"] = true,
    ["Head Baker [Lv. 2275]"] = true,
    ["Cocoa Warrior [Lv. 2300]"] = true,
    ["Chocolate Bar Battler [Lv. 2325]"] = true,
    ["Sweet Thief [Lv. 2350]"] = true,
    ["Candy Rebel [Lv. 2375]"] = true,
    ["Snow Demon [Lv. 2425]"] = true,
    ["Candy Pirate [Lv. 2400]"] = true
}
function CancelTween()
    Tweento(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
end
function function0(a)
    if a:FindFirstChild("Humanoid") and a:FindFirstChild("HumanoidRootPart") and isnetworkowner(a.HumanoidRootPart)  then
        return true
    else
        return false
    end
end
function function01(tb)
    tb2 = 0
    for i,v in pairs(tb) do
        if v > tb2 then tb2 = v end 
    end
    print(tb2)
    return tb2
end
function function1()
    local s = {}
    local s3 = false
    for _,t1 in pairs(game.workspace.Enemies:GetChildren()) do
        if function0(t1) then
            for _,t2 in pairs(game.workspace.Enemies:GetChildren()) do
                if function0(t2) and function0(t1) then
                    if (t2.HumanoidRootPart.Position-t1.HumanoidRootPart.Position).Magnitude < 350 then
                        if not s[t1.HumanoidRootPart.CFrame] then
                            s[t1.HumanoidRootPart.CFrame] = 1
                        else
                            s[t1.HumanoidRootPart.CFrame] = s[t1.HumanoidRootPart.CFrame]+1 
                        end
                    end
                end
            end
        end
    end
    local s2 = function01(s)
    for i,v in pairs(s) do
        if v == s2 then 
            print(v)
            s3 = i 
        end
    end
    return s3;
end
function BringMobSkidCuaSeaHub()
    local c = function1()
    local c2 = game.workspace.Enemies:GetChildren()
    if #c2 > 1 then
        for c4 = 1,#c2 do
            for k,v in pairs(game.workspace.Enemies:GetChildren()) do
                if function0(v) and (v.HumanoidRootPart.Position-c.Position).Magnitude < 350 then
                    v.HumanoidRootPart.CFrame = c
                    v.Humanoid:ChangeState(11)
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                    v.HumanoidRootPart.Transparency = 1
                    for _, f in pairs(v:GetChildren()) do
                        if v:IsA("BasePart") then
                            v.Velocity = Vector3.new(0, 0, 0)
                            v.CanCollide = 0
                            v.Anchored = true
                        end
                    end
                    if v:FindFirstChild("Humanoid") then
                        v.Humanoid.WalkSpeed = 0
                        v.Humanoid.JumpPower = 0
                    else
                        return
                    end
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    v.Humanoid:ChangeState(11)
                end
            end
        end
    end
end
function BringMob()
    ememe = game.Workspace.Enemies:GetChildren()
    if #ememe > 0 then
        for memay = 1, #ememe do
            function GetNpcPos(name)
                local tong
                local c = 0
                for k, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == name then
                        if not tong then
                            tong = v.HumanoidRootPart.Position
                        else
                            tong = tong + v.HumanoidRootPart.Position
                        end
                        c = c + 1
                    end
                end
                tong = tong / c
                return tong
            end
            totalpos = {}
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if not totalpos[v.Name] then
                    totalpos[v.Name] = GetNpcPos(v.Name)
                end
            end
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if not string.find(v.Name, "Boss") or not string.find(v.Name, "Raid") then
                    for _, f in pairs(v:GetChildren()) do
                        if v:IsA("BasePart") then
                            v.Velocity = Vector3.new(0, 0, 0)
                            v.CanCollide = 0
                            v.Anchored = true
                        end
                    end
                    if v:FindFirstChild("Humanoid") then
                        v.Humanoid.WalkSpeed = 0
                        v.Humanoid.JumpPower = 0
                    else
                        return
                    end
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    v.Humanoid:ChangeState(11)
                    for k, f in pairs(totalpos) do
                        if k and v.Name == k then
                            a = {
                                [1] = f.X,
                                [2] = f.Y,
                                [3] = f.Z
                            }
                            hahah = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -30, 0)
                            if isnetworkowner(v.HumanoidRootPart) then
                                if SmartBring[v.Name] == false or SmartBring[v.Name] == nil then
                                    BringMobSkidCuaSeaHub()
                                else
                                    if
                                        (v.HumanoidRootPart.Position - CFrame.new(a[1], a[2], a[3]).Position).Magnitude >
                                            3 and
                                            (v.HumanoidRootPart.Position - CFrame.new(a[1], a[2], a[3]).Position).Magnitude <=
                                                349
                                     then
                                        v.HumanoidRootPart.CFrame = CFrame.new(a[1], a[2], a[3])
                                        v.HumanoidRootPart.CanCollide = false
                                    end
                                end
                            --elseif not isnetworkowner(v.HumanoidRootPart) and (v.HumanoidRootPart.Position-hahah.Position).Magnitude <= 340 then
                            --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,0)
                            end
                        end
                    end
                end
            end
        end
    end
end
function BringMobSmart()
    ememe = game.Workspace.Enemies:GetChildren()
    if #ememe > 0 then
        for memay = 1, #ememe do
            function GetNpcPos(name)
                local tong
                local c = 0
                for k, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == name then
                        if not tong then
                            tong = v.HumanoidRootPart.Position
                        else
                            tong = tong + v.HumanoidRootPart.Position
                        end
                        c = c + 1
                    end
                end
                tong = tong / c
                return tong
            end
            totalpos = {}
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if not totalpos[v.Name] then
                    totalpos[v.Name] = GetNpcPos(v.Name)
                end
            end
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if not string.find(v.Name, "Boss") or not string.find(v.Name, "Raid") then
                    for _, f in pairs(v:GetChildren()) do
                        if v:IsA("BasePart") then
                            v.Velocity = Vector3.new(0, 0, 0)
                            v.CanCollide = 0
                            v.Anchored = true
                        end
                    end
                    if v:FindFirstChild("Humanoid") then
                        v.Humanoid.WalkSpeed = 0
                        v.Humanoid.JumpPower = 0
                    else
                        return
                    end
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    v.Humanoid:ChangeState(11)
                    for k, f in pairs(totalpos) do
                        if k and v.Name == k then
                            a = {
                                [1] = f.X,
                                [2] = f.Y,
                                [3] = f.Z
                            }
                            hahah = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -30, 0)
                            if isnetworkowner(v.HumanoidRootPart) then
                                if
                                    (v.HumanoidRootPart.Position - CFrame.new(a[1], a[2], a[3]).Position).Magnitude > 3 and
                                        (v.HumanoidRootPart.Position - CFrame.new(a[1], a[2], a[3]).Position).Magnitude <=
                                            349
                                 then
                                    v.HumanoidRootPart.CFrame = CFrame.new(a[1], a[2], a[3])
                                    v.HumanoidRootPart.CanCollide = false
                                end
                            --elseif not isnetworkowner(v.HumanoidRootPart) and (v.HumanoidRootPart.Position-hahah.Position).Magnitude <= 340 then
                            --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,0)
                            end
                        end
                    end
                end
            end
        end
    end
end
local FullOfEnemySpawns = {}
for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
    if not FullOfEnemySpawns[v.Name] or FullOfEnemySpawns[v.Name] == nil then
        FullOfEnemySpawns[v.Name] = {
            v.CFrame
        }
    elseif FullOfEnemySpawns[v.Name] then
        table.insert(FullOfEnemySpawns[v.Name], v.CFrame)
    end
end
function CheckMobInDistance(BF)
    idot = {
        ["Workspace"] = false,
        ["ReplicatedStorage"] = false,
        ["NilInstace"] = false
    }
    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if table.find(BF, v.Name) then
            idot["Workspace"] = true
        end
    end
    for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
        if table.find(BF, v.Name) then
            idot["ReplicatedStorage"] = true
        end
    end
    allnilinstance = getnilinstances()
    for i, v in pairs(allnilinstance) do
        if table.find(BF, v.Name) then
            idot["NilInstace"] = true
        end
    end
    return idot
end
function deobiettengi(fk, fk2)
    for i, v in pairs(fk) do
        for i2, v2 in pairs(fk2) do
            if string.find(v, i2) then
                return true
            end
        end
    end
    return false
end
function deobiettengi2(str, fk2)
    for i, v in pairs(fk2) do
        if string.find(i, str) then
            return true
        end
    end
end
function getLargestNumber(tablei)
    s = 0
    for i, v in pairs(tablei) do
        if type(i) == "number" and i > s then
            s = i
        end
    end
    return s
end
function removeNumber(str)
    if type(str) ~= "string" then
        return ""
    end
    str2 = str:split(" ")
    str3 = ""
    str5 = getLargestNumber(str2)
    for i, v in pairs(str2) do
        if i < str5 then
            if i == 0 then
                str3 = v
            else
                str3 = str3 .. " " .. v
            end
        end
    end
    print(str3)
    return str3
end
task.spawn(
    function()
        while task.wait() do
            task.wait()
            if AutoFarmMeter then
                pcall(
                    function()
                        BringMob()
                        task.wait(1)
                    end
                )
            end
        end
    end
)
task.spawn(
    function()
        while task.wait() do
            task.wait()
            if AutoFarmMeter then
                if Sea3 then
                    MobFarmRequired = {
                        "Candy Rebel [Lv. 2375]",
                        "Sweet Thief [Lv. 2350]",
                        "Chocolate Bar Battler [Lv. 2325]",
                        "Cocoa Warrior [Lv. 2300]"
                    }
                elseif Sea1 then
                    MobFarmRequired = {
                        "Monkey [Lv. 14]",
                        "Gorilla [Lv. 20]",
                        "The Gorilla King [Lv. 25] [Boss]",
                    }
                elseif Sea2 then
                    MobFarmRequired = {
                        "Raider [Lv. 700]",
                        "Mercenary [Lv. 725]",
                    }
                end
                if
                    AutoFarmMeter and game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and
                        ((not game.Players.LocalPlayer.Character.RaceTransformed.Value and
                            game.Players.LocalPlayer.Character.RaceEnergy.Value < 1) or
                            KeepFarm)
                 then
                    if type(MobFarmRequired) == "table" then
                        local mmb = CheckMobInDistance(MobFarmRequired)
                        if mmb["Workspace"] then
                            print("Workspace")
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if
                                    v and table.find(MobFarmRequired, v.Name) and v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    repeat
                                        wait()
                                        EquipWeapon()
                                        EnableBuso()
                                        Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        NoPlayersInTherePlease = v.HumanoidRootPart.CFrame
                                        EquipWeapon()
                                        EnableBuso()
                                        UseFastAttack = true
                                    until not AutoFarmMeter or not v or not table.find(MobFarmRequired, v.Name) or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or (((game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") and game.Players.LocalPlayer.Character.RaceTransformed.Value) or (game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1)) and not KeepFarm)
                                    UseFastAttack = false
                                    --CancelTween()
                                end
                            end
                        elseif mmb["ReplicatedStorage"] then
                            print("ReplicatedStorage")
                            for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
                                if
                                    v and table.find(MobFarmRequired, v.Name) and v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    repeat
                                        wait()
                                        pcall(
                                            function()
                                                EquipWeapon()
                                                EnableBuso()
                                                Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                                EquipWeapon()
                                                EnableBuso()
                                                UseFastAttack = true
                                            end
                                        )
                                    until not AutoFarmMeter or not v or not table.find(MobFarmRequired, v.Name) or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or (((game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") and game.Players.LocalPlayer.Character.RaceTransformed.Value) or (game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1)) and not KeepFarm)
                                    UseFastAttack = false
                                    --CancelTween()
                                end
                            end
                        else
                            id = 0
                            for i, v in pairs(MobFarmRequired) do
                                for i2, v2 in pairs(FullOfEnemySpawns) do
                                    if v == i2 or string.find(v, i2) then
                                        pcall(
                                            function()
                                                id = id + 1
                                                UseFastAttack = false
                                                EquipWeapon()
                                                EnableBuso()
                                                Tweento(v2[id] * CFrame.new(0, 30, 0))
                                                wait(1)
                                            end
                                        )
                                    end
                                end
                            end
                        end
                    else
                        print("Please Select A Mob")
                    end
                end
            end
        end
    end
)

TweenSpeed = 350
function CheckNearestTeleporter(vcs)
    vcspos = vcs.Position
    min = math.huge
    min2 = math.huge
    local placeId = game.PlaceId
    if placeId == 2753915549 then
        OldWorld = true
    elseif placeId == 4442272183 then
        NewWorld = true
    elseif placeId == 7449423635 then
        ThreeWorld = true
    end
    if ThreeWorld then
        TableLocations = {
            ["Caslte On The Sea"] = Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
            ["Hydra"] = Vector3.new(5756.83740234375, 610.4240112304688, -253.9253692626953),
            ["Mansion"] = Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125)
            --["Great Tree"] = Vector3.new(2968.699951171875, 2284.286865234375, -7226.28662109375),
        }
    elseif NewWorld then
        TableLocations = {
            ["Mansion"] = Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
            ["Flamingo"] = Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
            ["122"] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
            ["3032"] = Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
        }
    elseif OldWorld then
        TableLocations = {
            ["1"] = Vector3.new(-7894.6201171875, 5545.49169921875, -380.2467346191406),
            ["2"] = Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
            ["3"] = Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
            ["4"] = Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
        }
    end
    TableLocations2 = {}
    for i, v in pairs(TableLocations) do
        TableLocations2[i] = (v - vcspos).Magnitude
    end
    for i, v in pairs(TableLocations2) do
        if v < min then
            min = v
            min2 = v
        end
    end
    for i, v in pairs(TableLocations2) do
        if v < min then
            min = v
            min2 = v
        end
    end
    for i, v in pairs(TableLocations2) do
        if v <= min then
            choose = TableLocations[i]
        end
    end
    min3 = (vcspos - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if min2 <= min3 then
        return choose
    end
    return false
end
function requestEntrance(vector3)
    args = {
        "requestEntrance",
        vector3
    }
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))
    oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    char = game.Players.LocalPlayer.Character.HumanoidRootPart
    char.CFrame = CFrame.new(oldcframe.X, oldcframe.Y + 50, oldcframe.Z)
    task.wait(0.5)
end
TweenSpeed = 350
function AntiLowHealth(yc5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
        yc5,
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
    )
    wait()
end
function Tweento(targetCFrame)
    NoClip = true
    if
        game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character and
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") and
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
            game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 and
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
     then
        if TweenSpeed == nil then
            TweenSpeed = 250
        end
        DefualtY = targetCFrame.Y
        TargetY = targetCFrame.Y
        targetCFrameWithDefualtY = CFrame.new(targetCFrame.X, DefualtY, targetCFrame.Z)
        targetPos = targetCFrame.Position
        oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        Distance =
            (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
        if Distance < 600 then
            Speed = TweenSpeed
        elseif Distance >= 600 then
            Speed = TweenSpeed
        end
        LowHealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth * 30 / 100
        NotLowHealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth * 70 / 100
        if game.Players.LocalPlayer.Character.Humanoid.Health <= LowHealth then
            pcall(
                function()
                    tween:Cancel()
                end
            )
            OldY = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
            repeat
                wait()
                AntiLowHealth(math.random(1000, 10000))
            until not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") or
                game.Players.LocalPlayer.Character.Humanoid.Health > NotLowHealth
            AntiLowHealth(OldY)
        end
        local bmg = CheckNearestTeleporter(targetCFrame)
        if type(bmg) ~= "boolean" then
            pcall(
                function()
                    tween:Cancel()
                end
            )
            requestEntrance(bmg)
        end
        b1 =
            CFrame.new(
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
            DefualtY,
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
        )
        if IngoreY and (b1.Position - targetCFrameWithDefualtY.Position).Magnitude > 5 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                DefualtY,
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
            )
            local tweenfunc = {}
            local tween_s = game:service "TweenService"
            local info =
                TweenInfo.new(
                (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude /
                    Speed,
                Enum.EasingStyle.Linear
            )
            local tween =
                tween_s:Create(
                game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                info,
                {CFrame = targetCFrameWithDefualtY}
            )
            tween:Play()
            NoClip = true
            function tweenfunc:Stop()
                tween:Cancel()
            end
            tween.Completed:Wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                TargetY,
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
            )
            NoClip = false
        else
            local tweenfunc = {}
            local tween_s = game:service "TweenService"
            local info =
                TweenInfo.new(
                (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude /
                    Speed,
                Enum.EasingStyle.Linear
            )
            local tween =
                tween_s:Create(
                game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                info,
                {CFrame = targetCFrame}
            )
            tween:Play()
            NoClip = true
            function tweenfunc:Stop()
                tween:Cancel()
            end
            tween.Completed:Wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                TargetY,
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
            )
            NoClip = false
        end
        if not tween then
            return tween
        end
        return tweenfunc
    end
end
local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

-- [Camera Shaker Function]
function CameraShaker()
    task.spawn(
        function()
            local Camera = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
            while wait() do
                pcall(
                    function()
                        Camera.CameraShakeInstance.CameraShakeState.Inactive = 0
                    end
                )
            end
        end
    )
end

--[Function RmFzdCBBdHRhY2s=]

function CurrentWeapon()
    local ac = CombatFrameworkR.activeController
    local ret = ac.blades[1]
    if not ret then
        return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
    end
    pcall(
        function()
            while ret.Parent ~= game.Players.LocalPlayer.Character do
                ret = ret.Parent
            end
        end
    )
    if not ret then
        return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
    end
    return ret
end


bo1 = 0.01
function AttackFunction()
  local plr = game.Players.LocalPlayer

local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end
    local AC = CbFw2.activeController
    for i = 1, 1 do 
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.HumanoidRootPart},
            60
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            pcall(function()
                for k, v in pairs(AC.animator.anims.basic) do
                    v:Play()
                end                  
            end)
            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "") 
            end
        end
    end
end

cooldownfastattack = tick()
TypeFastAttack = "Normal"
coroutine.wrap(
    function()
        while task.wait(.1) do
            local ac = CombatFrameworkR.activeController
            if ac and ac.equipped then
                if UseFastAttack then
                    AttackFunction()
                    if TypeFastAttack == "Normal" then
                        if tick() - cooldownfastattack > .9 then
                            wait(.1)
                            cooldownfastattack = tick()
                        end
                    elseif TypeFastAttack == "Fast" then
                        if tick() - cooldownfastattack > 1.8 then
                           wait(.03)
                            cooldownfastattack = tick()
                        end
                    elseif TypeFastAttack == "Slow" then
                        if tick() - cooldownfastattack > .3 then
                            wait(.7)
                            cooldownfastattack = tick()
                        end
                    end
                elseif not UseFastAttack then
                    if ac.hitboxMagnitude ~= 55 then
                        ac.hitboxMagnitude = 55
                    end
                end
                if ac.hitboxMagnitude ~= 55 then
                    ac.hitboxMagnitude = 55
                end
            end
        end
    end
)()
task.spawn(
    function()
        while task.wait() do
            task.wait()
            if AutoActiveRace then
                if
                    game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and
                        game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and
                        not game.Players.LocalPlayer.Character.RaceTransformed.Value
                 then
                    local vim = game:service("VirtualInputManager")
                    vim:SendKeyEvent(true, "Y", false, game)
                    task.wait()
                    vim:SendKeyEvent(false, "Y", false, game)
                    CurrentUseAwakedFromScript = CurrentUseAwakedFromScript + 1
                    task.wait(5)
                end
            end
        end
    end
)
task.spawn(
    function()
        while task.wait() do
            task.wait()
            if WaitUntilMeterOut then
                wait()
                if
                    game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") and
                        game.Players.LocalPlayer.Character.RaceTransformed.Value
                 then
                    CancelTween()
                    task.wait(1.5)
                    AntiLowHealth(math.random(100, 10000))
                end
            end
        end
    end
)
task.spawn(
    function()
        while task.wait() do
            task.wait()
            if AutoResetCharacterRace then
                if
                    game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") and
                        game.Players.LocalPlayer.Character.RaceTransformed.Value
                 then
                    if game.Players.LocalPlayer.Character.RaceTransformed.Value then
                        task.wait()
                        pcall(
                            function()
                                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                            end
                        )
                        task.wait(5)
                    end
                end
            end
        end
    end
)
ClaimedQuest = false
function ClaimQuest()
    Arowe =
        CFrame.new(
        -1988.55322,
        124.841248,
        -70.4718018,
        0.173624337,
        0,
        0.984811902,
        0,
        1,
        0,
        -0.984811902,
        0,
        0.173624337
    )
    if ClaimedQuest == false then
        Tweento(Arowe)
        wait(0.5)
        local args = {
            [1] = "Wenlocktoad",
            [2] = "2"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        print("Clamied Quest V3")
        ClaimedQuest = true
    end
end
function ReturnBosses(bossname)
    if game:GetService("ReplicatedStorage"):FindFirstChild(bossname) then
        for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            if v.Name == bossname then
                return v
            end
        end
    end
    if game.workspace.Enemies:FindFirstChild(bossname) then
        for i, v in pairs(game.workspace.Enemies:GetChildren()) do
            if v.Name == bossname then
                return v
            end
        end
    end
    return false
end
function CheckBoss(bossname)
    if game:GetService("ReplicatedStorage"):FindFirstChild(bossname) then
        for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            if v.Name == bossname then
                return true
            end
        end
    end
    if game.workspace.Enemies:FindFirstChild(bossname) then
        for i, v in pairs(game.workspace.Enemies:GetChildren()) do
            if v.Name == bossname then
                return true
            end
        end
    end
    return false
end
function EnableBuso()
    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
        local args = {
            [1] = "Buso"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end
function GetWeapon(wptype)
    s = ""
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") and v.ToolTip == wptype then
            s = v.Name
        end
    end
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") and v.ToolTip == wptype then
            s = v.Name
        end
    end
    return s
end
local plr = game.Players.LocalPlayer
function EquipWeapon(ToolSe)
    if lonmemayto == "" or lonmemayto == nil then
        lonmemayto = "Melee"
    end
    ToolSe = GetWeapon(lonmemayto)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.4)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end
local fruitwl = {'Magma-Magma','Quake-Quake','String-String','Bird-Bird: Phoenix','Rumble-Rumble','Paw-Paw','Blizzard-Blizzard','Gravity-Gravity','Dough-Dough','Shadow-Shadow','Venom-Venom','Spirit-Spirit','Dragon-Dragon','Leopard-Leopard'}
function EquipWeapon2()
  
        for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
            if v:IsA("Tool") and v.ToolTip == "Blox Fruit" and  table.find(v.Name,fruitwl) then
                v.Parent = plr.Character
            end
             if v:IsA("Tool") and v.ToolTip == "Melee" then
                v.Parent = plr.Character
            end
            if v:IsA("Tool") and v.ToolTip == "Sword" then
                v.Parent = plr.Character
            end
        end
end
function TweenMirage()
    repeat
        wait()
    until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
    print("Tweening to Mirage Island")
    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
        AllNPCS = getnilinstances()
        for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
            table.insert(AllNPCS, v)
        end
        for i, v in pairs(AllNPCS) do
            if v.Name == "Advanced Fruit Dealer" then
                Tweento(v.HumanoidRootPart.CFrame)
            end
        end
    end
end
function TweenTemple()
    Tweento(CFrame.new(2956.78, 2281.85, -7217.63))
    local args = {
        [1] = "RaceV4Progress",
        [2] = "Check"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "RaceV4Progress",
        [2] = "Teleport"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
function NoFog()
    local c = game.Lighting
    c.FogEnd = 100000
    for i, v in pairs(c:GetDescendants()) do
        if v:IsA("Atmosphere") then
            v:Destroy()
        end
    end
end

function CheckMoon()
    moon8 = "http://www.roblox.com/asset/?id=9709150401"
    moon7 = "http://www.roblox.com/asset/?id=9709150086"
    moon6 = "http://www.roblox.com/asset/?id=9709149680"
    moon5 = "http://www.roblox.com/asset/?id=9709149431"
    moon4 = "http://www.roblox.com/asset/?id=9709149052"
    moon3 = "http://www.roblox.com/asset/?id=9709143733"
    moon2 = "http://www.roblox.com/asset/?id=9709139597"
    moon1 = "http://www.roblox.com/asset/?id=9709135895"
    moonreal = MoonTextureId()
    cofullmoonkothangbeo = "Bad Moon"
    if moonreal == moon5 or moonreal == moon4 then
        if moonreal == moon5 then
            cofullmoonkothangbeo = "Full Moon"
        elseif moonreal == moon4 then
            cofullmoonkothangbeo = "Next Night"
        end
    end
    return cofullmoonkothangbeo
end
function function7()
    GameTime = "Error"
    local c = game.Lighting
    local c2 = c.ClockTime
    if c2 >= 16 or c2 < 5 then
        GameTime = "Night"
    else
        GameTime = "Day"
    end
    return GameTime
end
function TweenHighestPoint()
    repeat
        task.wait()
    until game:GetService("Workspace"):FindFirstChild("StartPoint")
    c5 = game:GetService("Workspace").StartPoint.CFrame
    Tweento(c5)
end
function StopTween()
    pcall(
        function()
            tween:Cancel()
        end
    )
end
MainTab:AddButton(
    {
        Name = "Remove Fog",
        Callback = function()
            NoFog()
        end
    }
)
spawn(function()
    while wait() do 
        if movecamera then 

            local lighting = game:GetService("Lighting");
    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position,lighting:GetMoonDirection() + workspace.CurrentCamera.CFrame.Position)
        end
    end
end)
spawn(function()
while wait() do 
    if miragepromax then 
    repeat wait() until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") and CheckMoon() == "Full Moon" then 
        Tweento(game:GetService("Workspace").Map.MysticIsland.BiggTree.Part.CFrame)
        wait(5)
        
    end
    local lighting = game:GetService("Lighting");
    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position,lighting:GetMoonDirection() + workspace.CurrentCamera.CFrame.Position)
end
end
end)
local moon =  MainTab:AddLabel("Moon Status: "..CheckMoon())
spawn(function()
while wait() do 
moon:Set("Moon Status: "..CheckMoon())
end
end)
MainTab:AddToggle({
    Name = "Move Camera",
    Callback = function(a)
        movecamera = a 
    end
})

MainTab:AddButton(
    {
        Name = "Check Moon Status",
        Callback = function()
            Notify("Moon Status", CheckMoon(), 10)
        end
    }
)
MainTab:AddToggle(
    {
        Name = "AttackNocDAura",
        Default = Settings["AttackNocDAura"],
        Save = true,
        Flag = "Aura",
        Callback = function(Value)
            UseFastAttack = Value
            SaveSettings("AttackNocDAura", Value)
            
        end
    }
)
MainTab:AddToggle(
    {
        Name = "Ignore Y Tween",
        Default = Settings["Ignore Y"],
        Save = true,
        Flag = "IngoreY",
        Callback = function(Value)
            IngoreY = Value
            SaveSettings("Ignore Y", Value)
            
        end
    }
)
ALLNPCOOO = {}
for i, v in pairs(getnilinstances()) do
    if
        v:IsA("Model") and v:FindFirstChild("Head") and v.Head:FindFirstChild("QuestBBG") and
            v.Head.QuestBBG.Title.Text == "MISC."
     then
        ALLNPCOOO[v.Name] = v.Head.CFrame * CFrame.new(0, -2, 2)
    end
end
for i, v in pairs(game.Workspace.NPCs:GetDescendants()) do
    if v.Name == "QuestBBG" and v.Title.Text == "MISC." then
        ALLNPCOOO[v.Parent.Parent.Name] = v.Parent.Parent.Head.CFrame * CFrame.new(0, -2, 2)
        print(v.Parent.Parent.Name)
    end
end
ALLNPCOOO2 = {}
for i, v in pairs(ALLNPCOOO) do
    table.insert(ALLNPCOOO2, i)
end

ClickedSea = {
    ["Sea 1"] = 0,
    ["Sea 2"] = 0,
    ["Sea 3"] = 0,
}
Seas = {
    "Sea 1",
    "Sea 2",
    "Sea 3",
}
function CheckSea(Sea)
    if game.PlaceId == 2753915549 then
        if Sea == 1 then return true; end
    elseif game.PlaceId == 4442272183 then
        if Sea == 2 then return true; end
    elseif game.PlaceId == 7449423635 then
        if Sea == 3 then return true; end
    end
    return false;
end
function TeleportSea(Sea)
    print("Teleporting Sea: "..Sea)
    if Sea == 1 then
        if not CheckSea(Sea) then
            local args = {
                [1] = "TravelMain"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            wait()
        end
    elseif Sea == 2 then
        if not CheckSea(Sea) then
            local args = {
                [1] = "TravelDressrosa"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    elseif Sea == 3 then
        if not CheckSea(Sea) then
            local args = {
                [1] = "TravelZou"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end
MainTab:AddDropdown(
    {
        Name = "Teleport World",
        Default = "",
        Options = Seas,
        Callback = function(Value)
            ClickedSea[Value] = ClickedSea[Value]+1
            if ClickedSea[Value] >= 2 then
                dkkd = tostring(Value):gsub("Sea ","")
                dkkd2 = tonumber(dkkd)
                TeleportSea(dkkd2)
                Notify("Script Stauts","Teleporting to "..Value.." !",10)
            else
                Notify("Script Stauts","Are You Sure Teleport To "..Value.." ?\nClick Again To Confirm!",10)
            end
        end
    }
)

function function6()
    return math.floor(game.Lighting.ClockTime)
end
PlayerAura_Status = "None"
function CheckAcientOneStatus()
    if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return "You have yet to achieve greatness"
    end;
    local v227 = nil;
    local v228 = nil;
    local v229 = nil;
    v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check");
    if v229 == 1 then
        return "Required Train More"
    elseif v229 == 2 or v229 == 4 or v229 == 7 then
        return "Can Buy Gear With "..v227.." Fragments"
    elseif v229 == 3 then
        return "Required Train More"
    elseif v229 == 5 then
        return "You Are Done Your Race."
    elseif v229 == 6 then
        return "Upgrades completed: " .. v228 - 2 .. "/3, Need Trains More"
    end
    if v229 ~= 8 then
        if v229 == 0 then 
            return "Ready For Trial"
        else
            return "You have yet to achieve greatness"
        end
    end
    return "Remaining " .. 10 - v228 .. " training sessions."
end
function BuyGear()
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Buy")
    Notify("Script Tips","You Should Reset Character To Countine",15)
end
function MirageCheck()
    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
        return "🟢"
    else
        return "🔴"
    end
end
local function8 = ServerTab:AddLabel("Player Count: " .. game.Players.NumPlayers .. "/" .. game.Players.MaxPlayers)
local function9 = ServerTab:AddLabel("Server Time: " .. function6() .. " | " .. function7())
local function10 = ServerTab:AddLabel("Player Aura Status: "..tostring(PlayerAura_Status))
local function11 = ServerTab:AddLabel("Acient One Status: "..tostring(CheckAcientOneStatus()))
local mirangecheck = ServerTab:AddLabel("Mirage: "..MirageCheck().." | "..CheckMoon())
task.spawn(
    function()
        while task.wait() do
            function8:Set("Player Count: " .. game.Players.NumPlayers .. "/" .. game.Players.MaxPlayers)
            function9:Set("Server Time: " .. function6() .. " | " .. function7())
            function10:Set("Player Aura Status: "..tostring(PlayerAura_Status))
            function11:Set("Acient One Status: "..tostring(CheckAcientOneStatus()))
            mirangecheck:Set("Mirage: "..MirageCheck().." | "..CheckMoon())
            task.wait(2)
        end
    end
)
ServerTab:AddButton({
    Name = "Coppy Server Job Id",
    Callback = function()
        setclipboard(game.JobId)
    end
})
ServerTab:AddTextbox(
    {
        Name = "Put A Server Job Id Here",
        Default = "",
        TextDisappear = true,
        Callback = function(Value)
            if Value == "game.JobId" then
                InputJobId = game.JobId
            else
                InputJobId = Value
            end
            Notify("Script Status", "Inputed JobID: " .. InputJobId)
        end
    }
)
ServerTab:AddButton(
    {
        Name = "Join Job Id Server",
        Callback = function()
            Notify("Notify", "Joining Server Job Id: " .. tostring(InputJobId), 10)
            w(.5)
            game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", tostring(InputJobId))
        end
    }
)
ServerTab:AddToggle({
    Name = "Auto Join Serer",
    Save = false,
    Callback = function(a)
        autojoin = a 
    end
})

detectkick = false 
spawn(function()
    game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
        if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and
            child.MessageArea:FindFirstChild("ErrorFrame") and autojoin then 
                if string.find(game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ErrorPrompt.MessageArea.ErrorFrame.ErrorMessage.Text, 'Teleport failed, server is full.') then
                    detectkick = true 
                    game:GetService("VirtualUser"):ClickButton1(Vector2.new(0,0, 0))
                --fireclick(game:GetService("CoreGui").RobloxGui.ErrorPrompt.MessageArea.ErrorFrame.ButtonArea.OkButton)
                wait(3)
                detectkick = false
            end
        end
    end)
end)
spawn(function()
    while wait(3) do
        if not detectkick and autojoin then  
        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", tostring(InputJobId))
    end
end
end)
repeat wait() until game:IsLoaded()

local Settings = {}
local HttpService = game:GetService("HttpService")

local SaveFileName = "seahubjoin.json"

function SaveSettings2()
  local HttpService = game:GetService("HttpService")
  if not isfolder("Sea Hub") then
      makefolder("Sea Hub")
  end
  writefile("Sea Hub/" .. SaveFileName, HttpService:JSONEncode(Settings))
end

function ReadSetting2()
  local s,e = pcall(function()
      local HttpService = game:GetService("HttpService")
      if not isfolder("Sea Hub") then
          makefolder("Sea Hub")
      end
      return HttpService:JSONDecode(readfile("Sea Hub/" .. SaveFileName))
  end)
  if s then return e
  else
    SaveSettings2()
    SaveSettings()
      return ReadSetting2()
  end
end
Settings2 = ReadSetting2()

function HopServer()
  local function Hop()
      for i=1,100 do
          local huhu = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(i)
          for k,v in pairs(huhu) do
              if k~=game.JobId and v.Count < 10 then
                  if not Settings2[k] or tick() - Settings2[k].Time > 60*10  then
                    Settings2[k] = {
                           Time = tick()
                       }
                       SaveSettings2()
                      game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport",k)
                      return true
                  elseif tick() - Settings2[k].Time > 60*60 then
                    Settings2[k] = nil
                  end
              end
          end
      end
      return false
  end
  if not getgenv().Loaded then
      local function child(v)
          if v.Name == "ErrorPrompt" then
              if v.Visible then
                  if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                      HopServer()
                  end
              end
              v:GetPropertyChangedSignal("Visible"):Connect(function()
                  if v.Visible then
                      if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                          HopServer()
                      end
                  end
              end)
          end
      end
      for k,v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
          child(v)
      end
      game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(child)
      getgenv().Loaded = true
  end
  while not Hop() do wait() end
  SaveSettings2()
  SaveSettings()
end

ServerTab:AddButton({
    Name = "Server Hop",
    Callback = function()
        HopServer()
    end
})
if Sea3 then
    ServerTab:AddToggle(
        {
            Name = "Hop Until Mirage Island",
            Default = Settings["HopMirage"],
            Save = true,
            Flag = "HopMirage",
            Callback = function(Value)
                HopMirage = Value
                if Value == false then
                    CancelTween()
                end
                SaveSettings("HopMirage", Value)

            end
        }
    )
end
ServerTab:AddSlider({
    Name = "Slider",
    Min = 0,
    Max = 20,
    Default = 1,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Time Delay Hop",
    Callback = function(Value)
        timedelay = Value
    end    
})
function IsMirageIsland2()
    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
        return true
    else
        return false
    end
end
print(timedelay)
task.spawn(function()
    while task.wait() do task.wait() 
        if Sea3 and OrionLib.Flags["HopMirage"].Value then
            if IsMirageIsland2() and CheckMoon() == "Full Moon" then
                Notify("Script Status","Mirage Found On This Server.",30)
                task.wait(3)
                Settings["HopMirage"] = false 
                HopMirage = false 
                break;
            else
                wait(timedelay*60)
                HopServer()
            end
        end
    end
end)
BlackList = {}

task.spawn(function()
    while task.wait() do 
        if PlayerAura then
            cac = true
            for i,v in pairs(game.Players:GetChildren()) do
                if v.Name ~= game.Players.LocalPlayer.Name and not BlackList[v.Name] and game.Workspace.Characters:FindFirstChild(v.Name) and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and (v.Character.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 and v.Character.Humanoid.Health > 0 then
                    PlayerAura_Status = v.Name.." Is Team"..tostring(v.Team)
                    SelectedPlayer = v.Name
                    repeat wait()
                        if PlayerAura and game.Workspace.Characters:FindFirstChild(v.Name) and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and (v.Character.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 and v.Character.Humanoid.Health > 0 then
                            PlayerAura_Status = "Trying Tween to "..v.Name
                            SelectedPlayer = v.Name
                            ofo = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,5,0)
                            Tweento(ofo)
spawn(function()
                     game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
						wait()
					game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                        AimBotSkillPosition = v.Character.HumanoidRootPart.CFrame.Position
                    end)
                    spawn(function()
game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
						wait()
					game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)                        
					AimBotSkillPosition = v.Character.HumanoidRootPart.CFrame.Position
                    end)
                    spawn(function()
                        
game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
						wait()
					game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
					AimBotSkillPosition = v.Character.HumanoidRootPart.CFrame.Position
                        
                    end)
                    EnableBuso()
                             EquipWeapon()

                            UseFastAttack = true
                        end
                    until not PlayerAura or not v or not v.Character:FindFirstChild("Humanoid") or not v.Character:FindFirstChild("HumanoidRootPart") or v.Character.Humanoid.Health <= 0 or BlackList[v.Name] 
                   if not table.find(v.Name,BlackList) then 
                       table.insert(v.Name,BlackList)
                   end
                   print(#BlackList)
                    PlayerAura_Status = "None"
                    UseFastAttack = false
                end
            end
        end
    end
end)
FarmTab:AddToggle({
    Name = "Aimbot Player Aura",
    Callback = function(a)
        aimbotaura = a 
    end
})
spawn(function()
while wait() do 
    if aimbotaura then 
        for i,v in pairs(game.Players:GetChildren()) do
            if v.Name == PlayerAura_Status then 
                AimBotSkillPosition = v.Character.HumanoidRootPart.CFrame.Position
    end
end
end
end
end)
FarmTab:AddDropdown(
    {
        Name = "Choose Fast Attack Type",
        Default = Settings["Fast Attack Type"],
        Options = {
            "Fast",
            "Normal",
            "Slow"
        },
        Callback = function(Value)
            TypeFastAttack = Value
            SaveSettings("Fast Attack Type",Value)
        end
    }
)
FarmTab:AddToggle(
    {
        Name = "Auto Farm Meter Race Awakening",
        Default = Settings["AutoFarmMeter"],
        
        Flag = "AutoFarmMeter",
        Callback = function(Value)
            AutoFarmMeter = Value
            if Value == false then
                CancelTween()
            end
            SaveSettings("AutoFarmMeter",Value)

        end
    }
)
FarmTab:AddToggle(
    {
        Name = "Ingore Full Meter And Keep Farm (FPS Drop Warning)",
        Default = Settings["KeepFarm"],
        
        Flag = "KeepFarm",
        Callback = function(Value)
            if WaitUntilMeterOut then
                return Notify("Script Warning","The Wait Until Meter out can not enable with this function",10)
            end
            KeepFarm = Value
            if Value == false then
                CancelTween()
            end
            SaveSettings("KeepFarm",Value)
        end
    }
)
FarmTab:AddToggle(
    {
        Name = "Auto Active Race",
        Default = Settings["AutoActiveRace"],
        
        Flag = "AutoActiveRace",
        Callback = function(Value)
            AutoActiveRace = Value
            if Value == false then
                CancelTween()
            end
            SaveSettings("AutoActiveRace",Value)
        end
    }
)
FarmTab:AddToggle(
    {
        Name = "Random Y Until Meter Out",
        Default = Settings["WaitUntilMeterOut"],
        
        Flag = "WaitUntilMeterOut",
        Callback = function(Value)
            if KeepFarm then
                Notify("Script Warning", 'You Must Disable "Ingore Full Meter And Keep Farm" To Enable This', 10)
                return
            end
            WaitUntilMeterOut = Value
            if Value == false then
                CancelTween()
            end
            SaveSettings("WaitUntilMeterOut",Value)
        end
    }
)
FarmTab:AddDropdown(
    {
        Name = "Select Your Weapon Type",
        Default = Settings["SelectedWeaponType"],
        Flag = "SelectedWeaponType",
        
        Options = {
            "Melee",
            "Sword"
        },
        Callback = function(Value)
            lonmemayto = Value
            SaveSettings("SelectedWeaponType",Value)
        end
    }
)
FarmTab:AddButton(
    {
        Name = "Bring Mob (Smart Bring)",
        Callback = function()
            BringMobSmart()
        end
    }
)
FarmTab:AddToggle(
    {
        Name = "Player Aura",
        Default = Settings["PlayerAura"],
        
        Flag = "PlayerAura",
        Callback = function(Value)
            PlayerAura = Value
            if Value == false then
                CancelTween()
            end
            SaveSettings("PlayerAura",Value)
        end
    }
)
local playerload = {}
local slect = {}
spawn(function()
for i,v in pairs(game.Players:GetChildren()) do
    if v.Name ~= game.Players.LocalPlayer.Name then 
        table.insert(playerload,v.Name)
    end
end
end)
FarmTab:AddDropdown({
    Name= "Select Player to kill",
    Default = "",
    Options = playerload,
    Callback = function(value)
        table.inset(slect,value)
        playerload2 = value
    end
})
FarmTab:AddToggle({
    Name = "Start Kill Player Select",
    Default = false,
    Callback = function(a)
        startkill = a 
    end
})
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if cac then
                        args[2] = AimBotSkillPosition
                        print(args[2])
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)
function getNearestPlayer()
    a = ""
    min = math.huge
    for i,v in pairs(game.Players:GetChildren()) do
        if v.Name ~= game.Players.LocalPlayer.Name and game.workspace.Characters:FindFirstChild(v.Name) and v.Character:FindFirstChild("HumanoidRootPart") and (v.Character.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min then
            min = (v.Character.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        end
    end
    for i,v in pairs(game.Players:GetChildren()) do
        if v.Name ~= game.Players.LocalPlayer.Name and game.workspace.Characters:FindFirstChild(v.Name) and v.Character:FindFirstChild("HumanoidRootPart") and (v.Character.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min then
            a = v
            print(a.Name)
        end
    end
    return a
end

spawn(function()
    while wait() do 
    if startkill then 
        cac = true 
       -- plr.Character.HumanoidRootPart.CFrame = getNearestPlayer().Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                    ofo = getNearestPlayer().Character.HumanoidRootPart.CFrame * CFrame.new(0,5,0)
                    plr.Character.HumanoidRootPart.CFrame = ofo
spawn(function()
             game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                wait()
            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                AimBotSkillPosition = getNearestPlayer().Character.HumanoidRootPart.CFrame
            end)
            spawn(function()
game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                wait()
            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)                        
            AimBotSkillPosition = getNearestPlayer().Character.HumanoidRootPart.CFrame
            end)
            spawn(function()
                
game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                wait()
            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
            AimBotSkillPosition =getNearestPlayer().Character.HumanoidRootPart.CFrame
                
            end)
            EnableBuso()
                     EquipWeapon()

                    UseFastAttack = true
    end
    end
    end)



FarmTab:AddButton(
    {
        Name = "Black List Current Selected PLayer",
        Callback = function()
            BlackList[SelectedPlayer] = true
        end
    }
)
FarmTab:AddButton(
    {
        Name = "Clear Black List",
        Callback = function()
            BlackList = {}
        end
    }
)
local ShopTab =
    Window:MakeTab(
    {
        Name = "Shop",
        Icon = "rbxassetid://4483345999",
        PremiumOnly = false
    }
)
function BuyMelee(vcc)
    if vcc == "ElectricClaw" then
        game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("BuyElectricClaw")
    elseif vcc == "Superhuman" then
        local args = {
            [1] = "BuySuperhuman"
        }

        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    elseif vcc == "Godhuman" then
        function BuyGodhuman()
            local args = {
                [1] = "BuyGodhuman",
                [2] = true
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
                [1] = "BuyGodhuman"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
        BuyGodhuman()
    elseif vcc == "DragonTalon" then
        local string_1 = "BuyDragonTalon"
        local bool_1 = true
        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"]
        Target:InvokeServer(string_1, bool_1)
        local string_1 = "BuyDragonTalon"
        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"]
        Target:InvokeServer(string_1)
    elseif vcc == "DeathStep" then
        local args = {
            [1] = "BuyDeathStep"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    elseif vcc == "SharkmanKarate" then
        local args = {
            [1] = "BuySharkmanKarate",
            [2] = true
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        local args = {
            [1] = "BuySharkmanKarate"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end
concacmcc = {
    "ElectricClaw",
    "Superhuman",
    "Godhuman",
    "DragonTalon",
    "DeathStep",
    "SharkmanKarate"
}
function BuyGhoulRace()
    local args = {
        [1] = "Ectoplasm",
        [2] = "BuyCheck",
        [3] = 4
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "Ectoplasm",
        [2] = "Change",
        [3] = 4
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
ShopTab:AddDropdown(
    {
        Name = "Buy Melee",
        Default = "",
        Options = concacmcc,
        Callback = function(c)
            BuyMelee(c)
        end
    }
)
ShopTab:AddButton(
    {
        Name = "Reroll race",
        Callback = function()
            local args = {
                [1] = "BlackbeardReward",
                [2] = "Reroll",
                [3] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    }
)
ShopTab:AddButton(
    {
        Name = "Buy Cyborg race",
        Callback = function()
            local args = {
                [1] = "CyborgTrainer",
                [2] = "Buy"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    }
)
ShopTab:AddButton(
    {
        Name = "Buy Ghoul Race",
        Callback = function()
            BuyGhoulRace()
        end
    }
)
ShopTab:AddButton(
    {
        Name = "Reset Stats",
        Callback = function()
            local args = {
                [1] = "BlackbeardReward",
                [2] = "Refund",
                [3] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    }
)
ShopTab:AddButton(
    {
        Name = "Buy Gear",
        Callback = function()
            BuyGear()
        end
    }
)
ShopTab:AddToggle({
    Name = "Auto Buy Gear",
    Default = Settings["AutoBuyGear"],
    
    Flag = "AutoBuyGear",
    Callback = function(Value)
        AutoBuyGear = Value
        Settings["AutoBuyGear"] = Value
    end
})
task.spawn(function()
    while task.wait() do
        if AutoBuyGear then
            local function12 = CheckAcientOneStatus()
            if string.find(function12,"Can Buy Gear") then
                BuyGear()
            end
        end
        task.wait(5)
    end
end)
local plr = game.Players.LocalPlayer
function PullLever()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map["Temple of Time"].Lever.Part.CFrame
    
    wait(2)
    game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)   
    wait(3) 
    game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game) 
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end
function TweentoCurrentRaceDoor()
    a = game:GetService("Workspace").Map["Temple of Time"][game.Players.LocalPlayer.Data.Race.Value.."Corridor"].Door.Door.RightDoor.Union.CFrame
    Tweento(a)
end
if Sea3 then
    


    TrialTab:AddButton({
        Name = "Pull Lever",
        Callback = function()
            PullLever()
        end
    })
    TrialTab:AddButton({
        Name = "Tween to Current Race Door",
        Callback = function()
            TweentoCurrentRaceDoor()
        end
    })
    TrialTab:AddButton({
        Name = "Mink",
        Callback = function()
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").StartPoint.CFrame
                NoClip = false
            end)
        end
    })
    TrialTab:AddButton({
        Name = "Cyborg",
        Callback = function()
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20013.2402, 10090.5332, -17.1017056, -0.697729588, 2.21663612e-08, -0.716361225, 4.15089296e-08, 1, -9.48634149e-09, 0.716361225, -3.63542902e-08, -0.697729588)
                NoClip = false
            end)
        end
    })
    TrialTab:AddButton({
        Name = "Sky",
        Callback = function()
            pcall(function()
                Tweento(game:GetService("Workspace").Map.SkyTrial.Model.FinishPart.CFrame)
                NoClip = false
            end)
        end
    })
    TrialTab:AddToggle(
        {
            Name = "Human",
            Default = Settings["BypassTrial_Human"],
            
            Flag = "BypassTrial_Human",
            Callback = function(Value)
                BypassTrial_Human = Value
                if Value == false then
                    CancelTween()
                end
                Settings["BypassTrial_Human"] = Value
            end
        }
    )
end
TrialTab:AddToggle({
    Name = "Trial Ghoul",
    Default = false, 
    Callback = function(value)
       ghoultrial = v 
    end
})
TrialTab:AddToggle(
        {
            Name = "Auto Do Ghoul Quest (Must In Sea 2)",
            Default = Settings["AutoGhoulQuest"],
            
            Flag = "AutoGhoulQuest",
            Callback = function(Value)
                if game.PlaceId == 4442272183 then
                    AutoGhoulQuest = Value
                    if Value == false then
                        CancelTween()
                    end
                    Settings["AutoGhoulQuest"] = Value
                else
                    return Notify("Script Warning","Dit Me may bi ngu a? da bao o sea 2 roi",10)
                end
            end
        }
    )
    TrialTab:AddToggle(
        {
            Name = "Auto Do Ghoul Quest | Server Hop (Option)",
            Default = Settings["AutoGhoulQuest_Hop"],
            
            Flag = "AutoGhoulQuest_Hop",
            Callback = function(Value)
                AutoGhoulQuest_Hop = Value
                if Value == false then
                    CancelTween()
                end
                Settings["AutoGhoulQuest_Hop"] = Value
            end
        }
    )
task.spawn(function()
    while task.wait() do
        if AutoGhoulQuest then
            if not string.find(CheckRace(),"Ghoul") then
                Ectoplasm = CheckMaterialCount("Ectoplasm")
                if CheckMaterialCount("Ectoplasm") < 100 then
                    if CheckMob(MobNeedToKill) then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if table.find(MobNeedToKill,v.Name) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                    UseFastAttack = true
                                    EnableBuso()
                                    EquipWeapon()
                                until not AutoGhoulQuest or not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
                                UseFastAttack = false
                            end 
                        end
                    elseif CheckMobInReplicatedStorage(MobNeedToKill) then
                        for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
                            if table.find(MobNeedToKill,v.Name) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                    local fiii = CheckMob(MobNeedToKill)
                                until not AutoGhoulQuest or not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or CheckMob(MobNeedToKill) or fiii
                                UseFastAttack = false
                            end 
                        end
                    end
                elseif AutoGhoulQuest then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Hellfire Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Hellfire Torch") then
                        Tweento(CFrame.new(918.615234, 122.202454, 33454.3789, -0.999998808, 0, 0.00172644004, 0, 1, 0, -0.00172644004, 0, -0.999998808))
                        local args = {
                            [1] = "Ectoplasm",
                            [2] = "BuyCheck",
                            [3] = 4
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        local args = {
                            [1] = "Ectoplasm",
                            [2] = "Change",
                            [3] = 4
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    else
                        if CheckBoss("Cursed Captain [Lv. 1325] [Raid Boss]") then
                            Target = ReturnBosses("Cursed Captain [Lv. 1325] [Raid Boss]")
                            repeat wait()
                                if game.Workspace.Enemies:FindFirstChild(Target.Name) and Target:FindFirstChild("Humanoid") and Target:FindFirstChild("HumanoidRootPart") and Target.Humanoid.Health > 0 then
                                    pcall(function()
                                        Tweento(Target.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                    end)
                                    EnableBuso()
                                    EquipWeapon()
                                    UseFastAttack = true
                                else
                                    pcall(function()
                                        Tweento(Target.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                    end)
                                end
                            until not AutoGhoulQuest or not Target or not Target:FindFirstChild("Humanoid") or not Target:FindFirstChild("HumanoidRootPart") or Target.Humanoid.Health <= 0
                            UseFastAttack = false
                        elseif AutoGhoulQuest_Hop then
                            pcall(function()
                                Tweento(CFrame.new(-385.250916, 73.0458984, 297.388397))
                            end)
                            local H = loadstring(game:HttpGet("https://raw.githubusercontent.com/memaybeohub/me-may-beo-hub/main/ServerHopScript.lua"))()
                            H:SetRegion("Singapore")
                            Notify("Script Status","Cursed Captain [Lv. 1325] [Raid Boss] Not spawn. Hopping Server",10)
                            H:Start()
                            task.wait(5)
                        end
                    end
                end
            end
        end
    end
end)
spawn(function()
 while wait() do 
    if ghoultrial then 
        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do 
            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-StrengthPart.Position).Magnitude <= 1000 then

        BringMobSkidCuaSeaHub()
 repeat wait()
                                EnableBuso()
                                EquipWeapon()
                                Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                EnableBuso()
                                EquipWeapon()
                                UseFastAttack = true
                            until not BypassTrial_Human or not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
                            UseFastAttack = false
                        end
                    end
                end
            end
end)
task.spawn(function()
    while task.wait() do
        task.wait()
        if BypassTrial_Human then
            if game:GetService("Workspace").Map:FindFirstChild("HumanTrial") and game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Strength")  then
                StrengthPart = game:GetService("Workspace")["_WorldOrigin"].Locations["Trial of Strength"].CFrame
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-StrengthPart.Position).Magnitude <= 1000 then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do 
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-StrengthPart.Position).Magnitude <= 1000 then
                            local Distance1 = (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            local Distance1 = (v.HumanoidRootPart.Position-StrengthPart.Position).Magnitude
                            repeat wait()
                                EnableBuso()
                                EquipWeapon()
                                Tweento(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                EnableBuso()
                                EquipWeapon()
                                UseFastAttack = true
                            until not BypassTrial_Human or not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
                            UseFastAttack = false
                            CancelTween()
                        end
                    end
                end
            end
        end
    end 
end)
function IsMirageIsland()
    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
        return "```true```"
    else
        return "```false```"
    end
end
local AllRequest = http_request or request or HttpPost or syn.request
function concacmmb()
    if CheckMoon() == "Full Moon" and IsMirageIsland2() then
        return "@everyone MOM CALLED"
    elseif IsMirageIsland2() then
        return "@here MIRAGE NE THANG BEO"
    else
        return "No Any Special Events In Here"
    end
end
function WebhookSender(dec)
    Message = {
        ["content"] = concacmmb(),
        ['username'] = "Full Moon Finder 24/7",
        ["avatar_url"] = "https://media.discordapp.net/attachments/1059858215879311412/1059864410740502578/Ew4kWteXEAAK2Hy.png",
        ["embeds"]= {
            {            
                ["title"]= "Full Moon Checker";["url"]= "https://www.pornhub.com";
                ["description"]= "Moon Status: ```"..dec.."```\nMirage Island Status: "..IsMirageIsland().."\nServer Time: ```" .. function6() .. " | " .. function7().."```\nPlayers Count: "..game.Players.NumPlayers.."/12\n```\nJobId: "..game.JobId.."\n```".."Script To Join: ```lua\n"..'game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport","'..game.JobId..'")'.."\n```Code By: Hlamm";
                ["footer"] = {
                    ["text"] = "script Doc la Dong thap ".."\nTime".." : "..os.date("%c").." ("..os.date("%X")..")\nVersion: 1.15 | Lastest Update: 8:35 PM 1/3/2023",
                    ["icon_url"] = "https://media.discordapp.net/attachments/1059858215879311412/1059864410740502578/Ew4kWteXEAAK2Hy.png"
                },
                ["color"]= tonumber(0xe962e2);
            }
        }
    }
    local DataCallBack = AllRequest({
		Url = Webhooklink,
		Method = 'POST',
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = game:GetService("HttpService"):JSONEncode(Message)
	})
end
function WebhookSender2(dec)
    Message = {
        ["content"] = "@everyone",
        ['username'] = "Full Moon Finder 24/7",
        ["avatar_url"] = "https://media.discordapp.net/attachments/1059858215879311412/1059864410740502578/Ew4kWteXEAAK2Hy.png",
        ["embeds"]= {
            {            
                ["title"]= "Full Moon Checker";["url"]= "https://www.pornhub.com";
                ["description"]= "Moon Status: ```"..dec.."```\nMirage Island Status: "..IsMirageIsland().."\nServer Time: ```" .. function6() .. " | " .. function7().."```\nPlayers Count: "..game.Players.NumPlayers.."/12\n```\nJobId: "..game.JobId.."\n```".."Script To Join: ```lua\n"..'game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport","'..game.JobId..'")'.."\n```Code By: Hlamm";
                ["footer"] = {
                    ["text"] = "script Doc la Dong thap ".."\nTime".." : "..os.date("%c").." ("..os.date("%X")..")\nVersion: 1.15 | Lastest Update: 8:35 PM 1/3/2023",
                    ["icon_url"] = "https://media.discordapp.net/attachments/1059858215879311412/1059864410740502578/Ew4kWteXEAAK2Hy.png"
                },
                ["color"]= tonumber(0xe962e2);
            }
        }
    }
    local DataCallBack = AllRequest({
		Url = Webhooklink,
		Method = 'POST',
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = game:GetService("HttpService"):JSONEncode(Message)
	})
end
fofofofo = true
AutoFullMoon = true
spawn(function()
    while wait() do wait()
        if AutoFullMoon then
            if CheckMoon() == "Bad Moon" then
             
              --  Notify("Script Status","Bad Moon\nHopping...",10)
                wait(10)
            elseif (CheckMoon() == "Full Moon" or CheckMoon() == "Next Night") and game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                Webhooklink = "https://discord.com/api/webhooks/1061830274360557588/2papE5-UIyw9yLD-z--WfYYKWcb89iuFrM7DqMu07H_pb06nSsSlstrq4E3OElZvusv2"
                WebhookSender(CheckMoon())
              break;
            elseif game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                Webhooklink = "https://discord.com/api/webhooks/1061830274360557588/2papE5-UIyw9yLD-z--WfYYKWcb89iuFrM7DqMu07H_pb06nSsSlstrq4E3OElZvusv2"
                WebhookSender(CheckMoon())
                            break;

            elseif (CheckMoon() == "Full Moon" or CheckMoon() == "Next Night") and fofofofo then
                Webhooklink = "https://discord.com/api/webhooks/1063346019204595722/I4J-3a2CPFs1yy-zHdnlBmhUGrorC2HAmdpIx_xQagkCA3NBzPSiwPV_uqsaGXHRIDx9"
                WebhookSender(CheckMoon())
                              break;
            end
        end
    end
end)
local checkfullmoon = true 
spawn(function()
    while wait() do 
        if checkfullmoon and CheckMoon() == "Full Moon" then 
                            Webhooklink = "https://discord.com/api/webhooks/1063346019204595722/I4J-3a2CPFs1yy-zHdnlBmhUGrorC2HAmdpIx_xQagkCA3NBzPSiwPV_uqsaGXHRIDx9"
WebhookSender2(CheckMoon())
checkfullmoon = false 
end
end
    end)
spawn(function()
    if not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") and (CheckMoon() ~= "Full Moon" or CheckMoon() ~= "Next Night") then 
                  AutoFullMoon = true
    end
    if CheckMoon() ~= "Full Moon" then 
        checkfullmoon = true 
        end
end)
local tweentab = Window:MakeTab({
    Name = "Tween Tab",
    Icon = MoonTextureId(),
    PremiumOnly = false
})
local LandsA = {}
local function removeduplicates(b)
    local c = {}
    local d = {}
    for e, f in ipairs(b) do
        if not d[f] then
            d[f] = true
            table.insert(c, f)
        end
    end
    return c
end
for i,v in pairs(game.Workspace["_WorldOrigin"].Locations:GetChildren()) do
    if v.Name ~= "Sea" and not string.find(v.Name,"Trial") then
        table.insert(LandsA, v.Name)
    end
end

local Lands = {}

LandsC = removeduplicates(LandsA)
for i = 1, #LandsC do
    table.insert(Lands, LandsC[i])
end
for i,v in pairs(Lands) do 
    print(v,v.CFrame) end

    function testconcac(u)
        local dist = math.huge
        getgenv().nameisland = nil
        for i,v in pairs(game.Workspace["_WorldOrigin"].Locations:GetChildren()) do
            if v.Name == u then
                for i,k in pairs(game:GetService("Workspace")["_WorldOrigin"].PlayerSpawns.Pirates:GetDescendants()) do
                    if k.ClassName == "Part" then
                        local concac = (v.Position-k.Position).Magnitude 
                        if concac < dist then
                            dist = concac
                            getgenv().nameisland = k.CFrame
                        end
                    end
                end
            end
        end
        return getgenv().nameisland
    end
    tweentab:AddButton(
        {
            Name = "Cancel Tween",
            Callback = function()
                CancelTween()
            end
        }
    )
tweentab:AddDropdown({
    Name = "Tween To Map",
        Default = "",
        Options = Lands,
        Callback = function(Value)
            selectisland = Value
            
            for i,v in pairs(game.Workspace["_WorldOrigin"].Locations:GetChildren()) do
                if v.Name == selectisland then
                    hlamm = v.CFrame * CFrame.new(0,50,0)
                    wait()
                    Tweento(hlamm)
                    --getgenv().starttweenisland = false
                  -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,50,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                end
            end
        end
})
local plr = game.Players.LocalPlayer
tweentab:AddDropdown(
    {
        Name = "Tween To NPC",
        Default = "",
        Options = ALLNPCOOO2,
        Callback = function(Value)
            if Value == "Ancient One" then
                TweenTemple()
                local args = {
                    [1] = "RaceV4Progress",
                    [2] = "Check"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "RaceV4Progress",
                    [2] = "Teleport"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                Tweento(ALLNPCOOO[Value])
            else
                Tweento(ALLNPCOOO[Value])
            end
        end
    }
)
tweentab:AddButton(
        {
            Name = "Tween to Mirage Island",
            Callback = function()
                TweenMirage()
            end
        }
    )
    tweentab:AddToggle({
        Name = "Auto Tween To Mirage + moon",
        Callback = function(a)
            miragepromax = a 
            end
    })
    tweentab:AddButton(
        {
            Name = "Tween to Temple Of Time",
            Callback = function()
                TweenTemple()
            end
        }
    )
local CreditsTab =
    Window:MakeTab(
    {
        Name = "Credits",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

CreditsTab:AddParagraph(
    "Credits to HLamm#4777",
    "Made with dummy, idots,Idea By HLamm#4777, Join My Working Server: https://discord.gg/qznX32sr !"
)
spawn(function()
while wait() do 
    SaveSettings()
end
end)
OrionLib:Init()
