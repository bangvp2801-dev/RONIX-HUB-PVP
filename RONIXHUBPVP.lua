-- RONIX HUB UI (phiên bản đơn giản)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Xóa UI cũ nếu có
local old = PlayerGui:FindFirstChild("RONIX_HUB_UI")
if old then old:Destroy() end

-- Tạo ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "RONIX_HUB_UI"
gui.ResetOnSpawn = false
gui.Parent = PlayerGui

-- Tạo khung chính
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 420, 0, 100)
frame.Position = UDim2.new(0.5, -210, 0.1, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Parent = gui

local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0, 12)

-- Tiêu đề “RONIX HUB”
local title = Instance.new("TextLabel")
title.Parent = frame
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Font = Enum.Font.SourceSansBold
title.TextSize = 22
title.Text = "RONIX HUB"
title.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Nút Skip
local skip = Instance.new("TextButton")
skip.Parent = frame
skip.Size = UDim2.new(0, 120, 0, 36)
skip.Position = UDim2.new(0.5, -60, 0.5, -10)
skip.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
skip.TextColor3 = Color3.fromRGB(255, 255, 255)
skip.Font = Enum.Font.SourceSansSemibold
skip.TextSize = 18
skip.Text = "Skip"

local skipCorner = Instance.new("UICorner", skip)
skipCorner.CornerRadius = UDim.new(0, 8)

-- Khi bấm nút Skip
skip.MouseButton1Click:Connect(function()
    print("[RONIX HUB] Skip button clicked!")
    skip.Text = "Skipped!"
    task.wait(1)
    skip.Text = "Skip"
end)