local QBCore = exports['qb-core']:GetCoreObject() 
local IKNANTILONCATBYHADIBB = false
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsPedJumping(PlayerPedId()) then
            IKNANTILONCATBYHADIBB = true
        else
            IKNANTILONCATBYHADIBB = false
        end
    end
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IKNANTILONCATBYHADIBB then
            SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, true, true, false)
            QBCore.Functions.Notify('Anda jatuh setelah melompat!', 'error')
            Citizen.Wait(1000)
            IKNANTILONCATBYHADIBB = false 
        end
    end
end)
