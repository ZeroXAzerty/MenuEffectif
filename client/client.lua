ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(5000)
    end
end)

-- Function
function sendnotification(message)
    SetNotificationBackgroundColor(70)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(message)
    DrawNotification(false, false)
    end

-- Variables

local ped = PlayerPedId()

-- Menus

local MenuEffectif = {
    Base = { Title = "~p~Menu Effectif",HeaderColor = {255, 0, 0,}},
    Data = { currentMenu = "HuntRP" },
    Events = {
        onSelected = function(self, _, btn, JMenu, menuData, currentButton, currentSlt, result)
 
        end
        
    },

    Menu = {
        ["HuntRP"] = {
            b = {
                {name = "----Owner----------", ask = "", askX = true},
                {name = "ZeroX", ask = "", askX = true},
                {name = "----Co Owner-------", ask = "", askX = true},
                {name = "ExoticShadoX", ask = "", askX = true},
                {name = "----Gérant Staff---", ask = "", askX = true},
                {name = "----Super Admin----", ask = "", askX = true},
                {name = "----Développeur----", ask = "", askX = true},
                {name = "ZeroX", ask = "", askX = true},
                {name = "----Admin----------", ask = "", askX = true},
                {name = "----Modérateur-----", ask = "", askX = true},
                {name = "----Assistant------", ask = "", askX = true},
                {name = "----Support--------", ask = "", askX = true},

            }
        },
    }
}

-- Ouverture du Menu



RegisterCommand('effectif', function()
    CreateMenu(MenuEffectif)
    
end, false)
                

