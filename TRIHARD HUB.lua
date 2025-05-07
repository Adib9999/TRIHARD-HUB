-- Définition des menus dans le script TRIHARD HUB

local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/Polygraphx/Rayfield/main/Source.lua"))()  -- Charger Rayfield

Rayfield:CreateWindow({
    Name = "TRIHARD HUB",
    LoadingTitle = "Chargement...",
    LoadingSubtitle = "Merci de patienter",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "TRIHARD_HUB",
        FileName = "Settings"
    },
    Discord = {
        Enabled = false,
        Invite = "discord.gg/tonDiscord",
        RememberJoins = false
    },
    KeySystem = false,
    KeySettings = {
        Title = "Accès au script",
        Subtitle = "Entrez votre clé",
        Note = "Vous n'en avez pas besoin pour l'instant.",
        FileName = "TRIHARD_HUB_key",
        SaveKey = false
    }
})

-- Création des onglets et des sections

local CombatTab = Rayfield:CreateTab("Combat", 4483362458)
local AimbotTab = Rayfield:CreateTab("Aimbot", 4483362458)
local MeleeTab = Rayfield:CreateTab("Melee", 4483362458)
local VisualTab = Rayfield:CreateTab("Visual", 4483362458)
local PlayerTab = Rayfield:CreateTab("Player", 4483362458)

-- Onglet Combat : Ajouter aimbot et FOV
CombatTab:CreateSection("Aimbot et FOV")
CombatTab:CreateSlider({
    Name = "Aimbot FOV",
    Range = {0, 100},
    Increment = 1,
    Suffix = "%",
    Default = 50,
    Callback = function(value)
        -- Code pour ajuster FOV
    end
})
CombatTab:CreateToggle({
    Name = "Aimbot Mobile Fixe",
    Default = true,
    Callback = function(enabled)
        -- Activer/Desactiver aimbot mobile
    end
})
CombatTab:CreateSlider({
    Name = "Smoothness",
    Range = {0, 100},
    Increment = 1,
    Suffix = "%",
    Default = 50,
    Callback = function(value)
        -- Code pour ajuster smoothness
    end
})

-- Onglet Melee : Choisir une arme
MeleeTab:CreateSection("Choisir une arme")
MeleeTab:CreateDropdown({
    Name = "Arme",
    Default = "Melee",
    Options = {"Melee", "Hammer", "Sword"},
    Callback = function(selected)
        -- Code pour changer l'arme
    end
})
MeleeTab:CreateToggle({
    Name = "Manual Kill Aura",
    Default = false,
    Callback = function(enabled)
        -- Code pour activer Kill Aura
    end
})
MeleeTab:CreateSlider({
    Name = "Attack Speed",
    Range = {1, 10},
    Increment = 1,
    Default = 5,
    Callback = function(value)
        -- Code pour ajuster la vitesse d'attaque
    end
})

-- Onglet Visual : ESP Joueur et Inventaire
VisualTab:CreateSection("Visual")
VisualTab:CreateToggle({
    Name = "ESP Joueur",
    Default = true,
    Callback = function(enabled)
        -- Code pour afficher les ESP des joueurs
    end
})
VisualTab:CreateToggle({
    Name = "ESP Inventaire",
    Default = true,
    Callback = function(enabled)
        -- Code pour afficher les ESP des objets dans l'inventaire
    end
})

-- Onglet Player : Infinite Stamina
PlayerTab:CreateSection("Player")
PlayerTab:CreateToggle({
    Name = "Infinite Stamina",
    Default = true,
    Callback = function(enabled)
        -- Code pour avoir de l'infinite stamina
    end
})

-- Enregistrer et finaliser l'interface
Rayfield:Load()
