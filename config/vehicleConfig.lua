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
end --inList

--[[getVehicleCargoEntry returns the cargo table from any vehicle, regardless of if it uses compartments
-- optional index to return a specific cargo entry, defaults to the 1st entry
-- optional compartment to return from a specific ship compartment, defaults to the 1st entry
-- returns false on failure
--]]
function getVehicleCargoEntry(vehicle, index, compartment)
	index = index or 1
	compartment = compartment or 1
	if vehicle.capacities then return vehicle.capacities[index]
	elseif vehicle.compartments then return vehicle.compartments[compartment][index][1]
	else return false
	end
end

--[[getVehicleNumCargoTypes returns the number of cargo entries associated with a vehicle, regardless of if it uses compartments
-- optional compartment to return from a specific ship compartment, defaults to the 1st entry
-- returns 0 if vehicle cannot carry cargo
--]]
function getVehicleNumCargoTypes(vehicle, compartment)
	compartment = compartment or 1
	if vehicle.capacities then return #vehicle.capacities
	elseif vehicle.compartments then return #vehicle.compartments[compartment]
	else return 0
	end
end

--[[getVehicleNumCompartments returns the number of compartments of the vehicle
-- returns 0 if no compartments are found
--]]
function getVehicleNumCompartments(vehicle)
	if vehicle.compartments then return #vehicle.compartments
	else return 0
	end
end

--[[getVehicleCargoList returns details of the current cargo allocations of a vehicle as a table with 3 values
-- [1] number of cargo compartments associated with the vehicle. Returns false on failure
-- [2] list of new cargo types to add to the vehicle. Returns false on failure
-- [3] capacity for the new cargo types (based on vessel's current average load). Returns 0 on failure
--]]
function getVehicleCargoList(vehicle)
	local foundAll = true
	local capCounter = 0
	local cargoEntry = nil
	
	local numCargoEntries = getVehicleNumCargoTypes(vehicle)
	
	if numCargoEntries > 0 then
		for i=1, #stdTransport do
			if numCargoEntries == #stdTransport[i] then
				capCounter = 0
				foundAll = true
				for j=1, numCargoEntries do
					cargoEntry = getVehicleCargoEntry(vehicle, j)
					if inList(stdTransport[i], cargoEntry.type) then
						capCounter = capCounter + cargoEntry.capacity
					else
						foundAll = false
						break
					end
				end
				if foundAll then
					return {getVehicleNumCompartments(vehicle), modTransport[i], math.floor(capCounter / #stdTransport[i])}
				end
			end
		end
	end
	return {false, false, 0}
end

--[[addVehicleCargoList adds new cargo types to a vehicle with the specified capacity
--]]
function addVehicleCargoList(vehicle, newCargoList, newCapacity)
	for i=1, #newCargoList do
		if vehicle.capacities then
			table.insert(vehicle.capacities, {type = newCargoList[i], capacity = newCapacity})
		elseif vehicle.compartments then
			for j=1, #vehicle.compartments do
				table.insert(vehicle.compartments[j], {{type = newCargoList[i], capacity = newCapacity}})
			end
		end
	end
end

function modelCallback(fileName, data)
	if data.metadata.transportVehicle and data.metadata.description and not inList(vehiclesDoNotModify, data.metadata.description.name) then
		local cargoData = getVehicleCargoList(data.metadata.transportVehicle)
		local numCompartments = cargoData[1]
		local newCargoList = cargoData[2]
		local newCargoCapacity = cargoData[3]
		if newCargoList then
			addVehicleCargoList(data.metadata.transportVehicle, newCargoList, newCargoCapacity)
		end
	end
	return data
end