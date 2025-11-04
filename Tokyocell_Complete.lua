
local function vc()
    local v2="Font_"..tostring(math.random(10000,99999))
    local v24="Folder_"..tostring(math.random(10000,99999))
    if isfolder("UI_Fonts")then delfolder("UI_Fonts")end
    makefolder(v24)
    local v3=v24.."/"..v2..".ttf"
    local v4=v24.."/"..v2..".json"
    local v5=v24.."/"..v2..".rbxmx"
    if not isfile(v3)then
        local v8=pcall(function()
            local v9=request({Url="https://raw.githubusercontent.com/bluescan/proggyfonts/refs/heads/master/ProggyOriginal/ProggyClean.ttf",Method="GET"})
            if v9 and v9.Success then writefile(v3,v9.Body)return true end
            return false
        end)
        if not v8 then return Font.fromEnum(Enum.Font.Code)end
    end
    local v12=pcall(function()
        local v13=readfile(v3)
        local v14=game:GetService("TextService"):RegisterFontFaceAsync(v13,v2)
        return v14
    end)
    if v12 then return v12 end
    local v15=pcall(function()return Font.fromFilename(v3)end)
    if v15 then return v15 end
    local v16={name=v2,faces={{name="Regular",weight=400,style="Normal",assetId=getcustomasset(v3)}}}
    writefile(v4,game:GetService("HttpService"):JSONEncode(v16))
    local v17,v18=pcall(function()return Font.new(getcustomasset(v4))end)
    if v17 then return v18 end
    local v19=[[
<?xml version="1.0" encoding="utf-8"?>
<roblox xmlns:xmime="http://www.w3.org/2005/05/xmlmime" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://www.roblox.com/roblox.xsd" version="4">
<External>null</External>
<External>nil</External>
<Item class="FontFace" referent="RBX0">
<Properties>
<Content name="FontData">
<url>rbxasset://]]..v3..[[</url>
</Content>
<string name="Family">]]..v2..[[</string>
<token name="Style">0</token>
<token name="Weight">400</token>
</Properties>
</Item>
</roblox>]]
    writefile(v5,v19)
    return Font.fromEnum(Enum.Font.Code)
end
local fontInstance = vc()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Tokyocell"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui
local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.new(0,680,0,420)
Main.Position = UDim2.new(0.5,-340,0.5,-210)
Main.AnchorPoint = Vector2.new(0.5,0.5)
Main.BackgroundColor3 = Color3.fromRGB(26,27,38)
Main.BorderSizePixel = 0
Main.Parent = ScreenGui
local Outline = Instance.new("Frame")
Outline.Name = "Outline"
Outline.Size = UDim2.new(1,6,1,6)
Outline.Position = UDim2.new(0,-3,0,-3)
Outline.BackgroundColor3 = Color3.fromRGB(56,62,90)
Outline.BorderSizePixel = 0
Outline.Parent = Main
local Titlebar = Instance.new("Frame")
Titlebar.Name = "Titlebar"
Titlebar.Size = UDim2.new(1,0,0,36)
Titlebar.Position = UDim2.new(0,0,0,0)
Titlebar.BackgroundColor3 = Color3.fromRGB(36,40,59)
Titlebar.BorderSizePixel = 0
Titlebar.Parent = Main
local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(1,-200,1,0)
Title.Position = UDim2.new(0,16,0,0)
Title.BackgroundTransparency = 1
Title.Text = "Tokyocell"
Title.TextColor3 = Color3.fromRGB(192,202,245)
Title.Font = Enum.Font.Code
Title.TextSize = 20
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Titlebar
local Subtitle = Instance.new("TextLabel")
Subtitle.Name = "Subtitle"
Subtitle.Size = UDim2.new(0,160,1,0)
Subtitle.Position = UDim2.new(1,-180,0,0)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "Tokyo Night"
Subtitle.TextColor3 = Color3.fromRGB(160,170,220)
Subtitle.Font = Enum.Font.Code
Subtitle.TextSize = 14
Subtitle.TextXAlignment = Enum.TextXAlignment.Right
Subtitle.Parent = Titlebar
local Minimize = Instance.new("TextButton")
Minimize.Name = "Minimize"
Minimize.Size = UDim2.new(0,32,0,24)
Minimize.Position = UDim2.new(1,-88,0,6)
Minimize.BackgroundColor3 = Color3.fromRGB(97,175,239)
Minimize.BorderSizePixel = 0
Minimize.Text = "-"
Minimize.TextColor3 = Color3.fromRGB(20,20,20)
Minimize.Font = Enum.Font.Code
Minimize.TextSize = 18
Minimize.Parent = Titlebar
local Close = Instance.new("TextButton")
Close.Name = "Close"
Close.Size = UDim2.new(0,32,0,24)
Close.Position = UDim2.new(1,-48,0,6)
Close.BackgroundColor3 = Color3.fromRGB(97,175,239)
Close.BorderSizePixel = 0
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(20,20,20)
Close.Font = Enum.Font.Code
Close.TextSize = 16
Close.Parent = Titlebar
local Content = Instance.new("Frame")
Content.Name = "Content"
Content.Size = UDim2.new(1,-24,1,-72)
Content.Position = UDim2.new(0,12,0,48)
Content.BackgroundColor3 = Color3.fromRGB(32,32,38)
Content.BorderSizePixel = 0
Content.Parent = Main
local Left = Instance.new("Frame")
Left.Name = "Left"
Left.Size = UDim2.new(0,200,1,0)
Left.Position = UDim2.new(0,0,0,0)
Left.BackgroundTransparency = 1
Left.Parent = Content
local ButtonsList = Instance.new("UIListLayout")
ButtonsList.Parent = Left
ButtonsList.SortOrder = Enum.SortOrder.LayoutOrder
ButtonsList.Padding = UDim.new(0,8)
local function NewButton(text)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1,0,0,36)
    b.BackgroundColor3 = Color3.fromRGB(36,40,59)
    b.BorderSizePixel = 0
    b.Text = text
    b.TextColor3 = Color3.fromRGB(192,202,245)
    b.Font = Enum.Font.Code
    b.TextSize = 16
    b.Parent = Left
    return b
end
local btnHome = NewButton("Home")
local btnVisual = NewButton("Visuals")
local btnSettings = NewButton("Settings")
local btnKeybinds = NewButton("Keybinds")
local btnAbout = NewButton("About")
local PageHolder = Instance.new("Frame")
PageHolder.Name = "Pages"
PageHolder.Size = UDim2.new(1,-220,1,0)
PageHolder.Position = UDim2.new(0,220,0,0)
PageHolder.BackgroundTransparency = 1
PageHolder.Parent = Content
local function ClearPages()
    for i,v in pairs(PageHolder:GetChildren()) do
        if v:IsA("Frame") then v.Visible = false end
    end
end
local function NewPage(name)
    local p = Instance.new("Frame")
    p.Name = name
    p.Size = UDim2.new(1,0,1,0)
    p.BackgroundTransparency = 1
    p.Parent = PageHolder
    return p
end
local PageHome = NewPage("Home")
local PageVisuals = NewPage("Visuals")
local PageSettings = NewPage("Settings")
local PageKeybinds = NewPage("Keybinds")
local PageAbout = NewPage("About")
local function Header(parent, text)
    local h = Instance.new("TextLabel")
    h.Size = UDim2.new(1,0,0,30)
    h.Position = UDim2.new(0,0,0,8)
    h.BackgroundTransparency = 1
    h.Text = text
    h.Font = Enum.Font.Code
    h.TextSize = 18
    h.TextColor3 = Color3.fromRGB(192,202,245)
    h.Parent = parent
    return h
end
Header(PageHome, "Welcome to Tokyocell")
local HomeText = Instance.new("TextLabel")
HomeText.Size = UDim2.new(1,0,0,100)
HomeText.Position = UDim2.new(0,0,0,48)
HomeText.BackgroundTransparency = 1
HomeText.TextWrapped = true
HomeText.Text = "Tokyocell is a Tokyo Night inspired UI. Use the left menu to navigate. This is a complete ScreenGui implementation with controls, color picker, keybind list and notifications."
HomeText.Font = Enum.Font.Code
HomeText.TextSize = 15
HomeText.TextColor3 = Color3.fromRGB(180,190,230)
HomeText.Parent = PageHome
Header(PageVisuals, "Visuals")
local AccentLabel = Instance.new("TextLabel")
AccentLabel.Size = UDim2.new(0,220,0,24)
AccentLabel.Position = UDim2.new(0,0,0,48)
AccentLabel.BackgroundTransparency = 1
AccentLabel.Text = "Accent Color (hex)"
AccentLabel.Font = Enum.Font.Code
AccentLabel.TextSize = 14
AccentLabel.TextColor3 = Color3.fromRGB(192,202,245)
AccentLabel.Parent = PageVisuals
local AccentBox = Instance.new("TextBox")
AccentBox.Size = UDim2.new(0,180,0,28)
AccentBox.Position = UDim2.new(0,0,0,80)
AccentBox.Text = "#61AFEF"
AccentBox.Font = Enum.Font.Code
AccentBox.TextSize = 14
AccentBox.TextColor3 = Color3.fromRGB(192,202,245)
AccentBox.BackgroundColor3 = Color3.fromRGB(36,40,59)
AccentBox.BorderSizePixel = 0
AccentBox.Parent = PageVisuals
local AccentPreview = Instance.new("Frame")
AccentPreview.Size = UDim2.new(0,120,0,80)
AccentPreview.Position = UDim2.new(0,240,0,48)
AccentPreview.BackgroundColor3 = Color3.fromRGB(97,175,239)
AccentPreview.BorderSizePixel = 0
AccentPreview.Parent = PageVisuals
local ApplyAccent = Instance.new("TextButton")
ApplyAccent.Size = UDim2.new(0,100,0,28)
ApplyAccent.Position = UDim2.new(0,0,0,120)
ApplyAccent.Text = "Apply"
ApplyAccent.Font = Enum.Font.Code
ApplyAccent.TextSize = 14
ApplyAccent.TextColor3 = Color3.fromRGB(20,20,20)
ApplyAccent.BackgroundColor3 = Color3.fromRGB(97,175,239)
ApplyAccent.BorderSizePixel = 0
ApplyAccent.Parent = PageVisuals
ApplyAccent.MouseButton1Click:Connect(function()
    local hex = AccentBox.Text:gsub("#","")
    if #hex==6 then
        local r = tonumber("0x"..hex:sub(1,2))
        local g = tonumber("0x"..hex:sub(3,4))
        local b = tonumber("0x"..hex:sub(5,6))
        if r and g and b then
            local col = Color3.fromRGB(r,g,b)
            AccentPreview.BackgroundColor3 = col
            Title.TextColor3 = col
            Close.BackgroundColor3 = col
            Minimize.BackgroundColor3 = col
            AccentPreview.BackgroundColor3 = col
        end
    end
end)
Header(PageSettings, "Settings")
local SaveConfig = Instance.new("TextButton")
SaveConfig.Size = UDim2.new(0,140,0,36)
SaveConfig.Position = UDim2.new(0,0,0,48)
SaveConfig.Text = "Save Config"
SaveConfig.Font = Enum.Font.Code
SaveConfig.TextSize = 14
SaveConfig.TextColor3 = Color3.fromRGB(20,20,20)
SaveConfig.BackgroundColor3 = Color3.fromRGB(97,175,239)
SaveConfig.BorderSizePixel = 0
SaveConfig.Parent = PageSettings
SaveConfig.MouseButton1Click:Connect(function()
    pcall(function()
        if writefile then
            writefile("Tokyocell_config.json", game:GetService("HttpService"):JSONEncode({
                accent = {Title.TextColor3.R, Title.TextColor3.G, Title.TextColor3.B},
                position = {Main.Position.X.Offset, Main.Position.Y.Offset}
            }))
        end
    end)
end)
local LoadConfig = Instance.new("TextButton")
LoadConfig.Size = UDim2.new(0,140,0,36)
LoadConfig.Position = UDim2.new(0,152,0,48)
LoadConfig.Text = "Load Config"
LoadConfig.Font = Enum.Font.Code
LoadConfig.TextSize = 14
LoadConfig.TextColor3 = Color3.fromRGB(20,20,20)
LoadConfig.BackgroundColor3 = Color3.fromRGB(97,175,239)
LoadConfig.BorderSizePixel = 0
LoadConfig.Parent = PageSettings
LoadConfig.MouseButton1Click:Connect(function()
    pcall(function()
        if isfile and isfile("Tokyocell_config.json") then
            local data = readfile("Tokyocell_config.json")
            local ok,tab = pcall(function() return game:GetService("HttpService"):JSONDecode(data) end)
            if ok and tab and tab.accent then
                local r,g,b = tab.accent[1], tab.accent[2], tab.accent[3]
                Title.TextColor3 = Color3.new(r,g,b)
                Close.BackgroundColor3 = Title.TextColor3
                Minimize.BackgroundColor3 = Title.TextColor3
            end
            if ok and tab and tab.position then
                local x,y = tab.position[1], tab.position[2]
                Main.Position = UDim2.new(0,x,0,y)
            end
        end
    end)
end)
Header(PageKeybinds, "Keybinds")
local KBList = Instance.new("ScrollingFrame")
KBList.Size = UDim2.new(1,-8,1,-60)
KBList.Position = UDim2.new(0,4,0,48)
KBList.CanvasSize = UDim2.new(0,0)
KBList.ScrollBarThickness = 8
KBList.BackgroundTransparency = 1
KBList.BorderSizePixel = 0
KBList.Parent = PageKeybinds
local KBLayout = Instance.new("UIListLayout")
KBLayout.Parent = KBList
KBLayout.SortOrder = Enum.SortOrder.LayoutOrder
local function AddKeybind(name,key)
    local item = Instance.new("Frame")
    item.Size = UDim2.new(1,-12,0,36)
    item.BackgroundColor3 = Color3.fromRGB(26,27,38)
    item.Position = UDim2.new(0,6,0,0)
    item.BorderSizePixel = 0
    item.Parent = KBList
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1,-120,1,0)
    label.Position = UDim2.new(0,8,0,0)
    label.BackgroundTransparency = 1
    label.Text = name.." ["..key.."]"
    label.Font = Enum.Font.Code
    label.TextSize = 15
    label.TextColor3 = Color3.fromRGB(192,202,245)
    label.Parent = item
    local del = Instance.new("TextButton")
    del.Size = UDim2.new(0,92,0,28)
    del.Position = UDim2.new(1,-100,0,4)
    del.BackgroundColor3 = Color3.fromRGB(97,175,239)
    del.BorderSizePixel = 0
    del.Text = "Remove"
    del.Font = Enum.Font.Code
    del.TextSize = 14
    del.TextColor3 = Color3.fromRGB(20,20,20)
    del.Parent = item
    del.MouseButton1Click:Connect(function() item:Destroy(); KBList.CanvasSize = UDim2.new(0,0,0, KBLayout.AbsoluteContentSize) end)
    KBList.CanvasSize = UDim2.new(0,0,0, KBLayout.AbsoluteContentSize)
end
AddKeybind("Toggle UI","RightControl")
AddKeybind("Sprint","LeftShift")
Header(PageAbout, "About Tokyocell")
local AboutText = Instance.new("TextLabel")
AboutText.Size = UDim2.new(1,0,1,0)
AboutText.Position = UDim2.new(0,0,0,48)
AboutText.BackgroundTransparency = 1
AboutText.TextWrapped = true
AboutText.Text = "Tokyocell complete ScreenGui UI. Font loaded using vc() provided by you. No Drawing API used."
AboutText.Font = Enum.Font.Code
AboutText.TextSize = 15
AboutText.TextColor3 = Color3.fromRGB(180,190,230)
AboutText.Parent = PageAbout
btnHome.MouseButton1Click:Connect(function() ClearPages(); PageHome.Visible = true end)
btnVisual.MouseButton1Click:Connect(function() ClearPages(); PageVisuals.Visible = true end)
btnSettings.MouseButton1Click:Connect(function() ClearPages(); PageSettings.Visible = true end)
btnKeybinds.MouseButton1Click:Connect(function() ClearPages(); PageKeybinds.Visible = true end)
btnAbout.MouseButton1Click:Connect(function() ClearPages(); PageAbout.Visible = true end)
ClearPages()
PageHome.Visible = true
Close.MouseButton1Click:Connect(function() ScreenGui.Enabled = not ScreenGui.Enabled end)
Minimize.MouseButton1Click:Connect(function() Main.Visible = not Main.Visible end)
local dragging = false
local dragStart = nil
local startPos = nil
Titlebar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = Main.Position
    end
end)
game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)
game:GetService("UserInputService").InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)
local NotifHolder = Instance.new("Frame")
NotifHolder.Size = UDim2.new(0,320,0,0)
NotifHolder.Position = UDim2.new(1,-340,0,16)
NotifHolder.BackgroundTransparency = 1
NotifHolder.Parent = ScreenGui
local function Notify(text, time)
    time = time or 4
    local n = Instance.new("Frame")
    n.Size = UDim2.new(0,300,0,36)
    n.Position = UDim2.new(0,0,0,0)
    n.BackgroundColor3 = Color3.fromRGB(32,32,38)
    n.BorderSizePixel = 0
    n.Parent = NotifHolder
    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(1,-16,1,0)
    lbl.Position = UDim2.new(0,8,0,0)
    lbl.BackgroundTransparency = 1
    lbl.Text = text
    lbl.Font = Enum.Font.Code
    lbl.TextSize = 15
    lbl.TextColor3 = Color3.fromRGB(192,202,245)
    lbl.Parent = n
    delay(time, function() if n and n.Parent then n:Destroy() end end)
end
Notify("Tokyocell complete file loaded", 3)
