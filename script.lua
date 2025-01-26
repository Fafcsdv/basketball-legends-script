-- Basketball Legends Script by SystemX

if not game:IsLoaded() then
    game.Loaded:Wait()
end

-- Проверка игры
if game.PlaceId ~= 1168263273 then -- ID для Basketball Legends
    return
end

local LoaderGui = Instance.new("ScreenGui")
LoaderGui.Name = "LoaderGui"
LoaderGui.Parent = game:GetService("CoreGui")

local LoadingFrame = Instance.new("Frame")
LoadingFrame.Size = UDim2.new(0, 300, 0, 100)
LoadingFrame.Position = UDim2.new(0.5, -150, 0.5, -50)
LoadingFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
LoadingFrame.BorderSizePixel = 0
LoadingFrame.Parent = LoaderGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = LoadingFrame

local LoadingText = Instance.new("TextLabel")
LoadingText.Size = UDim2.new(1, 0, 1, 0)
LoadingText.BackgroundTransparency = 1
LoadingText.Text = "Загрузка скрипта..."
LoadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadingText.TextSize = 20
LoadingText.Font = Enum.Font.GothamBold
LoadingText.Parent = LoadingFrame

-- Основной код скрипта
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

-- Общие переменные
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Конфигурация
local Config = {
    ANTI_CONTACT_KEY = Enum.KeyCode.C,
    SAFE_DISTANCE = 8,
    REACTION_SPEED = 1.5,
    
    AUTO_GUARD_KEY = Enum.KeyCode.G,
    
    SPEED_KEY = Enum.KeyCode.V,
    MIN_SPEED = 0.1,
    MAX_SPEED = 10,
    INITIAL_SPEED = 2
}

-- Состояния
local State = {
    antiContactEnabled = false,
    autoGuardEnabled = false,
    speedEnabled = false,
    currentSpeed = Config.INITIAL_SPEED
}

-- [Весь остальной код из CombinedScript.lua]
-- Здесь идет весь код функций antiContact, autoGuard, speedBypass и GUI

-- Анимация загрузки
for i = 1, 3 do
    LoadingText.Text = "Загрузка скрипта" .. string.rep(".", i)
    wait(0.5)
end

LoadingText.Text = "Скрипт успешно загружен!"
wait(1)
LoaderGui:Destroy()

-- Уведомление о загрузке
local notification = Instance.new("Message")
notification.Text = "Basketball Legends Script загружен!\nНажмите F9 для просмотра управления"
notification.Parent = player:WaitForChild("PlayerGui")
wait(3)
notification:Destroy()

-- Вывод информации в консоль
print([[
Basketball Legends Script by SystemX

Управление:
C - Anti Contact (Уклонение от противников)
G - Auto Guard (Автоматическая защита)
V - Speed Bypass (Изменение скорости)
Стрелка вверх/вниз - Изменение скорости

Приятной игры!
]])
