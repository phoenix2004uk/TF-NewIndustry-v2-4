--Добавление возможности перевозки грузов из мода для всех грузовых транспортных средств
--Описание ванильных грузовых транспортных средств.
local stdOpen = {"COAL", "IRON_ORE", "STONE", "GRAIN", "SLAG"}
local stdBox = {"LIVESTOCK", "PLASTIC", "MACHINES", "TOOLS", "FOOD", "GOODS"}
local stdTank = {"CRUDE", "OIL", "FUEL"}
local stdFlat = {"LOGS", "STEEL", "PLANKS", "CONSTRUCTION_MATERIALS"}
local stdTruck = {"LOGS", "LIVESTOCK", "COAL", "IRON_ORE", "STONE", "GRAIN", "CRUDE", "STEEL", "PLANKS", "PLASTIC", "SLAG", "OIL", "CONSTRUCTION_MATERIALS", "MACHINES", "FUEL",
				  "TOOLS", "FOOD", "GOODS"}
local stdHopper = {"GRAIN"}
local stdRef = {"FOOD"}
local stdShip = {"LOGS", "LIVESTOCK", "COAL", "IRON_ORE", "STONE", "GRAIN", "STEEL", "PLANKS", "PLASTIC", "SLAG", "CONSTRUCTION_MATERIALS", "MACHINES", "TOOLS", "FOOD", "GOODS"}
local stdTransport = {stdOpen, stdBox, stdTank, stdFlat, stdTruck, stdHopper, stdRef, stdShip}
--Описание грузов, которые необходимо добавить грузовым транспортным средствам.
local modOpen = {"WASTE", "LIMESTONE", "MINERALS", "FILINGS", "BAUXITE"}
local modBox = {"COTTON", "CLOTHES", "PAPER", "FISH"}
local modTank = {"MILK", "CHEMICAL", "FERTILIZERS", "ALCOHOL"}
local modFlat = {"CARS", "COM_AUTO", "ALUMINUM"}
local modTruck = {"WASTE", "MILK", "COTTON", "CLOTHES", "FERTILIZERS", "CHEMICAL", "MINERALS", "LIMESTONE", "CEMENT", "PAPER", "FILINGS", "ALCOHOL", "BAUXITE", "ALUMINUM", "FISH"}
local modHopper = {"CEMENT"}
local modRef = {"FISH"}
local modShip = {"WASTE", "COTTON", "CLOTHES", "MINERALS", "LIMESTONE", "CEMENT", "PAPER", "FILINGS", "BAUXITE", "ALUMINUM", "FISH", "CARS", "COM_AUTO"}
local modTransport = {modOpen, modBox, modTank, modFlat, modTruck, modHopper, modRef, modShip}
-- Список транспорта, в который не надо добавлять новый транспорт.
local vehiclesDoNotModify = {
							 _("American horse cart"),
							 _("Ford Model 77"),
							 _("Gondola"),		-- Американский насыпной вагон
							 _("Open wagon"),	-- Европейский насыпной вагон
							 _("Horse cart"),
							 _("Mack AC"),
							 _("Steam Lorry"),
							 _("Studebaker US6 U3"),
							 _("Studebaker US6 U5"),
							 _("Studebaker US6 U10"),
							}
local function inList(list, value)
	for i = 1, #list do
		if list[i] == value then return true end
	end
	return false
end

function round(num, idp)
  local mult = 10^(idp or 0)
  return math.floor(num * mult + 0.5) / mult
end

function canCarryAll(capacities, list)
	counter = 0
	averageCapacity = 0
	for i = 1, #capacities do
		if inList(list, capacities[i].type) then
			counter = counter + 1
			averageCapacity = averageCapacity + capacities[i].capacity
		end
	end
	if counter == #list and counter == #capacities then return {true, round(averageCapacity / counter)}
	else return {false, 0} end
end

function modelCallback(fileName, data)
	if data.metadata.transportVehicle and data.metadata.description and not inList(vehiclesDoNotModify, data.metadata.description.name) then
		if data.metadata.transportVehicle.capacities then
			for i = 1, #stdTransport do
				transp = canCarryAll(data.metadata.transportVehicle.capacities, stdTransport[i])
				if transp[1] then
					for j = 1, #modTransport[i] do
						data.metadata.transportVehicle.capacities[#data.metadata.transportVehicle.capacities + 1] = {type = modTransport[i][j], capacity = transp[2]}
					end
					break
				end
			end
		end
	end
	return data
end