Citizen.CreateThread(function ()
  while true do
    Citizen.Wait(0)

    SetParkedVehicleDensityMultiplierThisFrame(0.0)
    SetRandomVehicleDensityMultiplierThisFrame(0.0)
    SetVehicleDensityMultiplierThisFrame(0.0)
    SetSomeVehicleDensityMultiplierThisFrame(0.0)
  end
end)

AddEventHandler('onResourceStart', function (resourceName)
  if resourceName == GetCurrentResourceName() then
    SetFarDrawVehicles(false)
  end
end)

AddEventHandler('onResourceStop', function (resourceName)
  if resourceName == GetCurrentResourceName() then
    SetFarDrawVehicles(true)
  end
end)
