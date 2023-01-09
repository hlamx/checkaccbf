repeat wait() until game:IsLoaded()
repeat wait() until game.Players
repeat wait() until game.Players.LocalPlayer
local queueteleport = syn and syn.queue_on_teleport
function IsMirageIsland2()
    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
        return true
    else
        return false
    end
end
function IsMirageIsland()
    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
        return "```true```"
    else
        return "```false```"
    end
end
local AllRequest = http_request or request or HttpPost or syn.request
function concacmmb()
    if CheckFullMoon() == "Full Moon" and IsMirageIsland2() then
        return "<@&1059859358428704898> MOM CALLED"
    elseif IsMirageIsland2() then
        return "<@&1059859369384226867> MIRAGE NE THANG BEO"
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
                ["description"]= "Moon Status: ```"..dec.."```\nMirage Island Status: "..IsMirageIsland().."\nPlayers Count: "..game.Players.NumPlayers.."/12\n```\nJobId: "..game.JobId.."\n```".."Script To Join: ```lua\n"..'game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport","'..game.JobId..'")'.."\n```Account: Hlamm dep trai",
                ["footer"] = {
                    ["text"] = "script Doc la an giang ".."\nTime".." : "..os.date("%c").." ("..os.date("%X")..")\nVersion: 1.15 | Lastest Update: 8:35 PM 1/3/2023",
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

function click(a)
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+50,0,true,a,1)
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+50,0,false,a,1)
end
pcall(function()
    if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
        repeat wait()
            click(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton)
        until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded() or not game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
    end
end)
local Settings = {}
local HttpService = game:GetService("HttpService")

local SaveFileName = "seahubjoin.json"

function SaveSettings()
  local HttpService = game:GetService("HttpService")
  if not isfolder("hlamm") then
      makefolder("hlamm")
  end
  writefile("hlamm/" .. SaveFileName, HttpService:JSONEncode(Settings))
end

function ReadSetting()
  local s,e = pcall(function()
      local HttpService = game:GetService("HttpService")
      if not isfolder("hlamm") then
          makefolder("hlamm")
      end
      return HttpService:JSONDecode(readfile("hlamm/" .. SaveFileName))
  end)
  if s then return e
  else
      SaveSettings()
      return ReadSetting()
  end
end
Settings = ReadSetting()

function HopServer()
  local function Hop()
      for i=1,100 do
          local huhu = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(i)
          for k,v in pairs(huhu) do
              if k~=game.JobId and v.Count < 10 then
                  if not Settings[k] or tick() - Settings[k].Time > 60*10  then
                       Settings[k] = {
                           Time = tick()
                       }
                       SaveSettings()
                      game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport",k)
                      return true
                  elseif tick() - Settings[k].Time > 60*60 then
                      Settings[k] = nil
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
  SaveSettings()
end

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
    for i,v in pairs(TableLocations2) do
        if v < min then
            min = v
            min2 = v 
        end
    end
    for i,v in pairs(TableLocations2) do
        if v < min then
            min = v
            min2 = v 
        end
    end
    for i,v in pairs(TableLocations2) do
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
    char.CFrame = CFrame.new(oldcframe.X,oldcframe.Y+50,oldcframe.Z)
end
TweenSpeed = 350
IngoreY = false
function Tweento(targetCFrame)
    if TweenSpeed == nil then TweenSpeed = 350 end
    DefualtY = 200
    TargetY = targetCFrame.Y
    targetCFrameWithDefualtY = CFrame.new(targetCFrame.X,DefualtY,targetCFrame.Z)
    targetPos = targetCFrame.Position
    oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    Distance = (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
    if Distance < 600 then
        Speed = TweenSpeed
    elseif Distance >= 600 then
        Speed = TweenSpeed
    end
    local bmg = CheckNearestTeleporter(targetCFrame) 
    if type(bmg) ~= "boolean" then
        pcall(function()
            tween:Cancel()
        end)
        requestEntrance(bmg)
    end
    b1 = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,DefualtY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
    if IngoreY and (b1.Position-targetCFrameWithDefualtY.Position).Magnitude > 5 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,DefualtY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
        local tweenfunc = {}
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
        local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrameWithDefualtY})
        tween:Play()
        NoClip = true
        function tweenfunc:Stop()
            tween:Cancel()
        end 
        tween.Completed:Wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,TargetY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
        NoClip = false
    else
        local tweenfunc = {}
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
        local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame})
        tween:Play()
        NoClip = true
        function tweenfunc:Stop()
            tween:Cancel()
        end 
        tween.Completed:Wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,TargetY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
        NoClip = false
    end
    if not tween then return tween end
    return tweenfunc
end
function CheckFullMoon()
    moon8 = "http://www.roblox.com/asset/?id=9709150401"
    moon7 = "http://www.roblox.com/asset/?id=9709150086"
    moon6 = "http://www.roblox.com/asset/?id=9709149680"
    moon5 = "http://www.roblox.com/asset/?id=9709149431"
    moon4 = "http://www.roblox.com/asset/?id=9709149052"
    moon3 = "http://www.roblox.com/asset/?id=9709143733"
    moon2 = "http://www.roblox.com/asset/?id=9709139597"
    moon1 = "http://www.roblox.com/asset/?id=9709135895"
    moonreal = game:GetService("Lighting").Sky.MoonTextureId
    cofullmoonkothangbeo = "Deo"
    if moonreal == moon5 or moonreal == moon4 then
        if moonreal == moon5 then
            cofullmoonkothangbeo = "Full Moon"
        elseif moonreal == moon4 then
            cofullmoonkothangbeo = "Next Night"
        end
    end
    return cofullmoonkothangbeo;
end
print(CheckFullMoon())

fofofofo = true

if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") and cofullmoonkothangbeo == "Full Moon" then
   print("MIRAGE")
    AllNPCS = getnilinstances()
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        table.insert(AllNPCS,v)
    end
    for i,v in pairs(AllNPCS) do
        if v.Name == "Advanced Fruit Dealer" then
            Tweento(v.HumanoidRootPart.CFrame)
        end
    end
     if CheckFullMoon() == "Deo" then
            elseif (CheckFullMoon() == "Full Moon" or CheckFullMoon() == "Next Night") and game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                Webhooklink = "https://discord.com/api/webhooks/1060549201840316498/bPCXSP7kIB00GWm3LmxnxfYDRHWCfehZjj5b2MgOgfH8mrfFTeErBdypnjpd_z91qFba"
                WebhookSender(CheckFullMoon())
               
            elseif game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                Webhooklink = "https://discord.com/api/webhooks/1060549299563417650/ShrPS_pFiiB0_J6yivVBfHyBl7uxS35ZmEuB0MvYoFTFZhCcdGhWFI8zSABYinf9Tu6w"
                WebhookSender(CheckFullMoon())
               
            elseif (CheckFullMoon() == "Full Moon" or CheckFullMoon() == "Next Night") and fofofofo then
                Webhooklink = "https://discord.com/api/webhooks/1059858240697020507/3Z3gifdhJ4JQda9oQOw2oNqSbXI-dKGgCXIHtn6gbuReZcuKQ6xRg94ipm7LI454wTvH"
                WebhookSender(CheckFullMoon())
               
            end
elseif not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then 
    print("Server deo co Mirage")
    wait(5)
    HopServer()
end
