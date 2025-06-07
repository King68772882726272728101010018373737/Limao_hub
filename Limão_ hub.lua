repeat task.wait() until game:IsLoaded()

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({ Name = "Limão Hub | Blox Fruits", LoadingTitle = "Limão Hub", LoadingSubtitle = "by @welix_blox0", ConfigurationSaving = { Enabled = true, FolderName = "LimaoHubCFG", FileName = "LimaoHub" }, Discord = { Enabled = false }, KeySystem = false })

local MainTab = Window:CreateTab("Principal", 4483362458)

getgenv().AutoFarm = false getgenv().AutoBoss = false getgenv().AutoMateriais = false getgenv().AutoEventos = false getgenv().AutoMissaoBoss = false getgenv().AutoSkullGuitar = false getgenv().AutoCDK = false getgenv().AutoComprarEspada = false getgenv().AutoRipIndra = false getgenv().AutoFarmProximos = false getgenv().AutoRacas = false

function FarmDinheiro() while getgenv().AutoFarm and task.wait() do print("Farmando dinheiro...") end end

function FarmBosses() while getgenv().AutoBoss and task.wait() do print("Matando bosses...") end end

function ColetarMateriais() while getgenv().AutoMateriais and task.wait() do print("Coletando materiais...") end end

MainTab:CreateToggle({ Name = "Auto Farm Dinheiro", CurrentValue = false, Callback = function(Value) getgenv().AutoFarm = Value if Value then spawn(FarmDinheiro) end end, })

MainTab:CreateToggle({ Name = "Auto Bosses", CurrentValue = false, Callback = function(Value) getgenv().AutoBoss = Value if Value then spawn(FarmBosses) end end, })

MainTab:CreateToggle({ Name = "Auto Coletar Materiais", CurrentValue = false, Callback = function(Value) getgenv().AutoMateriais = Value if Value then spawn(ColetarMateriais) end end, })

Rayfield:Notify({ Title = "Limão Hub", Content = "Script carregado com sucesso!", Duration = 5, Image = 4483362458, Actions = { Ignore = { Name = "OK", Callback = function() end } } })

