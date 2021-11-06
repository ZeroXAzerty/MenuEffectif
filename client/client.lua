ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(5000)
    end
end)


-- Variables

local ped = PlayerPedId()

-- Menus

local MenuEffectif = {
    Base = { Title = "~p~Menu Effectif",HeaderColor = {255, 0, 0,}},
    Data = { currentMenu = "servername" },
    Events = {
        onSelected = function(self, _, btn, JMenu, menuData, currentButton, currentSlt, result)
 
        end
        
    },

    Menu = {
        ["servername"] = {
            b = {
                {name = "----Owner----------", ask = "", askX = true},
                {name = "You", ask = "", askX = true},
                {name = "----Co Owner-------", ask = "", askX = true},
                {name = "----Gérant Staff---", ask = "", askX = true},
                {name = "----Super Admin----", ask = "", askX = true},
                {name = "----Développeur----", ask = "", askX = true},
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
                

