local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Prison Life By Frein", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local PlayerTab = Window:MakeTab({
	Name = "Movements",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = PlayerTab:AddSection({
	Name = "Moverment"
})

PlayerTab:AddSlider({
	Name = "WalkSpeed",
	Min = 16,
	Max = 500,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

PlayerTab:AddSlider({
	Name = "Jump",
	Min = 16,
	Max = 400,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Height",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

PlayerTab:AddButton({
	Name = "FLY",
	Callback = function()
        loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
  	end    
})

local OtherTab = Window:MakeTab({
	Name = "Other",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = OtherTab:AddSection({
	Name = "Deleting Object"
})

OtherTab:AddButton({
	Name = "Deleting Doors",
	Callback = function()
      	game.Workspace.Doors:Destroy()
  	end    
})

OtherTab:AddButton({
	Name = "Deleting Gates",
	Callback = function()
      	game.Workspace.Gates:Destroy()
  	end    
})

local Section = OtherTab:AddSection({
	Name = "Main"
})

OtherTab:AddButton({
	Name = "Esp with Trasers (USE ONLY 1 TIME)",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/ge2FB9if"))()
	end
})

OtherTab:AddButton({
	Name = "Aim ON",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/1DRgdwAT"))()
	end
})

OtherTab:AddButton({
	Name = "Aim OFF",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/Fi5FU435"))()
	end
})

Tab:AddBind({
	Name = "Aim Off Keybind",
	Default = Enum.KeyCode.R,
	Hold = false,
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/Fi5FU435"))
	end    
})

OtherTab:AddButton({
	Name = "God Mode(You cant take anything)",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/UPXT9T5z"))()
    end
})

OtherTab:AddButton({
	Name = "Kill Aura (Use only 1 time)",
	Callback = function()
		while wait () do
            for i, e in pairs(game.Players:GetChildren()) do
                    if e ~= game.Players.LocalPlayer then
                            local meleeEvent = game:GetService("ReplicatedStorage").meleeEvent
                            meleeEvent:FireServer(e)
                    end
            end
	    end
    end
})

local PickTab = Window:MakeTab({
	Name = "Pick up Weapons",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

PickTab:AddButton({
	Name = "Crime Team",
	Callback = function()
		weld02 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-919.958, 95.327, 2138.189)
		wait(0.075)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(weld02)
    end 
})

PickTab:AddButton({
	Name = "Police Team",
	Callback = function()
		police.MouseButton1Click:connect(function()
			Workspace.Remote.TeamEvent:FireServer("Bright blue")
		end)		
    end
})

OrionLib:Init()














OrionLib:MakeNotification({
	Name = "Ty for using my script",
	Content = "Discord:frein2o",
	Image = "rbxassetid://4483345998",
	Time = 5
})
