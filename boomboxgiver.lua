--Made By skroopz

-- Instances:

local boomboxgiver = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local button = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local openandclose = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local deletetools = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

--Properties:

boomboxgiver.Name = "boombox giver"
boomboxgiver.Parent = game.CoreGui

main.Name = "main"
main.Parent = boomboxgiver
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.Position = UDim2.new(0.445278287, 0, 0.438661754, 0)
main.Size = UDim2.new(0, 174, 0, 97)
main.Active = true
main.Draggable = true
main.Visible = false

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = main

button.Name = "button"
button.Parent = main
button.BackgroundColor3 = Color3.fromRGB(163, 0, 2)
button.Position = UDim2.new(0.0881477445, 0, 0.164663091, 0)
button.Size = UDim2.new(0, 143, 0, 65)
button.Font = Enum.Font.GothamBold
button.Text = "Give Boomboxes"
button.TextColor3 = Color3.fromRGB(0, 0, 0)
button.TextScaled = true
button.TextSize = 14.000
button.TextWrapped = true
button.MouseButton1Down:Connect(function()
	local function giveboombox()
		local buy = game.workspace.Buy

		buy:FireServer("BeatUpBoombox")
	end

	giveboombox()
	giveboombox()
	giveboombox()
	giveboombox()
end)

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = button

openandclose.Name = "open and close"
openandclose.Parent = boomboxgiver
openandclose.BackgroundColor3 = Color3.fromRGB(163, 0, 2)
openandclose.Position = UDim2.new(0.913070738, 0, 0.692689002, 0)
openandclose.Size = UDim2.new(0, 123, 0, 50)
openandclose.Font = Enum.Font.GothamBlack
openandclose.Text = "Open/Close"
openandclose.TextColor3 = Color3.fromRGB(0, 0, 0)
openandclose.TextScaled = true
openandclose.TextSize = 14.000
openandclose.TextWrapped = true
openandclose.MouseButton1Down:Connect(function()
	if main.Visible == false then
		main.Visible = true
	else
		main.Visible = false
	end
end)

UICorner_3.CornerRadius = UDim.new(0, 15)
UICorner_3.Parent = openandclose

deletetools.Name = "deletetools"
deletetools.Parent = boomboxgiver
deletetools.BackgroundColor3 = Color3.fromRGB(163, 0, 2)
deletetools.Position = UDim2.new(0.913070738, 0, 0.613382936, 0)
deletetools.Size = UDim2.new(0, 123, 0, 50)
deletetools.Font = Enum.Font.GothamBlack
deletetools.Text = "Delete Tools(Press This First)"
deletetools.TextColor3 = Color3.fromRGB(0, 0, 0)
deletetools.TextScaled = true
deletetools.TextSize = 14.000
deletetools.TextWrapped = true
deletetools.MouseButton1Down:Connect(function()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v:Destroy()
		end
	end
end)

UICorner_4.CornerRadius = UDim.new(0, 15)
UICorner_4.Parent = deletetools
