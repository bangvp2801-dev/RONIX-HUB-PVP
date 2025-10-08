--// RONIX HUB UI
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local SkipButton = Instance.new("TextButton")
local ResetButton = Instance.new("TextButton")
local DiscordButton = Instance.new("TextButton")

-- Gắn vào game
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Khung chính
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BackgroundTransparency = 0.2
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.35, 0, 0.85, 0)
MainFrame.Size = UDim2.new(0, 400, 0, 60)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Name = "RONIX HUB Frame"

-- Tiêu đề
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, 0, 0.5, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "RONIX HUB"
Title.TextColor3 = Color3.fromRGB(0, 200, 255)
Title.TextScaled = true

-- Nút Skip
SkipButton.Parent = MainFrame
SkipButton.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
SkipButton.Position = UDim2.new(0.05, 0, 0.55, 0)
SkipButton.Size = UDim2.new(0, 100, 0, 25)
SkipButton.Font = Enum.Font.GothamBold
SkipButton.Text = "Skip"
SkipButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SkipButton.TextScaled = true
SkipButton.MouseButton1Click:Connect(function()
	print("Skip button clicked!")
end)

-- Nút Reset Progress
ResetButton.Parent = MainFrame
ResetButton.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
ResetButton.Position = UDim2.new(0.37, 0, 0.55, 0)
ResetButton.Size = UDim2.new(0, 130, 0, 25)
ResetButton.Font = Enum.Font.GothamBold
ResetButton.Text = "Reset Progress"
ResetButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ResetButton.TextScaled = true
ResetButton.MouseButton1Click:Connect(function()
	print("Reset Progress clicked!")
end)

-- Nút Discord Script
DiscordButton.Parent = MainFrame
DiscordButton.BackgroundColor3 = Color3.fromRGB(80, 80, 255)
DiscordButton.Position = UDim2.new(0.72, 0, 0.55, 0)
DiscordButton.Size = UDim2.new(0, 100, 0, 25)
DiscordButton.Font = Enum.Font.GothamBold
DiscordButton.Text = "Discord Script"
DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordButton.TextScaled = true
DiscordButton.MouseButton1Click:Connect(function()
	setclipboard("https://discord.gg/ronixhub") -- bạn có thể đổi link
	print("Discord Script clicked!")
end)

-- Hiệu ứng nhẹ
MainFrame:TweenPosition(UDim2.new(0.35, 0, 0.8, 0), "Out", "Quad", 0.5)
