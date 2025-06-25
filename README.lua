-- [ Tela de Login com Verificação Simples para Aspbox ]
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "LoginUI"
gui.ResetOnSpawn = false

-- Caixa principal
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 300, 0, 180)
frame.Position = UDim2.new(0.5, -150, 0.5, -90)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
frame.BorderSizePixel = 0

local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0, 15)

-- Campo de usuário
local user = Instance.new("TextBox", frame)
user.PlaceholderText = "Nome de usuário"
user.Size = UDim2.new(0.8, 0, 0, 40)
user.Position = UDim2.new(0.1, 0, 0.2, 0)
user.BackgroundColor3 = Color3.fromRGB(55, 55, 65)
user.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", user).CornerRadius = UDim.new(0, 10)

-- Campo de senha
local pass = Instance.new("TextBox", frame)
pass.PlaceholderText = "Senha"
pass.Size = UDim2.new(0.8, 0, 0, 40)
pass.Position = UDim2.new(0.1, 0, 0.5, 0)
pass.BackgroundColor3 = Color3.fromRGB(55, 55, 65)
pass.TextColor3 = Color3.new(1,1,1)
pass.ClearTextOnFocus = true
Instance.new("UICorner", pass).CornerRadius = UDim.new(0, 10)

-- Botão de login
local btn = Instance.new("TextButton", frame)
btn.Text = "Entrar"
btn.Size = UDim2.new(0.8, 0, 0, 35)
btn.Position = UDim2.new(0.1, 0, 0.75, 0)
btn.BackgroundColor3 = Color3.fromRGB(80, 80, 100)
btn.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 10)

-- Função de verificação
btn.MouseButton1Click:Connect(function()
	local nome = user.Text
	local senha = pass.Text

	if nome == "Aspbox" and senha == "AspLine" then
		gui:Destroy()
		print("Login autorizado para Aspbox")
	else
		btn.Text = "Acesso negado"
		wait(1)
		btn.Text = "Entrar"
	end
end)
