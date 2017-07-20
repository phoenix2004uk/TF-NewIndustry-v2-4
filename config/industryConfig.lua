-- ############ Настройки / Settings ############################################################################################

-- Стоимость заводов / Industry Price
local Raceway =		70000000			-- Гоночная трасса / Raceway
local Coal =		50000000			-- Угольная шахта / Coal mine
local Quarry =		50000000			-- Карьер / Quarry
local Iron =		50000000			-- Железный рудник / Iron ore mine
local SawMill =		40000000			-- Лесопилка / Saw mill
local Forest =		20000000			-- Лесозаготовка / Forest
local OilWell =		50000000			-- Нефтянная скважина / Oil well
local Fert =		50000000			-- Завод удобрений / Fertilizers factory
local Chem =		100000000			-- Химзавод / Chemical plant
local OilRef =		100000000			-- Нефтеперерабатывающий завод / Oil refinery
local Farm =		50000000			-- Ферма / Farm
local SteelMill =	200000000			-- Сталелитейный Завод / Steel mill
local Cotton =		50000000			-- Хлопковая ферма / Cotton plantation
local Dairy =		50000000			-- Молочная ферма / Dairy farm
local Grain =		50000000			-- Зернохранилище / Grain silo
local Power =		90000000			-- Электростанция / Power plant
local Const =		100000000			-- Завод Строй Материалов / Construction materials plant
local Machine =		200000000			-- Машиностроительныц завод / Machine factory
local Goods =		110000000			-- Производственное предприятие / Goods factory
local Food =		100000000			-- Пищевая фабрика / Food processing plant
local Cement =		50000000			-- Цементный завод / Cement factory
local Paper =		100000000			-- Бумажный комбинат / Paper mill
local Textile =		100000000			-- Текстильная фабрика / Textile factory
local Waste =		70000000			-- Свалка / Landfill
local Distillery =	100000000			-- Перегонный завод / Distillery

-- Рандом объема производства / random of capacity plant
leveledCapacity1 = { 90, 110 }		-- 1-ый уровень / 1 level (base 100)
leveledCapacity2 = { 180, 220 }		-- 2-ой уровень / 2 level (base 200)
leveledCapacity3 = { 360, 440 }		-- 3-ий уровень / 3 level (base 400)
leveledCapacity4 = { 720, 880 }		-- 4-ый уровень / 4 level (base 800)
leveledCapacity5 = { 1200, 2000 }	-- 5-ый уровень / 5 level (base 1600)
				--	{нижний, верхний предел}
				--	{LOW, HI} for lvl
RaceledCapacity = { 40, 60 }		-- Гоночная трасса / Raceway

-- Количество рабочих на заводах / Number of workers in factories
					-- 1 , 2 , 3 , 4 , 5 Lvl
ExtLeveledPerson = 	{ 10, 20, 30, 40, 50} 	-- Добывающая промышленность / Extractive industry
ManLeveledPerson = 	{ 15, 30, 45, 60, 75}	-- Обрабатывающая промышленность / Manufacturing
ProdLeveledPerson = { 20, 40, 60, 80, 100}	-- Производящая промышленность / Producing industry
RaceLeveledPerson = 150						-- Гоночная трасса / Raceway

-- Модификатор стоимости ( Base 1 ) / Modifier price
local globalIndustryPriceModifier = 1

-- Модификатор стоимости обслуживания ( Base 250 ) / Modifier for maintenance cost
local MaintenanceCostModifier = 250

-- Модификатор сложности ( Base 1 ) / Modifier difficulty
local Difficulty = 1				-- Now don't work

-- Формула стоимости обслуживания ( Cost/Formula ) / Formula for maintenance cost
local FormulaMaintenanceCost = MaintenanceCostModifier / ( 0.9 + Difficulty/10)

-- Настройки веса / Weight config
WeightOfCargo = "enable"			-- Enable weight for cargo from "New industry" mod
BaseWeight = 1000					-- Base weight (1000kg)

-- ##############################################################################################################################

RacewayCost = Raceway * globalIndustryPriceModifier
RacewayMaintenanceCost = RacewayCost / MaintenanceCostModifier

CoalCost = Coal * globalIndustryPriceModifier * Difficulty
CoalMaintenanceCost = CoalCost / FormulaMaintenanceCost

QuarryCost = Quarry * globalIndustryPriceModifier * Difficulty
QuarryMaintenanceCost = QuarryCost / FormulaMaintenanceCost

IronCost = Iron * globalIndustryPriceModifier * Difficulty
IronMaintenanceCost = IronCost / FormulaMaintenanceCost

SawMillCost = SawMill * globalIndustryPriceModifier * Difficulty
SawMillMaintenanceCost = SawMillCost / FormulaMaintenanceCost

ForestCost = Forest * globalIndustryPriceModifier * Difficulty
ForestMaintenanceCost = ForestCost / FormulaMaintenanceCost

OilWellCost = OilWell * globalIndustryPriceModifier * Difficulty
OilWellMaintenanceCost = OilWellCost / FormulaMaintenanceCost

FertCost = Fert * globalIndustryPriceModifier * Difficulty
FertMaintenanceCost = FertCost / FormulaMaintenanceCost

ChemCost = Chem * globalIndustryPriceModifier * Difficulty
ChemMaintenanceCost = ChemCost / FormulaMaintenanceCost

OilRefCost = OilRef * globalIndustryPriceModifier * Difficulty
OilRefMaintenanceCost = OilRefCost / FormulaMaintenanceCost

FarmCost = Farm * globalIndustryPriceModifier * Difficulty
FarmMaintenanceCost = FarmCost / FormulaMaintenanceCost

SteelMillCost = SteelMill * globalIndustryPriceModifier * Difficulty
SteelMillMaintenanceCost = SteelMillCost / FormulaMaintenanceCost

CottonCost = Cotton * globalIndustryPriceModifier * Difficulty
CottonMaintenanceCost = CottonCost / FormulaMaintenanceCost

DairyCost = Dairy * globalIndustryPriceModifier * Difficulty
DairyMaintenanceCost = DairyCost / FormulaMaintenanceCost

GrainCost = Grain * globalIndustryPriceModifier * Difficulty
GrainMaintenanceCost = GrainCost / FormulaMaintenanceCost

PowerCost = Power * globalIndustryPriceModifier * Difficulty
PowerMaintenanceCost = PowerCost / FormulaMaintenanceCost

ConstCost = Const * globalIndustryPriceModifier * Difficulty
ConstMaintenanceCost = ConstCost / FormulaMaintenanceCost

MachineCost = Machine * globalIndustryPriceModifier * Difficulty
MachineMaintenanceCost = MachineCost / FormulaMaintenanceCost

GoodsCost = Goods * globalIndustryPriceModifier * Difficulty
GoodsMaintenanceCost = GoodsCost / FormulaMaintenanceCost

FoodCost = Food * globalIndustryPriceModifier * Difficulty
FoodMaintenanceCost = FoodCost / FormulaMaintenanceCost

CementCost = Cement * globalIndustryPriceModifier * Difficulty
CementMaintenanceCost = CementCost / FormulaMaintenanceCost

PaperCost = Paper * globalIndustryPriceModifier * Difficulty
PaperMaintenanceCost = PaperCost / FormulaMaintenanceCost

TextileCost = Textile * globalIndustryPriceModifier * Difficulty
TextileMaintenanceCost = TextileCost / FormulaMaintenanceCost

WasteCost = Waste * globalIndustryPriceModifier * Difficulty
WasteMaintenanceCost = WasteCost / FormulaMaintenanceCost

DistilleryCost = Distillery * globalIndustryPriceModifier * Difficulty
DistilleryMaintenanceCost = DistilleryCost / FormulaMaintenanceCost

-- Функции веса

local weight = {
	["WASTE"] = 1.4,
	["ALUMINUM"] = 2.7,
	["BAUXITE"] = 2.0,
	["MILK"] = 1.05,
	["COTTON"] = 0.8,
	["CLOTHES"] = 0.42,
	["FERTILIZERS"] = 1.1,
	["CHEMICAL"] = 1.2,
	["PAPER"] = 0.8,
	["FILINGS"] = 0.16,
	["CEMENT"] = 1.4,
	["LIMESTONE"] = 2.05,
	["MINERALS"] = 2.3,
	["FISH"] = 0.5,
	["CARS"] = 0.18,
	["COM_AUTO"] = 0.18,
	["URAN"] = 19.05,
	["ALCOHOL"] = 0.8
}

function getWeight(name)
	if WeightOfCargo == "enable" then
		return math.floor(BaseWeight * weight[name])        
	else
		return 0
	end
end