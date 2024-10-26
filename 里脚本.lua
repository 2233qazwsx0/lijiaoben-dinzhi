    local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/yDVWkjx6"))()--ui启动库


local Window = OrionLib:MakeWindow({Name = "里", HidePremium = false, SaveConfig = false, IntroText = "注入器："..identifyexecutor(), ConfigFolder = "里"})

OrionLib:MakeNotification({
    Name = "创想工作室",
    Content = "作者:创想工作室",
    Image = "rbxassetid://15681436727",
    Time = 6
})

local about = Window:MakeTab({
    Name = "里",
    Icon = "rbxassetid://15681436727",
    PremiumOnly = false
})

about:AddParagraph("里")

local Tab =Window:MakeTab({
	Name = "公告",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "复制QQ",
	Callback = function()
     setclipboard("3290274245")
  	end
})

Tab:AddButton({
	Name = "复制QQ群",
	Callback = function()
     setclipboard("734794185")
  	end
})

OrionLib:MakeNotification({
	Name = "CUA",
	Content = "欢迎使用里",
	Image = "rbxassetid://15681436727",
	Time = 2

})

local Tab = Window:MakeTab({
    Name = "里公告",
    Icon = "rbxassetid://15681436727",
    PremiumOnly = false
})

Tab:AddParagraph("作者","创想工作室")
Tab:AddLabel("QQ群：734794185")

local Tab = Window:MakeTab({
	Name = "🏀通用功能",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "HUA 光影",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/arzRCgwS"))()
  end
})

Tab:AddButton({
  Name = "光影_2",
  Default = false,
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  end
})

Tab:AddButton({
	Name = "超高画质",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end
})    

Tab:AddButton({
  Name = "旋转",
  Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  end
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})
 
Tab:AddButton({
	Name = "飞车",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
	end
})

Tab:AddButton({
	Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end
})

Tab:AddButton({
    Name = "动作",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Zj4NnKs6"))()
    end
})

Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})

Tab:AddButton({
	Name = "踏空行走",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
	end
})

local player = Window:MakeTab({
	Name = "玩家",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "奖励自己",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/minecrafttotem/yzhs./main/Fe%20pp%20script%20very%20fun"))()
  end
})

Tab:AddButton({
	Name = "无限跳",
    Default = false,
	Callback = function(Value)
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
	end
})

player:AddTextbox({
	Name = "移动速度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})

player:AddTextbox({
	Name = "跳跃高度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})

player:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

player:AddButton({
	Name = "穿墙",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/jvyN5hT8"))()
  	end
})

player:AddButton({
	Name = "飞行",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/U27yQRxS"))()
  	end
})

player:AddButton({
	Name = "透视",
	Callback = function()
      	local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
  	end
})

player:AddButton({
	Name = "传送玩家",
	Callback = function()
      	loadstring(game:HttpGet(("https://pastebin.com/raw/YNVbeqPy")))()
  	end
})

player:AddButton({
	Name = "fps显示",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/littlegui/main/FPS-Counter'))()
  	end
})

player:AddButton({
	Name = "玩家进入提示",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
  	end
})

local Tab = Window:MakeTab({
	Name = "小黑子",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
    loadstring(game:HttpGet(('https://gist.githubusercontent.com/blox-hub-roblox/021bad62bbc6a0adc4ba4e625f9ad7df/raw/c89af6e1acf587d09e4ce4bc7510e7100e0c0065/swordWarrior.lua'),true))()
  end
})

Tab:AddButton({
  Name = "2",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0SwordWarriors"))()
  end
})

local Tab = Window:MakeTab({
	Name = "自然灾害",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "cua-自然灾害",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/V8t8gqGc"))()
  end
})

local Tab = Window:MakeTab({
	Name = "🌈doors🌈",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "微山",
  Callback = function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\117\72\72\112\56\102\122\83"))()
  	end
})

local Tab = Window:MakeTab({
	Name = "🤡最强战场🤡",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Strongest/main/Battlegrounds77"))()
  end
})

Tab:AddButton({
   Name = "点击复制秘钥",
   Callback = function()
    setclipboard("BestTheStrongest5412Roblox")
   end
})

local Tab = Window:MakeTab({
    Name = "⭐俄亥俄⭐",
    Icon = "rbxassetid://15681436727",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "🐲指令脚本🐲",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/Ohio"))()
    end
})

Tab:AddLabel("指令如下（聊天框输入）")
Tab:AddLabel("透开-透关 ---透视")
Tab:AddLabel("追踪开-追踪关 ---子弹追踪")
Tab:AddLabel("收钱开-收钱关 ---收集钱包")
Tab:AddLabel("收物开-收物关 ---收集物品")
Tab:AddLabel("抢取款机开-抢取款机关")
Tab:AddLabel("抢银行开-抢银行关")
Tab:AddLabel("穿墙开-穿墙关")
Tab:AddLabel("拳击光环开-拳击光环关")

local Tab = Window:MakeTab({
    Name = "👋巴掌大战👋",
    Icon = "rbxassetid://15681436727",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "1",
    Callback = function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
    end
})

Tab:AddButton({
    Name = "指令脚本",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/bazhang"))()
    end
})

Tab:AddLabel("指令如下（聊天框输入）")
Tab:AddLabel("透视-自动击打-击打光环-踏空")
Tab:AddLabel("防击飞-防推飞-防死神-速度")
Tab:AddLabel("关-无敌开-无敌关-全开-全关")
Tab:AddLabel("全开功能有:防编辑，防毒液，防黑洞，防死神")
Tab:AddLabel("防雷神，防rob，防秒杀手套，管理员预警，防踢")

local Tab = Window:MakeTab({
    Name = "忍者",
    Icon = "rbxassetid://15681436727",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "1",
    Callback = function()
    pcall(loadstring(game:HttpGet("https://pastebin.com/raw/2UjrXwTV")))
    end
})

local Tab = Window:MakeTab({
    Name = "极速",
    Icon = "rbxassetid://15681436727",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "1-会覆盖",
  Callback = function()
    loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\111\121\115\99\112\47\98\101\116\97\47\109\97\105\110\47\37\69\57\37\56\48\37\57\70\37\69\53\37\66\65\37\65\54\37\69\55\37\56\50\37\66\56\37\69\56\37\66\53\37\66\55\46\108\117\97'))()
  end
})

Tab:AddButton({
    Name = "开启卡宠",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/uR6azdQQ"))()
    end
})

Tab:AddButton({
    Name = "自动",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/AyeCYbT6"))()
    end
})

local Tab = Window:MakeTab({
    Name = "力量",
    Icon = "rbxassetid://15681436727",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "力量传奇1",
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()
    end
})

Tab:AddButton({
    Name = "力量传奇2",
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/BoaHacker/ROBLOX/main/cheat', true))()
    end
})

local Tab = Window:MakeTab({
    Name = "伐木脚本",
    Icon = "rbxassetid://15681436727",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "白",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Kavo-Ui/main/%E4%BC%90%E6%9C%A8%E5%A4%A7%E4%BA%A82.lua", true))()
    end
})

Tab:AddButton({
    Name = "白英文",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf",true))()
    end
})

Tab:AddButton({
    Name = "伐木",
    Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/0jdXtPsp'))()
    end
})

local Tab = Window:MakeTab({
	Name = "彩虹好友",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "1",
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0rainbow'))()
    end
})

local Tab = Window:MakeTab({
	Name = "生存巨人",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "1",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RiseValco/scripts/main/GiantSurvival.lua"))()
    end
})

local player = Window:MakeTab({
	Name = "能力大战",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1（会覆盖）",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/castycheat/abilitywars/main/Protected%20(29).lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "幸运方块战争",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet("https://github.com/bruhhwtf/LUCKY-BLOCKS-Battlegrounds-GUI/raw/main/Main"))()
  	end
})

local player = Window:MakeTab({
	Name = "最强拳击模拟器",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/Solx69/Shit-Boy-Hub-Main/main/Master.lua'))();
  	end
})

local player = Window:MakeTab({
	Name = "生存杀手",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/Kiroftt/Survive-The-Killer/main/Simple'))();
  	end
})
local player = Window:MakeTab({
	Name = "ZO ぞ SAMURAI",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Blackout4781/Project-Sinister/main/ProjectSinisterLoader"))()
  	end
})

local player = Window:MakeTab({
	Name = "杀手vs警长",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0murder", true))()
  	end
})
local player = Window:MakeTab({
	Name = "3008",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/scripts/main/3008.lua')()
  	end
})

local player = Window:MakeTab({
	Name = "打墙模拟器",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/JunBloxYTPlayz/SORIX-Hub/main/Punch%20Wall%20Simulator"))();
  	end
})

local player = Window:MakeTab({
	Name = "逃出建筑",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
  	end
})

local player = Window:MakeTab({
	Name = "在51区生存",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1（会覆盖）",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/ZONE100/ZoneHub/main/MultiGames"))()
  	end
})

local player = Window:MakeTab({
	Name = "我的餐厅",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Rafacasari/roblox-scripts/main/mr.lua"))()
  	end
})

local Tab = Window:MakeTab({
    Name = "脚本中心",
    Icon = "rbxassetid://15681436727",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "秋",
    Callback = function()
    local SCC_CharPool={
[1]= tostring(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,87,83,56,53,55,57,54,48,47,45,47,109,97,105,110,47,37,69,55,37,65,55,37,56,66,37,67,50,37,66,55,37,69,56,37,56,55,37,65,65,37,69,53,37,56,56,37,66,54,37,69,56,37,56,52,37,57,65,37,69,54,37,57,67,37,65,67,37,69,54,37,57,54,37,66,48,37,69,54,37,66,65,37,57,48,37,69,55,37,65,48,37,56,49,46,116,120,116})end)()))}
loadstring(game:HttpGet(SCC_CharPool[1]))()
    end
})

Tab:AddButton({
    Name = "杯脚本",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zuohongjian/bjb/main/bjb"))()
    end
})

Tab:AddButton({
    Name = "云(白灰)",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/6666666666/main/%E4%BA%91%E8%84%9A%E6%9C%AC%E6%B5%8B%E8%AF%95%E7%89%88%E4%BA%91%E8%84%9A%E6%9C%AC%E6%B5%8B%E8%AF%95%E7%89%88Xiao%20Yun.lua"))()
    end
})

Tab:AddButton({
    Name = "核脚本",
    Callback = function()
    getgenv().he="作者鱼"loadstring(game:HelpGet("https://pastebin.com/raw/2WmdapD2"))()
    end
})

Tab:AddButton({
    Name = "剑客v3",
    Callback = function()
   jianke_V3 = "作者_初夏"jianke = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/jianke_V3')))()
    end
})

Tab:AddButton({
    Name = "XC，卡密a",
    Callback = function()
    getgenv().XC="作者XC"loadstring(game:HttpGet("https://pastebin.com/raw/PAFzYx0F"))()
    end
})

Tab:AddButton({
    Name = "阿尔宙斯",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
    end
})

Tab:AddButton({
    Name = "忍脚本",
    Callback = function()
    getgenv().ren666 = "忍脚本，加载时间长请耐心"loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,90,77,115,67,56,114,104,114})end)())))();
    end
})

Tab:AddButton({
    Name = "神光脚本",
    Callback = function()
    loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,56,102,50,76,99,113,113,80})end)())))()
    end
})

Tab:AddButton({
    Name = "青脚本",
    Callback = function()
    loadstring(game:HttpGet('https://rentry.co/ct293/raw'))()
    end
})

Tab:AddButton({
    Name = "脚本中心",
    Callback = function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
    end
})

Tab:AddButton({
    Name = "鸭hub",
    Callback = function()
    loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,81,89,49,113,112,99,115,106})end)())))()
    end
})

Tab:AddButton({
	Name = "青蛙",
	Callback = function()
   
getgenv().eom = "青蛙"
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\68\122\120\115\81\82\68\85\39\41\41\40\41")()
    end
})

Tab:AddButton({
	Name = "地岩",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\98\97\109\120\98\98\97\109\120\98\98\97\109\120\47\99\111\100\101\115\112\97\99\101\115\45\98\108\97\110\107\47\109\97\105\110\47\37\69\55\37\57\57\37\66\68\34\41\41\40\41")()
    end
})

Tab:AddButton({
    Name = "冰",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/GR4ChWKv"))()
    end
})

Tab:AddButton({
    Name = "傻脚本",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sharksharksharkshark/shark-shark-shark-shark-shark/main/shark-scriptlollol.txt",true))()
    end
})

local player = Window:MakeTab({
	Name = "视觉",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "动态模糊",
	Callback = function()
       	local camera = workspace.CurrentCamera
local blurAmount = 10
local blurAmplifier = 5
local lastVector = camera.CFrame.LookVector

local motionBlur = Instance.new("BlurEffect", camera)

local runService = game:GetService("RunService")

workspace.Changed:Connect(function(property)
 if property == "CurrentCamera" then
  print("Changed")
  local camera = workspace.CurrentCamera
  if motionBlur and motionBlur.Parent then
   motionBlur.Parent = camera
  else
   motionBlur = Instance.new("BlurEffect", camera)
  end
 end
end)

runService.Heartbeat:Connect(function()
 if not motionBlur or motionBlur.Parent == nil then
  motionBlur = Instance.new("BlurEffect", camera)
 end
 
 local magnitude = (camera.CFrame.LookVector - lastVector).magnitude
 motionBlur.Size = math.abs(magnitude)*blurAmount*blurAmplifier/2
 lastVector = camera.CFrame.LookVector
end)
  	end
})

player:AddButton({ 
	Name = "光影（浅）",
	Callback = function()
       	loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
  	end
})

player:AddButton({ 
	Name = "光影（深）",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  	end
})

local Tab = Window:MakeTab({
	Name = "RobloxUI",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "新的moon让画面变得更流畅",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Empire4946/Mightix/main/loader.lua",true))()
  	end
})

Tab:AddButton({
	Name = "red界面",
	Callback = function()
     loadstring(game:HttpGet("https://eternityhub.xyz/BetterRoblox/Loader"))()
  	end
})

local Tab = Window:MakeTab({
    Name = "伐木脚本",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

Tab:AddButton({
      Name = "小云bark2.0",
      Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/bark2.0.lua"))()
      end
      })

local Tab = Window:MakeTab({
	Name = "通用2",
	Icon = "rbxassetid://15681436727",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "透视",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()
  	end    
})

Tab:AddButton({
	Name = "工具包",
	Callback = function()
     loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
  	end    
})

Tab:AddButton({
	Name = "飞车",
	Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
	end
})

Tab:AddButton({
	Name = "甩飞",
	Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
	end
})

Tab:AddButton({
	Name = "无限跳",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
    end
})

Tab:AddButton({
      Name = "阿尔宙斯V3.0 UI",
      Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
      end
})

Tab:AddButton({
  Name = "光影_2",
  Default = false,
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  end
})

Tab:AddButton({
  Name = "美丽天空",
  Callback = function()
    -- Roblox Graphics Enhancher
    local light = game.Lighting
    for i, v in pairs(light:GetChildren()) do
      v:Destroy()
    end

    local ter = workspace.Terrain
    local color = Instance.new("ColorCorrectionEffect")
    local bloom = Instance.new("BloomEffect")
    local sun = Instance.new("SunRaysEffect")
    local blur = Inst
  end
})

Tab:AddButton({
	Name = "超高画质",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end
})    

Tab:AddButton({
  Name = "开核",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/fKn3y19D"))()
  end
})

Tab:AddButton({
  Name = "FE传图王",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/4L2PzJdS"))()
  end
})

Tab:AddButton({
  Name = "黑洞",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/0DEZ6xrc"))()
  end
})

Tab:AddButton({
  Name = "想杀谁就杀谁",
  Callback = function()
    local ScreenGui = Instance.new("ScreenGui")
local ui = Instance.new("Frame")
local title = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local Username = Instance.new("TextBox")
local Kill = Instance.new("TextButton")
local cred = Instance.new("TextLabel")
--Properties:
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ui.Name = "ui"
ui.Parent = ScreenGui
ui.Active = true
ui.BackgroundColor3 = Color3.new(1, 1, 1)
ui.BackgroundTransparency = 0.20000000298023
ui.BorderSizePixel = 3
ui.Position = UDim2.new(0.254972845, 0, 0.419703096, 0)
ui.Size = UDim2.new(0, 535, 0, 283)

title.Name = "标题"
title.Parent = ui
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.BorderSizePixel = 2
title.Position = UDim2.new(0, 0, 0.0199999996, 0)
title.Size = UDim2.new(1, 0, 0, 50)
title.Font = Enum.Font.SourceSans
title.Text = "通用想杀谁就杀谁脚本"
title.TextColor3 = Color3.new(0, 0, 0)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true

Frame.Parent = title
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.25, 0, 0.860000014, 0)
Frame.Size = UDim2.new(0.5, 0, 0, 3)

Username.Name = "用户名"
Username.Parent = ui
Username.BackgroundColor3 = Color3.new(1, 1, 1)
Username.BorderSizePixel = 0
Username.Position = UDim2.new(0.100000001, 0, 0.300000012, 0)
Username.Size = UDim2.new(0.800000012, 0, 0, 50)
Username.Font = Enum.Font.SourceSans
Username.PlaceholderText = "Name"
Username.Text = ""
Username.TextColor3 = Color3.new(0, 0, 0)
Username.TextScaled = true
Username.TextSize = 14
Username.TextWrapped = true

Kill.Name = "杀"
Kill.Parent = ui
Kill.BackgroundColor3 = Color3.new(1, 1, 1)
Kill.BackgroundTransparency = 0.20000000298023
Kill.BorderSizePixel = 2
Kill.Position = UDim2.new(0.25, 0, 0.529999971, 0)
Kill.Size = UDim2.new(0.5, 0, 0, 50)
Kill.Font = Enum.Font.Gotham
Kill.Text = "杀"
Kill.TextColor3 = Color3.new(0, 0, 0)
Kill.TextScaled = true
Kill.TextSize = 14
Kill.TextWrapped = true

cred.Name = "我猜"
cred.Parent = ui
cred.BackgroundColor3 = Color3.new(1, 1, 1)
cred.BackgroundTransparency = 1
cred.BorderSizePixel = 2
cred.Position = UDim2.new(0.0500000007, 0, 0.769999981, 0)
cred.Size = UDim2.new(0.899999976, 0, 0, 50)
cred.Font = Enum.Font.SourceSans
cred.Text = "周期性的雷声mod的信用"
cred.TextColor3 = Color3.new(0, 0, 0)
cred.TextScaled = true
cred.TextSize = 14
cred.TextWrapped = true
ui.Draggable = true

-- creds to Hamiii for the plr finder
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local function RemoveSpaces(String)
	return String:gsub("%s+", "") or String
end

local function FindPlayer(String)
	String = RemoveSpaces(String)
	for _, _Player in pairs(Players:GetPlayers()) do
		if _Player.Name:lower():match('^'.. String:lower()) then
			return _Player
		end
	end
	return nil
end

Kill.MouseButton1Click:Connect(function()
	local Target = FindPlayer(Username.Text)
	if Target and Target.Character then
		local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
		local Torso = Character:FindFirstChild("Torso") or Character:FindFirstChild("UpperTorso")
		
		local savepos = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
	    Torso.Anchored = true
	    local tool = Instance.new("Tool", LocalPlayer.Backpack)
	    local hat = LocalPlayer.Character:FindFirstChildOfClass("Accessory")
	    local hathandle = hat.Handle
	    hathandle.Parent = tool
	    hathandle.Massless = true
	    tool.GripPos = Vector3.new(0, 9e99, 0)
	    tool.Parent = LocalPlayer.Character
	    repeat wait() until LocalPlayer.Character:FindFirstChildOfClass("Tool") ~= nil
	    tool.Grip = CFrame.new(Vector3.new(0, 0, 0))
		Torso.Anchored = false
	    repeat LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = Target.Character:FindFirstChild("HumanoidRootPart").CFrame wait()
	    until Target.Character == nil or Target.Character:FindFirstChild("Humanoid").Health <= 0 or LocalPlayer.Character == nil or LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0 or (Target.Character:FindFirstChild("HumanoidRootPart").Velocity.magnitude - Target.Character:FindFirstChild("Humanoid").WalkSpeed) > (Target.Character:FindFirstChild("Humanoid").WalkSpeed + 20)
	    LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
	    hathandle.Parent = hat
	    hathandle.Massless = false
	    tool:Destroy()
	    LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = savepos
	else
		warn'no player found named like that or he has no char'
	end
end)
  end
})

Tab:AddButton({
  Name = "吸人",
  Callback = function()
    --[[
Subscribe to Zaptosis
--]]

local L_1_ = true;
local L_2_ = game.Players.LocalPlayer.Character.HumanoidRootPart;
local L_3_ = L_2_.Position - Vector3.new(5, 0, 0)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(L_4_arg1)
	if L_4_arg1 == 'f' then
		L_1_ = not L_1_
	end;
	if L_4_arg1 == 'r' then
		L_2_ = game.Players.LocalPlayer.Character.HumanoidRootPart;
		L_3_ = L_2_.Position - Vector3.new(5, 0, 0)
	end
end)

for L_5_forvar1, L_6_forvar2 in pairs(game.Players:GetPlayers()) do
	if L_6_forvar2 == game.Players.LocalPlayer then
	else
		local L_7_ = coroutine.create(function()
			game:GetService('RunService').RenderStepped:Connect(function()
				local L_8_, L_9_ = pcall(function()
					local L_10_ = L_6_forvar2.Character;
					if L_10_ then
						if L_10_:FindFirstChild("HumanoidRootPart") then
							if L_1_ then
								L_6_forvar2.Backpack:ClearAllChildren()
								for L_11_forvar1, L_12_forvar2 in pairs(L_10_:GetChildren()) do
									if L_12_forvar2:IsA("Tool") then
										L_12_forvar2:Destroy()
									end
								end;
								L_10_.HumanoidRootPart.CFrame = CFrame.new(L_3_)
							end
						end
					end
				end)
				if L_8_ then
				else
					warn("Unnormal error: "..L_9_)
				end
			end)
		end)
		coroutine.resume(L_7_)
	end
end;

game.Players.PlayerAdded:Connect(function(L_13_arg1)   
	if L_13_arg1 == game.Players.LocalPlayer then
	else
		local L_14_ = coroutine.create(function()
			game:GetService('RunService').RenderStepped:Connect(function()
				local L_15_, L_16_ = pcall(function()
					local L_17_ = L_13_arg1.Character;
					if L_17_ then
						if L_17_:FindFirstChild("HumanoidRootPart") then
							if L_1_ then
								L_13_arg1.Backpack:ClearAllChildren()
								for L_18_forvar1, L_19_forvar2 in pairs(L_17_:GetChildren()) do
									if L_19_forvar2:IsA("Tool") then
										L_19_forvar2:Destroy()
									end
								end;
								L_17_.HumanoidRootPart.CFrame = CFrame.new(L_3_)
							end
						end
					end
				end)
				if L_15_ then
				else
					warn("Unnormal error: "..L_16_)
				end
			end)
		end)
		coroutine.resume(L_14_)
	end           
end)
  end
})

Tab:AddButton({
	Name = "操蛋",
	Callback = function()
     --Variables
 
 
local SimpleSexGUI = Instance.new("ScreenGui")
 
local FGUI = Instance.new("Frame")
 
local btnNaked = Instance.new("TextButton")
 
local btnSex = Instance.new("TextButton")
 
local tbxVictim = Instance.new("TextBox")
 
local lblFUCKEMALL = Instance.new("TextLabel")
 
local ImageLabel = Instance.new("ImageLabel")
 
local lbltitle = Instance.new("TextLabel")
 
local TextLabel = Instance.new("TextLabel")
 
 
 
 
 
 
 
 
--Properties
 
SimpleSexGUI.Name = "SimpleSexGUI"
SimpleSexGUI.Parent = game.CoreGui
 
 
FGUI.Name = "FGUI"
FGUI.Parent = SimpleSexGUI
FGUI.BackgroundColor3 = Color3.new(255,255,255)
FGUI.BorderSizePixel = 1
FGUI.Position = UDim2.new(0,0, 0.667, 0)
FGUI.Size = UDim2.new(0,317, 0,271)
FGUI.Draggable = true
 
 
 
lbltitle.Name = "Title"
lbltitle.Parent = FGUI
lbltitle.BackgroundColor3 = Color3.new(255,255,255)
lbltitle.BorderSizePixel = 1
lbltitle.Position = UDim2.new (0, 0,-0.122, 0)
lbltitle.Size = UDim2.new (0, 317,0, 33)
lbltitle.Visible = true
lbltitle.Active = true
lbltitle.Draggable = false
lbltitle.Selectable = true
lbltitle.Font = Enum.Font.SourceSansBold
lbltitle.Text = "一个简单的操蛋脚本!!"
lbltitle.TextColor3 = Color3.new(0, 0, 0)
lbltitle.TextSize = 20
 
 
 
 
 
btnSex.Name = "Sex"
btnSex.Parent = FGUI
btnSex.BackgroundColor3 = Color3.new(255,255,255)
btnSex.BorderSizePixel = 1
btnSex.Position = UDim2.new (0.044, 0,0.229, 0)
btnSex.Size = UDim2.new (0, 99,0, 31)
btnSex.Visible = true
btnSex.Active = true
btnSex.Draggable = false
btnSex.Selectable = true
btnSex.Font = Enum.Font.SourceSansBold
btnSex.Text = "让我们操蛋吧!!"
btnSex.TextColor3 = Color3.new(0, 0, 0)
btnSex.TextSize = 20
 
 
 
 
tbxVictim.Name = "VictimTEXT"
tbxVictim.Parent = FGUI
tbxVictim.BackgroundColor3 = Color3.new(255,255,255)
tbxVictim.BorderSizePixel = 1
tbxVictim.Position = UDim2.new (0.533, 0,0.229, 0)
tbxVictim.Size = UDim2.new (0, 133,0, 27)
tbxVictim.Visible = true
tbxVictim.Active = true
tbxVictim.Draggable = false
tbxVictim.Selectable = true
tbxVictim.Font = Enum.Font.SourceSansBold
tbxVictim.Text = "名字"
tbxVictim.TextColor3 = Color3.new(0, 0, 0)
tbxVictim.TextSize = 20
 
lblFUCKEMALL.Name = "FUCKEMALL"
lblFUCKEMALL.Parent = FGUI
lblFUCKEMALL.BackgroundColor3 = Color3.new(255,255,255)
lblFUCKEMALL.BorderSizePixel = 1
lblFUCKEMALL.Position = UDim2.new (0.025, 0,0.856, 0)
lblFUCKEMALL.Size = UDim2.new (0, 301,0, 27)
lblFUCKEMALL.Visible = true
lblFUCKEMALL.Font = Enum.Font.SourceSansBold
lblFUCKEMALL.Text = "操蛋和操蛋"
lblFUCKEMALL.TextColor3 = Color3.new(0, 0, 0)
lblFUCKEMALL.TextSize = 20
 
ImageLabel.Name = "ImageLabel"
ImageLabel.Parent = FGUI
ImageLabel.Image = "http://www.roblox.com/asset/?id=42837..."
ImageLabel.BorderSizePixel = 1
ImageLabel.Position = UDim2.new (0.274, 0,0.358, 0)
ImageLabel.Size = UDim2.new (0, 106,0, 121)
 
 
 
 
--Scripts
 
 
btnSex.MouseButton1Click:Connect(function()
 
local player = tbxVictim.Text
local stupid = Instance.new('Animation')
stupid.AnimationId = 'rbxassetid://148840371'
hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
pcall(function()
    hummy.Parent.Pants:Destroy()
end)
pcall(function()
    hummy.Parent.Shirt:Destroy()
end)
local notfunny = hummy:LoadAnimation(stupid)
notfunny:Play()
notfunny:AdjustSpeed(10)
while hummy.Parent.Parent ~= nil do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tbxVictim.Text].Character.HumanoidRootPart.CFrame
end
end)
  	end    
})

Tab:AddButton({
	Name = "碰人死",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/JHTe9VFm"))()
  	end
})

Tab:AddButton({
	Name = "瞬间移动到别人身后",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/Qv4r9NiX"))()
  	end
})

Tab:AddButton({
	Name = "隐身2",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/TDJVFAWz"))()
  	end
})

Tab:AddButton({
	Name = "人形直升机",
	Callback = function()
     if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
spawn(function()
local speaker = game.Players.LocalPlayer
local Anim = Instance.new("Animation")
     Anim.AnimationId = "rbxassetid://27432686"
     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
bruh:Play()
bruh:AdjustSpeed(0)
speaker.Character.Animate.Disabled = true
local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=165113352"
hi.Volume = 2
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi:Play()

local spinSpeed = 40
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)

end)
else
spawn(function()
local speaker = game.Players.LocalPlayer
local Anim = Instance.new("Animation")
     Anim.AnimationId = "rbxassetid://507776043"
     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
bruh:Play()
bruh:AdjustSpeed(0)
speaker.Character.Animate.Disabled = true
local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=165113352"
hi.Volume = 2
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi:Play()

local spinSpeed = 40
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)


end)    
end
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local u = game.Players.LocalPlayer
local urchar = u.Character

task.spawn(function()


qUp = Mouse.KeyUp:Connect(function(KEY)
if KEY == 'q' then
urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight - 3
end
end)
eUp = Mouse.KeyUp:Connect(function(KEY)
if KEY == 'e' then
urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight + 3
end
end)


end)
  	end
})

Tab:AddButton({
    Name = "车子飞天“必须座上 通用",
    Callback = function()
    local Speed = 30

	-- Gui to Lua
	-- Version: 3.2
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	-- Instances:

	local ScreenGui = Instance.new("ScreenGui")
	local W = Instance.new("TextButton")
	local S = Instance.new("TextButton")
	local A = Instance.new("TextButton")
	local D = Instance.new("TextButton")
	local Fly = Instance.new("TextButton")
	local unfly = Instance.new("TextButton")
	local StopFly = Instance.new("TextButton")

	--Properties:

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	unfly.Name = "关闭飞行"
	unfly.Parent = ScreenGui
	unfly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	unfly.Position = UDim2.new(0.694387913, 0, 0.181818187, 0)
	unfly.Size = UDim2.new(0, 72, 0, 50)
	unfly.Font = Enum.Font.SourceSans
	unfly.Text = "关闭飞行"
	unfly.TextColor3 = Color3.fromRGB(170, 0, 255)
	unfly.TextScaled = true
	unfly.TextSize = 14.000
	unfly.TextWrapped = 
		unfly.MouseButton1Down:Connect(function()
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
	end)

	StopFly.Name = "暂停飞行"
	StopFly.Parent = ScreenGui
	StopFly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	StopFly.Position = UDim2.new(0.695689976, 0, 0.0213903747, 0)
	StopFly.Size = UDim2.new(0, 71, 0, 50)
	StopFly.Font = Enum.Font.SourceSans
	StopFly.Text = "暂停飞行"
	StopFly.TextColor3 = Color3.fromRGB(170, 0, 255)
	StopFly.TextScaled = true
	StopFly.TextSize = 14.000
	StopFly.TextWrapped = true
	StopFly.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = true
	end)

	Fly.Name = "飞行"
	Fly.Parent = ScreenGui
	Fly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Fly.Position = UDim2.new(0.588797748, 0, 0.0213903747, 0)
	Fly.Size = UDim2.new(0, 66, 0, 50)
	Fly.Font = Enum.Font.SourceSans
	Fly.Text = "飞行"
	Fly.TextColor3 = Color3.fromRGB(170, 0, 127)
	Fly.TextScaled = true
	Fly.TextSize = 14.000
	Fly.TextWrapped = true
	Fly.MouseButton1Down:Connect(function()
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	end)

	W.Name = "W"
	W.Parent = ScreenGui
	W.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	W.Position = UDim2.new(0.161668837, 0, 0.601604283, 0)
	W.Size = UDim2.new(0, 58, 0, 50)
	W.Font = Enum.Font.SourceSans
	W.Text = "↑"
	W.TextColor3 = Color3.fromRGB(226, 226, 526)
	W.TextScaled = true
	W.TextSize = 5.000
	W.TextWrapped = true
	W.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = false
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 50000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed
	end)


	S.Name = "S"
	S.Parent = ScreenGui
	S.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	S.Position = UDim2.new(0.161668837, 0, 0.735294104, 0)
	S.Size = UDim2.new(0, 58, 0, 50)
	S.Font = Enum.Font.SourceSans
	S.Text = "↓"
	S.TextColor3 = Color3.fromRGB(255, 255, 255)
	S.TextScaled = true
	S.TextSize = 14.000
	S.TextWrapped = true
	S.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = false
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed
	end)
    end
})

local Tab = Window:MakeTab({
  Name = "通用3",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })
  
 Tab:AddButton({
	Name = "飞行",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/WMHebm8i"))()
end
})

Tab:AddButton({
	Name = "飞行装备（可控制物体）",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/zaochuan2"))()		
  	end
})

Tab:AddTextbox({
	Name = "移动速度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end	 
})

 Tab:AddTextbox({
	Name = "跳跃高度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end	 
})

Tab:AddTextbox({
	Name = "最大血量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.MaxHealth = Value
	end	 
})

Tab:AddTextbox({
	Name = "当前血量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.Health = Value
	end	 
})

Tab:AddButton({
	Name = "回满血",
	Callback = function()
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth 
end
})

Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

Tab:AddButton({
	Name = "Acrylix（通用）",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/3dsonsuce/acrylix/main/Acrylix'))()
end
})

Tab:AddButton({
	Name = "修改玩家碰撞箱",
	Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/JYFXjEVh'))()
end
})

Tab:AddButton({
	Name = "粘墙行走",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})

Tab:AddButton({
	Name = "通用ESP",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
	end
})

Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})

Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

Tab:AddButton({
	Name = "甩飞别人",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
  	end    
})

Tab:AddButton({
	Name = "转圈fling GUI",
	Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end
})

Tab:AddButton({
  Name = "加速回血",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/nengliangtiao"))()
  end
})

Tab:AddButton({
    Name="我要紫砂",
    Callback=function()
        game.Players.LocalPlayer.Character.Humanoid.Health=0
HumanDied = true
    end
})

Tab:AddButton({
	Name = "不死但不完全不死（点紫砂去除）",
	Callback = function()
HumanDied = false
end
})

Tab:AddButton({
	Name = "跟踪玩家",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/F9PNLcXk"))()
  	end
})

Tab:AddButton({
	Name = "伪名说话",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/zCFEwaYq/raw'),true))()
	end 
})

Tab:AddButton({
	Name = "人物无敌",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
	end    
})

Tab:AddButton({
	Name = "无敌",
	Callback = function()
local lp = game:GetService "Players".LocalPlayer
if lp.Character:FindFirstChild "Head" then
    local char = lp.Character
    char.Archivable = true
    local new = char:Clone()
    new.Parent = workspace
    lp.Character = new
    wait(2)
    local oldhum = char:FindFirstChildWhichIsA "Humanoid"
    local newhum = oldhum:Clone()
    newhum.Parent = char
    newhum.RequiresNeck = false
    oldhum.Parent = nil
    wait(2)
    lp.Character = char
    new:Destroy()
    wait(1)
    newhum:GetPropertyChangedSignal("Health"):Connect(
        function()
            if newhum.Health <= 0 then
                oldhum.Parent = lp.Character
                wait(1)
                oldhum:Destroy()
            end
        end)
    workspace.CurrentCamera.CameraSubject = char
    if char:FindFirstChild "Animate" then
        char.Animate.Disabled = true
        wait(.1)
        char.Animate.Disabled = false
    end
    lp.Character:FindFirstChild "Head":Destroy()
end
end
})

Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "点击传送" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
	end
})

Tab:AddButton({
	Name = "Dex",
	Callback = function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
end
})