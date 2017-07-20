local cfg = require ('industryConfig')

function data()
	version = '2.4'
	info_name = 'New Industry'
	info_desc = 'New Industry from Rail Road platinum'
	-- goods
	WASTE = 'Waste'
	ALUMINUM = 'Aluminum'
	BAUXITE = 'Bauxites'
	MILK = 'Milk'
	COTTON = 'Cotton'
	CLOTHES = 'Clothes'
	FERTILIZERS = 'Fertilizers'
	CHEMICAL = 'Chemicals'
	PAPER = 'Paper'
	FILINGS = 'Wood powder'
	CEMENT = 'Cement'
	LIMESTONE = 'Limestone'
	MINERALS = 'Minerals'
	RUBBER = 'Rubber'
	CARS = 'Cars'
	URAN = 'Uranium'
	ALCOHOL = 'Alcohol'
	
	-- end goods
	lb = '\n'
	site = '[url=http://transport-games.ru/files/file/980-novaya-industriya/]transport-games.ru[/url]'
	site_2 = '[url=https://www.transportfever.net/filebase/index.php/Entry/2661-Neue-Industrien-und-Warenkreisläufe/ ]transportfever.net[/url]'
	incompatible_1 = '[url=http://steamcommunity.com/sharedfiles/filedetails/?id=796227914]Industry Tycoon[/url]'
	incompatible_2 = '[url=http://steamcommunity.com/sharedfiles/filedetails/?id=798712608]Mining Industry 2[/url]'
	incompatible_3 = '[url=http://steamcommunity.com/sharedfiles/filedetails/?id=805207417]Z Production growth[/url]'
	incompatible_4 = '[url=http://steamcommunity.com/sharedfiles/filedetails/?id=805203766]Z Production increase[/url]'
	incompatible_5 = '[url=http://steamcommunity.com/sharedfiles/filedetails/?id=799807906]Hendriks Industry Booster[/url]'
	incompatible_6 = '[url=http://steamcommunity.com/sharedfiles/filedetails/?id=802421382]Town Building Style Mod[/url]'
	donate_1 = '[url=https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=posekretu%40mail%2eru&lc=US&item_name=Alex_BY&no_note=0&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted][img]http://s18.postimg.org/ydt5o15ol/paypal_donate_button.png[/img][/url]'
	donate_2 = '[url=http://yasobe.ru/na/transport_fever_vehicles][img]http://s019.radikal.ru/i632/1608/20/054de3420f85.png[/img][/url]'
	-- Костыль
	Fab_desc = 'Annual maintenance charge for each lvl: '
	Fab_desc_RU = 'Стоимость обслуживания в год за 1 уровень: '
	Fab_desc_DE = 'Die Kosten für die Wartung pro Jahr beträgt für die Stufe 1: '
	Fab_desc_PL = 'Roczny koszt utrzymania na poziomie 1 wynosi: '
	Fab_desc_UK = 'Вартість утримання за рік на один рівень: '
	Fab_desc_ES = 'Mantenimiento anual por cada nivel: '
	QuarryInfo = 'From the 3rd development stage, limestone production is displayed'
	QuarryInfo_RU = 'На 3-ем уровне развития открывается возможность производства Известняка'
	QuarryInfo_DE = 'Ab der 3. Entwicklungsstufe wird Kalksteinproduktion angezeigt'
	QuarryInfo_PL = 'Na 3 poziomie rozwoju oferuje możliwość wapienia produkcji'
	QuarryInfo_UK = 'На третьому рівні виробництва підприємство починає виробляти Вапняк'
	QuarryInfo_ES = 'Desde la tercera etapa de desarrollo, se muestra la producción de caliza'
	IronInfo = 'From the 3rd development stage, mineral production is displayed'
	IronInfo_RU = 'На 3-ем уровне развития открывается возможность производства Минералов'
	IronInfo_DE = 'Ab der 3. Entwicklungsstufe wird Mineralienproduktion angezeigt'
	IronInfo_PL = 'Na 3 poziomie rozwoju oferuje możliwość produkcji minerałów'
	IronInfo_UK = 'На третьому рівні виробництва підприємство починає виробляти Мінерали'
	IronInfo_ES = 'Desde la tercera etapa de desarrollo, se muestra la producción de minerales'
	CementInfo = 'Components are available since 3rd level of Quarry and Iron mine.'
	CementInfo_RU = 'Составляющие появляются на 3-м уровне развития Каменоломни и Железного рудника.'
	CementInfo_DE = 'Die Komponenten kommen bei der dritten Produktionsstufe von dem Steinbruch und von der Eisenerzmine.'
	CementInfo_PL = 'Składniki są dostępne na 3 poziomie rozwoju Kamieniołomni i Kopalni rudy.'
	CementInfo_UK = "Складові з'являються на 3-му рівні розвитку Каменярні та Залізної копальні."
	CementInfo_ES = 'Los componentes estan disponibles desde el tercer nivel de la cantera y la mina de hierro.'
	TruckTerminal = 'Factory has a cargo terminal'
	TruckTerminal_RU = 'Завод имеет грузовой терминал'
	TruckTerminal_DE = 'Fabrik hat ein Frachtterminal'
	TruckTerminal_PL = 'Fabryka posiada terminal ładunkowy'
	TruckTerminal_UK = 'Завод має вантажну станцію'
	TruckTerminal_ES = 'La fábrica tiene una terminal de carga'
	-- Asset
	Asset_Name = 'Tractor'
	Asset_Desc = 'Tractor Asset Set'
	Asset_1 = 'Tractor Ford 8n'
	Asset_2 = 'Trailer GKB-817'
	Asset_3 = 'Trailer GKB-819'
	Asset_4 = 'Trailer PC-817'
	Left = 'Left'
	Straight = 'Straight'
	Right = 'Right'
	Height = 'Height'
	Normal = 'Normal'
	Sidewalk = 'Sidewalk'
	-- Grain Silo
	Grain_silo = 'Grain silo'
	GrainMaintenance = string.format("$%0.0fK", _G.GrainMaintenanceCost/1000)
	Grain_desc = Fab_desc..GrainMaintenance
	-- Cotton Farm
	Cotton_plantation = 'Cotton plantation'	
	CottonMaintenance = string.format("$%0.0fK", _G.CottonMaintenanceCost/1000)
	Cotton_desc = Fab_desc..CottonMaintenance
	-- Dairy farm
	Dairy_farm = 'Dairy farm'
	DairyMaintenance = string.format("$%0.0fK", _G.DairyMaintenanceCost/1000)
	Dairy_desc = Fab_desc..DairyMaintenance
	-- Electric Plant
	Power_plant = 'Power plant'
	PowerMaintenance = string.format("$%0.0fK", _G.PowerMaintenanceCost/1000)
	Power_desc = Fab_desc..PowerMaintenance
	-- Fertilizer factory
	Fertilizer_factory = 'Fertilizers factory'
	FertMaintenance = string.format("$%0.0fK", _G.FertMaintenanceCost/1000)
	Fertilizer_desc = Fab_desc..FertMaintenance
	-- Landfill
	Landfill = 'Landfill'
	WasteMaintenance = string.format("$%0.0fK", _G.WasteMaintenanceCost/1000)
	Landfill_desc = Fab_desc..WasteMaintenance
	-- Textile factory
	Textile_factory = 'Textile factory'	
	TextileMaintenance = string.format("$%0.0fK", _G.TextileMaintenanceCost/1000)
	Textile_desc = Fab_desc..TextileMaintenance
	-- Chemical plant
	ChemMaintenance = string.format("$%0.0fK", _G.ChemMaintenanceCost/1000)
	Chemical_desc = Fab_desc..ChemMaintenance
	-- Farm
	FarmMaintenance = string.format("$%0.0fK", _G.FarmMaintenanceCost/1000)
	Farm_desc = Fab_desc..FarmMaintenance
	-- Food processing plant
	FoodMaintenance = string.format("$%0.0fK", _G.FoodMaintenanceCost/1000)
	Food_desc = Fab_desc..FoodMaintenance
	-- Coal mine
	CoalMaintenance = string.format("$%0.0fK", _G.CoalMaintenanceCost/1000)
	Coal_desc = Fab_desc..CoalMaintenance
	-- Construction materials plant
	ConstMaintenance = string.format("$%0.0fK", _G.ConstMaintenanceCost/1000)
	Construction_desc = Fab_desc..ConstMaintenance
	-- Forest
	ForestMaintenance = string.format("$%0.0fK", _G.ForestMaintenanceCost/1000)
	Forest_desc = Fab_desc..ForestMaintenance
	-- Goods factory
	GoodsMaintenance = string.format("$%0.0fK", _G.GoodsMaintenanceCost/1000)
	Goods_desc = Fab_desc..GoodsMaintenance
	-- Iron ore mine
	IronMaintenance = string.format("$%0.0fK", _G.IronMaintenanceCost/1000)
	Iron_desc = IronInfo..lb..lb..Fab_desc..IronMaintenance
	-- Machine factory
	MachineMaintenance = string.format("$%0.0fK", _G.MachineMaintenanceCost/1000)
	Machine_desc = Fab_desc..MachineMaintenance
	-- Oil refinery
	OilRefMaintenance = string.format("$%0.0fK", _G.OilRefMaintenanceCost/1000)
	Oil_refinery_desc = Fab_desc..OilRefMaintenance
	-- Oil well
	OilWellMaintenance = string.format("$%0.0fK", _G.OilWellMaintenanceCost/1000)
	Oil_well_desc = Fab_desc..OilWellMaintenance
	-- Quarry
	QuarryMaintenance = string.format("$%0.0fK", _G.QuarryMaintenanceCost/1000)
	Quarry_desc = QuarryInfo..lb..lb..Fab_desc..QuarryMaintenance
	-- Saw mill
	SawMillMaintenance = string.format("$%0.0fK", _G.SawMillMaintenanceCost/1000)
	Saw_mill_desc = Fab_desc..SawMillMaintenance
	-- Steel_mill_desc
	SteelMillMaintenance = string.format("$%0.0fK", _G.SteelMillMaintenanceCost/1000)
	Steel_mill_desc = Fab_desc..SteelMillMaintenance
	-- Raceway
	Raceway = 'Raceway'
	RacewayMaintenance = string.format("$%0.0fK", _G.RacewayMaintenanceCost/1000)
	Raceway_desc = Fab_desc..RacewayMaintenance
	-- Cement factory
	Cement_factory = 'Cement factory'
	CementMaintenance = string.format("$%0.0fK", _G.CementMaintenanceCost/1000)
	Cement_desc = CementInfo..lb..lb..Fab_desc..CementMaintenance
	-- Paper mill
	Paper_mill = 'Paper mill'
	PaperMaintenance = string.format("$%0.0fK", _G.PaperMaintenanceCost/1000)
	Paper_desc = Fab_desc..PaperMaintenance
	-- Distillery
	Distillery_plant = 'Distillery'
	DistilleryMaintenance = string.format("$%0.0fK", _G.DistilleryMaintenanceCost/1000)
	Distillery_desc = TruckTerminal..lb..lb..Fab_desc..DistilleryMaintenance
	-- Hud
	Extractive_industry = "Extractive industry"
	Manufacturing = 'Manufacturing'
	Producing_industry = 'Producing industry'
	Commerce = "Commerce"
	-- Waggons
	Hopper = "Hopper wagon"
	Hopper_desc = "Hopper wagon is a type of railroad freight self-unloading wagon used to transport loose bulk commodities"
	-- Truck
	gkb817_info = 'Ford 8n (Flat)'
	gkb817_desk = 'Tractor Ford 8n with trailer GKB-817'
	gkb819_info = 'Ford 8n (Bulk)'
	gkb819_desk = 'Tractor Ford 8n with trailer GKB-819'
	pc817_info = 'Ford 8n (Tanker)'
	pc817_desc = 'Tractor Ford 8n with trailer PC-5.6-817'
	return {
	
		en = {
			[info_name] = 	'New Industry '..version,
			[info_desc] = 	'[h1]This mod adds new types of goods and new goods production chains.[/h1]'..lb..
							lb..
							'This mod is translated on 5 languages: English, German, Polish, Ukrain, Russian and Spanish.'..lb..
							'To do list:'..lb..
							'Add more than 14 new types goods;'..lb..
							'Add new freight waggons and trailers;'..lb..
							'Add big car factory;'..lb..
							'Add functional commer.'..lb..
							lb..
							'[h1]This version already includes:[/h1]'..lb..
							'Alcohol production chain.'..lb..
							'Paper production chain.'..lb..
							'Cement production chain.'..lb..
							'Garbage production chain.'..lb..
							'Clothes production chain.'..lb..
							'4 new waggons - Hoppers.'..lb..
							'Added button for building factories. This feature is very expensive and advised for those who have a lot of money to spend. Each new factory have annual maintenance charge. Charge depends on a level of a factory.'..lb..
							'9 unique factories were added.'..lb..
							'Added 12 brand new types of cargo. All new cargo have visuals.'..lb..
							'New cargo will be added to the most of Steam Workshop vehicle mods.'..lb..
							'Every factory provides new workplaces. This parameter depends on the level of the factory. With the development of the factory the amount of workplaces increases.'..lb..
							lb..
							'[h1]This mod is better to be enabled on totally new savegame. Crashes are expected on the existing savegames.[/h1]'..lb..
							'[b]The previous version of the mod:[/b]'..lb..
							site..lb..
							site_2..lb..
							lb..
							'Version 2.4:'..lb..
							'Added Alcohol production chain.'..lb..
							'Added Alcohol 3D model.'..lb..
							'Added Distillery 3D model.'..lb..
							'Production list of Paper Mill was changed.'..lb..
							'Production list of Landfill was changed.'..lb..
							'Tractor was changed. Now it has three different trailers and can carry cargo..'..lb..
							'Add tractor and trailers into asset.'..lb..
							"Added real weight for cargo in the mod. Base (vanilla) cargo wasn't changed. Options for weight are presented in the config file. Default - Weight ON."..lb..
							'Redone fertilizers. Now fertilizers increase production, but they are not necessary..'..lb..
							'Improved compatibility with previous mod versions. We recommend you to start new game with this version..'..lb..
							'Some information about factories can be seen on tooltips of building menu now..'..lb..
							'Waste "got back" proper textures..'..lb..
							'Rebalanced Power Plant.'..lb..
							lb..
							'It does not work with the other mods that change standart characteristics of factories, freight wagons and trucks.'..lb..
							'[b]Do not use with:[/b]'..lb..
							lb..
							incompatible_1..lb..
							incompatible_2..lb..
							incompatible_3..lb..
							incompatible_4..lb..
							incompatible_5..lb..
							incompatible_6..lb..
							lb..
							lb..
							'Donates are welcome:'..lb..
							donate_1..lb..
							lb..
							donate_2..lb..
							lb..
							'[b]Mod creators are not responsible for the mod and/or game performance. Use this mod on your own risk.[/b]',
			[Grain_desc] = Fab_desc..GrainMaintenance,
			[Cotton_desc] = Fab_desc..CottonMaintenance,
			[Dairy_desc] = Fab_desc..DairyMaintenance,
			[Power_desc] = Fab_desc..PowerMaintenance,
			[Fertilizer_desc] = Fab_desc..FertMaintenance,
			[Landfill_desc] = Fab_desc..WasteMaintenance,
			[Textile_desc] = Fab_desc..TextileMaintenance,
			[Chemical_desc] = Fab_desc..ChemMaintenance,
			[Farm_desc] = Fab_desc..FarmMaintenance,
			[Food_desc] = Fab_desc..FoodMaintenance,
			[Chemical_desc] = Fab_desc..ChemMaintenance,
			[Coal_desc] = Fab_desc..CoalMaintenance,
			[Construction_desc] = Fab_desc..ConstMaintenance,
			[Forest_desc] = Fab_desc..ForestMaintenance,
			[Goods_desc] = Fab_desc..GoodsMaintenance,
			[Iron_desc] = IronInfo..lb..lb..Fab_desc..IronMaintenance,
			[Machine_desc] = Fab_desc..MachineMaintenance,
			[Oil_refinery_desc] = Fab_desc..OilRefMaintenance,
			[Oil_well_desc] = Fab_desc..OilWellMaintenance,
			[Quarry_desc] = QuarryInfo..lb..lb..Fab_desc..QuarryMaintenance,
			[Saw_mill_desc] = Fab_desc..SawMillMaintenance,
			[Steel_mill_desc] = Fab_desc..SteelMillMaintenance,
			[Raceway_desc] = Fab_desc..RacewayMaintenance,
			[Cement_desc] = CementInfo..lb..lb..Fab_desc..CementMaintenance,
			[Paper_desc] = Fab_desc..PaperMaintenance,
			[Distillery_desc] = TruckTerminal..lb..lb..Fab_desc..DistilleryMaintenance,
		},
		
		ru = {
			[info_name] = 	'Новая Индустрия '..version,
			[info_desc] = 	'[h1]Этот мод добавляет новые товары, а также новые товарные цепочки.[/h1]'..lb..
							lb..
							'Переведен на 6 языков: Русский, Английский, Немецкий, Польский, Украинский, Испанский.'..lb..
							'В перспективе:'..lb..
							'Cделать 14 новых видов товара или более;'..lb..
							'Добавить новые вагоны и прицепы;'..lb..
							'Крупный автомобильный завод;'..lb..
							'Добавить полноценную коммерцию.'..lb..
							lb..
							'[h1]На данный момент сделано:[/h1]'..lb..
							'Цепочка акоголя'..lb..
							'Цепочка бумаги'..lb..
							'Цепочка цемента'..lb..
							'Цепочка мусора'..lb..
							'Цепочка одежды'..lb..
							'4 новых вагона - Хоппер'..lb..
							'Кнопка строительства предприятий. Строительство очень дорогое. Специально для тех кто сколотил огромный капитал и не знает куда его деть. По мимо этого, построенные вами предприятия требуют свой бюджет. Рассчитывается за каждый уровень развития отдельно.'..lb..
							'Добавлено 8 уникальных предприятий'..lb..
							'Добавлено 12 уникальных грузов. Все новые товары визуально прописаны в грузовики и вагоны.'..lb..
							'Новый груз автоматически прописывается в другой транспорт из Steam Workshop, при условии, что список совпадает с базовым.'..lb..
							'Каждый завод предоставляет место для рабочих. С развитием фабрик кол-во рабочих мест увеличивается.'..lb..
							lb..
							'[h1]Крайне желательно начать новую игру! При обновлении мода, может ломать сохраненные игры.[/h1]'..lb..
							'[b]Место откуда вы можете скачать предыдущую версию мода:[/b]'..lb..
							site..lb..
							site_2..lb..
							lb..
							'[h1]Version 2.4:[/h1]'..lb..
							'Добавлена цепочка Алкоголя.'..lb..
							'Добавлена модель для груза Алкоголь.'..lb..
							'Добавлена модель для Спиртового завода.'..lb..
							'Изменен список товаров для Бумажного комбината.'..lb..
							'Изменен список товаров для Свалки.'..lb..
							'Изменен Трактор, теперь он обладает тремя разными прицепами и перевозит груз.'..lb..
							'Трактор и прицепы добавлены в ассеты.'..lb..
							'Добавлен реальный вес для новых товаров из Мода, базовые не трогались. В конфигурационный файл добавлены ключи для тонкой настройки параметров. По умолчанию вес - включен..'..lb..
							'Удобрения переосмыслены, теперь они не являются необходимым товаром, а лишь стимулирующим.'..lb..
							'Добавлены "заглушки" для лучшей совместимости с сохранениями предыдущих версий. В данной версии рекомендуется начать новую игру..'..lb..
							'Теперь некоторую информацию по заводам можно найти во всплывающих подсказках меню строительства.'..lb..
							'Мусору вернули "правильные" текстуры.'..lb..
							'Перебалансирована Электростанция.'..lb..
							lb..
							'Мод не совместим с другими модами, меняющие стандартные характеристики грузовиков, грузовых вагонов, фабрик.'..lb..
							'[b]Не совместим с:[/b]'..lb..
							lb..
							incompatible_1..lb..
							incompatible_2..lb..
							incompatible_3..lb..
							incompatible_4..lb..
							incompatible_5..lb..
							incompatible_6..lb..
							lb..
							lb..
							'Пожалуйста, поддержите наш сайт:'..lb..
							donate_1..lb..
							lb..
							donate_2..lb..
							lb..
							'[b]Авторы мода не несут никакой ответственности за работоспособность мода и игры. Используйте на свой страх и риск.[/b]',
			[Extractive_industry] = 'Добывающая промышленность',
			[Manufacturing] = 'Обрабатывающая промышленность',
			[Producing_industry] = 'Производящая промышленность',
			[Commerce] = 'Коммерция',
			[WASTE] = 'Отходы',
			[ALUMINUM] = 'Алюминий',
			[BAUXITE] = 'Бокситы',
			[MILK] = 'Молоко',
			[COTTON] = 'Хлопок',
			[CLOTHES] = 'Одежда',
			[FERTILIZERS] = 'Удобрения',
			[CHEMICAL] = 'Химия',
			[PAPER] = 'Бумага',
			[FILINGS] = 'Опилки',
			[CEMENT] = 'Цемент',
			[LIMESTONE] = 'Известняк',
			[MINERALS] = 'Минералы',
			[RUBBER] = 'Резина',
			[CARS] = 'Автомобили',
			[URAN] = 'Уран',
			[ALCOHOL] = 'Спирт',
			-- Factory
			[Cotton_plantation] = 'Хлопковая ферма',
			[Dairy_farm] = 'Молочная ферма',
			[Power_plant] = 'Электростанция',
			[Fertilizer_factory] = 'Завод удобрений',
			[Grain_silo] = 'Зернохранилище',
			[Landfill] = 'Свалка',
			[Textile_factory] = 'Текстильная фабрика',
			[Grain_desc] = Fab_desc_RU..GrainMaintenance,
			[Cotton_desc] = Fab_desc_RU..CottonMaintenance,
			[Dairy_desc] = Fab_desc_RU..DairyMaintenance,
			[Power_desc] = Fab_desc_RU..PowerMaintenance,
			[Fertilizer_desc] = Fab_desc_RU..FertMaintenance,
			[Landfill_desc] = Fab_desc_RU..WasteMaintenance,
			[Textile_desc] = Fab_desc_RU..TextileMaintenance,
			[Chemical_desc] = Fab_desc_RU..ChemMaintenance,
			[Farm_desc] = Fab_desc_RU..FarmMaintenance,
			[Food_desc] = Fab_desc_RU..FoodMaintenance,
			[Chemical_desc] = Fab_desc_RU..ChemMaintenance,
			[Coal_desc] = Fab_desc_RU..CoalMaintenance,
			[Construction_desc] = Fab_desc_RU..ConstMaintenance,
			[Forest_desc] = Fab_desc_RU..ForestMaintenance,
			[Goods_desc] = Fab_desc_RU..GoodsMaintenance,
			[Iron_desc] = IronInfo_RU..lb..lb..Fab_desc_RU..IronMaintenance,
			[Machine_desc] = Fab_desc_RU..MachineMaintenance,
			[Oil_refinery_desc] = Fab_desc_RU..OilRefMaintenance,
			[Oil_well_desc] = Fab_desc_RU..OilWellMaintenance,
			[Quarry_desc] = QuarryInfo_RU..lb..lb..Fab_desc_RU..QuarryMaintenance,
			[Saw_mill_desc] = Fab_desc_RU..SawMillMaintenance,
			[Steel_mill_desc] = Fab_desc_RU..SteelMillMaintenance,
			[Raceway_desc] = Fab_desc_RU..RacewayMaintenance,
			[Raceway] = 'Гоночная трасса',
			[Cement_desc] = CementInfo_RU..lb..lb..Fab_desc_RU..CementMaintenance,
			[Cement_factory] = 'Цементный завод',
			[Paper_desc] = Fab_desc_RU..PaperMaintenance,
			[Paper_mill] = 'Бумажный комбинат',
			[Distillery_desc] = TruckTerminal_RU..lb..lb..Fab_desc_RU..DistilleryMaintenance,
			[Distillery_plant] = 'Перегонный завод',
			-- Other
			[Asset_Name] = 'Трактор',
			[Asset_Desc] = 'Набор ассетов с трактором',
			[Asset_1] = 'Трактор Форд 8n',
			[Asset_2] = 'Прицеп ГКБ-817',
			[Asset_3] = 'Прицеп ГКБ-819',
			[Asset_4] = 'Прицеп ПЦ-5.6-817',
			[Left] = 'Лево',
			[Straight] = 'Прямо',
			[Right] = 'Право',
			[Height] = 'Высота',
			[Normal] = 'Номальная',
			[Sidewalk] = 'Тротуар',
			-- Vehicle
			[Hopper] = 'Хоппер',
			[Hopper_desc] = 'Саморазгружающийся бункерный грузовой вагон для перевозки массовых сыпучих грузов',
			[gkb817_info] = 'Форд 8n (Платформа)',
			[gkb817_desk] = 'Трактор Форд 8n с прицепом ГКБ-817',
			[gkb819_info] = 'Форд 8n (Насыпной)',
			[gkb819_desk] = 'Трактор Форд 8n с прицепом ГКБ-819',
			[pc817_info] = 'Форд 8n (Бочка)',
			[pc817_desc] = 'Трактор Форд 8n с прицепом ПЦ-5.6-817',
		},
		
		de = {
			[info_name] = 	'Neue Industrie '..version,
			[info_desc] = 	'[h1]Dieser Mod fügt neue Produkte und neue Produktketten hinzu.[/h1]'..lb..
							lb..
							'Übersetzt wurde bisher in 6 Sprachen; EN, DE, PL, RU, UA, ES'..lb..
							'Beschreibung:'..lb..
							'Um die 14 neue Arten von Produkten oder mehr;'..lb..
							'Es wurden neue LKW´s/Waggons hinzugefügt;'..lb..
							'Geplant für das nächste Update: Eine große Automobilfabrik;'..lb..
							'Es wurde ein vollständig neuer Handel hinzugefügt.'..lb..
							lb..
							'[h1]Momentan wurden hinzugefügt:[/h1]'..lb..
							'Eine Warenkette für Zement.'..lb..
							'Eine Warenkette für Abfall.'..lb..
							'Eine Warenkette für Bekleidung.'..lb..
							'4 neue Waggons mit Trichter.'..lb..
							'Ebenfalls wurde ein Button für neue Fabriken hinzugefügt. Er erscheint in der unteren Leiste neben dem Terraforming-Symbol. Der Bau neuer Fabriken ist sehr teuer! Es ist vor Allem für diejenigen gedacht,die nicht wissen wohin mit dem Geld. Hauptsächlich gedacht für den späteren Spielverlauf, wenn die Fabriken die Kapatzität für die Städte nicht mehr produzieren können. Die Kosten wurden für jede neue Entwicklungsstufe berechnet.'..lb..
							'Ebenfalls wurden 8 einzigartige Unternehmen hinzugefügt'..lb..
							'Zusätzlich wurden 12 einzigartige Frachtarten hinzugefügt. Alle einzigartigen Produkte (Frachtarten) werden auf LKW´s und Waggons dargestellt.'..lb..
							'Die neue Fracht wird automatisch auch von den Steam-Workshop-LKW´s/Waggons übernommen und grafisch dargestellt,die auf Vanilla-Basis programmiert wurden.'..lb..
							'Jede Fabrik(Anlage) braucht jetzt Arbeiter, die mit dem Auto oder den öffentlichen Verkehrmittel ihre Arbeitsstelle erreichen müssen. Mit jeder Weiterentwicklung der Fabrik(Anlage) wird die Anzahl an benötigten Arbeitern erhöht.'..lb..
							lb..
							'[h1]Es ist empfehlenswert ein neues Spiel zu starten. Wenn sie die MOD aktuallisieren kann es sein, dass ein gespeichertes Spiel nicht mehr (richtig) funktioniert,oder es zu einem Absturz komm.[/h1]'..lb..
							'Hier können sie die vorherige Version 2.0 der Mod als ZIP-Datei (für ihre gespeicherten Spiele) herunterladen.(Einfach den türkisenen Button anwählen und die gewünschte Version aussuchen). Die ZIP-Datai einfach in den MOD-Ordner von Transport Fever entpacken. WICHTIG ! Nicht vergessen beim laden eines Spiels der Version v2.0 diese in die Mod-Liste zu setzen und die Version 2.1 aus der Mod-Liste herausnehmen.'..lb..
							site..lb..
							site_2..lb..
							lb..
							'[h1]Version 2.4:[/h1]'..lb..
							'Hinzugefügt Spirituosen Produktionslinie.'..lb..
							'Hinzugefügt Spirituosen 3D-Modell.'..lb..
							'Hinzugefügt Destillationsanlage 3D-Modell.'..lb..
							'Änderte die Warenliste für die Papierfabrik.'..lb..
							'Die Liste der Waren für die Deponie wurde geändert.'..lb..
							'Traktor geändert, jetzt hat er drei verschiedene Anhänger und transportiert Fracht (Güter).'..lb..
							lb..
							'Dieser Mode ist nicht kompatibel mit anderen Mods welche die Eigenschaften der Standartfahrzeuge, Güterwagen oder Fabriken ändern.'..lb..
							'[b]Nicht kompatibel mit:[/b]'..lb..
							lb..
							incompatible_1..lb..
							incompatible_2..lb..
							incompatible_3..lb..
							incompatible_4..lb..
							incompatible_5..lb..
							incompatible_6..lb..
							lb..
							lb..
							'Bitte unterstützen Sie unsere Website:'..lb..
							donate_1..lb..
							lb..
							donate_2..lb..
							lb..
							'[b]Für Schäden an Soft- und Hardware übernehmen wir keine Verantwortung. Die Benutzung ist auf eigene Gefahr.[/b]',
			[Extractive_industry] = 'Rohstoffindustrie',
			[Manufacturing] = 'Herstellung',
			[Producing_industry] = 'Fertigungsindustrie',
			[Commerce] = 'Handel',
			[WASTE] = 'Abfall',
			[ALUMINUM] = 'Aluminium',
			[BAUXITE] = 'Bauxite',
			[MILK] = 'Milch',
			[COTTON] = 'Baumwolle',
			[CLOTHES] = 'Kleidung',
			[FERTILIZERS] = 'Düngemittel',
			[CHEMICAL] = 'Chemikalien',
			[PAPER] = 'Papier',
			[FILINGS] = 'Sägespäne',
			[CEMENT] = 'Zement',
			[LIMESTONE] = 'Kalkstein',
			[MINERALS] = 'Mineralien',
			[RUBBER] = 'Gummi',
			[CARS] = 'Autos',
			[URAN] = 'Uran',
			[ALCOHOL] = 'Alkohol',
			[Cotton_plantation] = 'Baumwollplantage',
			[Dairy_farm] = 'Molkerei',
			[Power_plant] = 'Kraftwer',
			[Fertilizer_factory] = 'Düngemittelfabrik',
			[Grain_silo] = 'Getreidespeicher',
			[Landfill] = 'Mülldeponie',
			[Textile_factory] = 'Textilfabrik',
			[Grain_desc] = Fab_desc_DE..GrainMaintenance,
			[Cotton_desc] = Fab_desc_DE..CottonMaintenance,
			[Dairy_desc] = Fab_desc_DE..DairyMaintenance,
			[Power_desc] = Fab_desc_DE..PowerMaintenance,
			[Fertilizer_desc] = Fab_desc_DE..FertMaintenance,
			[Landfill_desc] = Fab_desc_DE..WasteMaintenance,
			[Textile_desc] = Fab_desc_DE..TextileMaintenance,
			[Chemical_desc] = Fab_desc_DE..ChemMaintenance,
			[Farm_desc] = Fab_desc_DE..FarmMaintenance,
			[Food_desc] = Fab_desc_DE..FoodMaintenance,
			[Chemical_desc] = Fab_desc_DE..ChemMaintenance,
			[Coal_desc] = Fab_desc_DE..CoalMaintenance,
			[Construction_desc] = Fab_desc_DE..ConstMaintenance,
			[Forest_desc] = Fab_desc_DE..ForestMaintenance,
			[Goods_desc] = Fab_desc_DE..GoodsMaintenance,
			[Iron_desc] = IronInfo_DE..lb..lb..Fab_desc_DE..IronMaintenance,
			[Machine_desc] = Fab_desc_DE..MachineMaintenance,
			[Oil_refinery_desc] = Fab_desc_DE..OilRefMaintenance,
			[Oil_well_desc] = Fab_desc_DE..OilWellMaintenance,
			[Quarry_desc] = QuarryInfo_DE..lb..lb..Fab_desc_DE..QuarryMaintenance,
			[Saw_mill_desc] = Fab_desc_DE..SawMillMaintenance,
			[Steel_mill_desc] = Fab_desc_DE..SteelMillMaintenance,
			[Raceway_desc] = Fab_desc_DE..RacewayMaintenance,
			[Raceway] = 'Speedwayrennen',
			[Cement_desc] = CementInfo_DE..lb..lb..Fab_desc_DE..CementMaintenance,
			[Cement_factory] = 'Zementwerk',
			[Paper_desc] = Fab_desc_DE..PaperMaintenance,
			[Paper_mill] = 'Papierfabrik',
			[Distillery_desc] = TruckTerminal_DE..lb..lb..Fab_desc_DE..DistilleryMaintenance,
			[Distillery_plant] = 'Destillieranlage',
			-- Other
			[Asset_Name] = 'Traktor',
			[Asset_Desc] = 'Set Vermögenswerte Liste mit Traktor',
			[Asset_1] = 'Traktor Ford 8n',
			[Asset_2] = 'Anhänger GKB-817',
			[Asset_3] = 'Anhänger GKB-819',
			[Asset_4] = 'Anhänger PC-5.6-817',
			[Left] = 'Links',
			[Straight] = 'Gerade',
			[Right] = 'Rechts',
			[Height] = 'Bauhöhe',
			[Normal] = 'Normal',
			[Sidewalk] = 'Gehsteig',
			-- Vehicle
			[Hopper] = 'Hopper',
			[Hopper_desc] = 'Kipp-Schüttgutwagen für den Transport von Schüttgut Schüttgüter',
			[gkb817_info] = 'Ford 8n (flach)',
			[gkb817_desk] = 'Traktor Ford 8n mit Anhänger GKB-817',
			[gkb819_info] = 'Ford 8n (Schüttgut)',
			[gkb819_desk] = 'Traktor Ford 8n mit Anhänger GKB-819',
			[pc817_info] = 'Ford 8n (Tanker)',
			[pc817_desc] = 'Traktor Ford 8n mit Anhänger PC-5.6-817',
		},

		pl = {
			[info_name] = 	'Ulepszony Przemysł '..version,
			[info_desc] = 	'[h1]Mod dodaje kilka nowych towarów oraz kilka nowych łańcuchów przetwarzania.[/h1]'..lb..
							lb..
							'Lokalizacja w 6 językach: PL, EN, DE, RU, UA, ES'..lb..
							'W planach:'..lb..
							'Dodać co najmniej 14 nowych towarów;'..lb..
							'Dodać nowe rodzaje wagonów oraz naczep;'..lb..
							'Dodać fabrykę samochodów;'..lb..
							'Rozwinąć drzewko handlu.'..lb..
							lb..
							'[h1]Już zrobione:[/h1]'..lb..
							'Nowy łańcuch przetwarzania - cement.'..lb..
							'Nowy łańcuch przetwarzania - odpady.'..lb..
							'Nowy łańcuch przetwarzania - odzież.'..lb..
							'4 nowe typy wagonów - Hopper.'..lb..
							'Została dodana możliwość kupowania własnych fabryk. Każda kupiona fabryka utrzymywana jest z waszego budżetu. Koszty utrzymania zależne są od poziomu rozwoju danej fabryki.'..lb..
							'Dodano 8 unikatowych przedsiębiorstw.'..lb..
							'Dodano 12 nowych towarów. Nowe towary są przystosowane do transportu.'..lb..
							'Nowe towary będą przystosowane do transportu pobranego ze Steam automatycznie. Biorąc pod uwagę to, że nowy transport ma taki sam wykaz towarów jak w grze podstawowej.'..lb..
							'Każde przedsiębiorstwo ma zapotrzebowanie na siłę roboczą, która zwiększa się wraz z rozwojem przedsiębiorstwa.'..lb..
							lb..
							'[h1]Zalecane jest rozpoczęcie Nowej Gry! Stare savy mogą być nie kompatybilne z nową wersją moda.[/h1]'..lb..
							'[b]Poprzednie wersje moda:[/b]'..lb..
							site..lb..
							site_2..lb..
							lb..
							'[h1]Version 2.4:[/h1]'..lb..
							'Nowy łańcuch przetwarzania - alkohol.'..lb..
							'Dodano model alkoholu.'..lb..
							'Dodano model wytwórni alkoholu.'..lb..
							'Zmieniona lista towarów Papierni.'..lb..
							'Zmieniona lista towarów Wysypiska.'..lb..
							'Został wymieniony ciągnik, teraz posiada trzy rodzaje przyczep i może przewozić ładunek.'..lb..
							'Ciągnik i przyczepy dodano do objektów.'..lb..
							'Dodano realistyczną wagę towarów. Można dowolnie konfigurować wagę poprzez plik konfiguracyjny..'..lb..
							lb..
							'Mod nie jest kompatybilny z modami podobnego typu.'..lb..
							'[b]Nie stosować z:[/b]'..lb..
							lb..
							incompatible_1..lb..
							incompatible_2..lb..
							incompatible_3..lb..
							incompatible_4..lb..
							incompatible_5..lb..
							incompatible_6..lb..
							lb..
							lb..
							'Prosimy o wsparcie na naszej witrynie:'..lb..
							donate_1..lb..
							lb..
							donate_2..lb..
							lb..
							'[b]Autorzy moda nie ponoszą odpowiedzialności za prawidłowe działanie moda i gry.[/b]',
			[Extractive_industry] = 'Przemysł wydobywczy',
			[Manufacturing] = 'Produkcja',
			[Producing_industry] = 'Przemysł wytwórczy',
			[Commerce] = 'Handel',
			[WASTE] = 'Odpady',
			[ALUMINUM] = 'Aluminium',
			[BAUXITE] = 'Boksyt',
			[MILK] = 'Mleko',
			[COTTON] = 'Bawełna',
			[CLOTHES] = 'Odzież',
			[FERTILIZERS] = 'Nawóz',
			[CHEMICAL] = 'Chemia',
			[PAPER] = 'Papier',
			[FILINGS] = 'Trociny',
			[CEMENT] = 'Cement',
			[LIMESTONE] = 'Wapień',
			[MINERALS] = 'Minerały',
			[RUBBER] = 'Guma',
			[CARS] = 'Samochody',
			[URAN] = 'Uran',
			[ALCOHOL] = 'Alkohol',
			[Cotton_plantation] = 'Farma bawełny',
			[Dairy_farm] = 'Mleczarnia',
			[Power_plant] = 'Elektrownia',
			[Fertilizer_factory] = 'Zakład rolniczy',
			[Grain_silo] = 'Spichlerz',
			[Landfill] = 'Wysypisko',
			[Textile_factory] = 'Fabryka odzieży',
			[Grain_desc] = Fab_desc_PL..GrainMaintenance,
			[Cotton_desc] = Fab_desc_PL..CottonMaintenance,
			[Dairy_desc] = Fab_desc_PL..DairyMaintenance,
			[Power_desc] = Fab_desc_PL..PowerMaintenance,
			[Fertilizer_desc] = Fab_desc_PL..FertMaintenance,
			[Landfill_desc] = Fab_desc_PL..WasteMaintenance,
			[Textile_desc] = Fab_desc_PL..TextileMaintenance,
			[Chemical_desc] = Fab_desc_PL..ChemMaintenance,
			[Farm_desc] = Fab_desc_PL..FarmMaintenance,
			[Food_desc] = Fab_desc_PL..FoodMaintenance,
			[Chemical_desc] = Fab_desc_PL..ChemMaintenance,
			[Coal_desc] = Fab_desc_PL..CoalMaintenance,
			[Construction_desc] = Fab_desc_PL..ConstMaintenance,
			[Forest_desc] = Fab_desc_PL..ForestMaintenance,
			[Goods_desc] = Fab_desc_PL..GoodsMaintenance,
			[Iron_desc] = IronInfo_PL..lb..lb..Fab_desc_PL..IronMaintenance,
			[Machine_desc] = Fab_desc_PL..MachineMaintenance,
			[Oil_refinery_desc] = Fab_desc_PL..OilRefMaintenance,
			[Oil_well_desc] = Fab_desc_PL..OilWellMaintenance,
			[Quarry_desc] = QuarryInfo_PL..lb..lb..Fab_desc_PL..QuarryMaintenance,
			[Saw_mill_desc] = Fab_desc_PL..SawMillMaintenance,
			[Steel_mill_desc] = Fab_desc_PL..SteelMillMaintenance,
			[Raceway_desc] = Fab_desc_PL..RacewayMaintenance,
			[Raceway] = 'Tor wyścigowy',
			[Cement_desc] = CementInfo_PL..lb..lb..Fab_desc_PL..CementMaintenance,
			[Cement_factory] = 'Cementownia',
			[Paper_desc] = Fab_desc_PL..PaperMaintenance,
			[Paper_mill] = 'Papiernia',
			[Distillery_desc] = TruckTerminal_PL..lb..lb..Fab_desc_PL..DistilleryMaintenance,
			[Distillery_plant] = 'Wytwórnia alkoholu',
			-- Other
			[Asset_Name] = 'Ciągnik',
			[Asset_Desc] = 'Zestaw objektów razem z ciągnikiem',
			[Asset_1] = 'Ciągnik Ford 8n',
			[Asset_2] = 'Przyczepą GKB-817',
			[Asset_3] = 'Przyczepą GKB-819',
			[Asset_4] = 'Przyczepą PC-5.6-817',
			[Left] = 'Lewo',
			[Straight] = 'Do Przodu',
			[Right] = 'Prawo',
			[Height] = 'Wysokość',
			[Normal] = 'Zwykły',
			[Sidewalk] = 'Chodnik',
			-- Vehicle
			[Hopper] = 'Węglarka(Hopper)',
			[Hopper_desc] = 'Samowyładowczy wagon towarowy do przewozu ładunków sypkich',
			[gkb817_info] = 'Ford 8n (Platforma)',
			[gkb817_desk] = 'Ciągnik Ford 8n z przyczepą GKB-817',
			[gkb819_info] = 'Ford 8n (Wywrotka)',
			[gkb819_desk] = 'Ciągnik Ford 8n z przyczepą GKB-819',
			[pc817_info] = 'Ford 8n (Cysterna)',
			[pc817_desc] = 'Ciągnik Ford 8n z przyczepą PC-5.6-817',
		},
		
		uk = {
			[info_name] = 	'Нова Промисловість '..version,
			[info_desc] = 	'[h1]Ця модифікація додає нові вантажі та нові виробничі лінії.[/h1]'..lb..
							lb..
							"Перекладено п'ятьма мовами: російською, англійською, німецькою, польською, українською"..lb..
							'На майбутнє:'..lb..
							'Створити 14 чи більше нових видів вантажів;'..lb..
							'Додати нові вагони та причепи;'..lb..
							'Великий автомобільний завод;'..lb..
							'Додати повноцінну комерцію.'..lb..
							lb..
							'[h1]Вже створено:[/h1]'..lb..
							'Виробнича лінія цементу.'..lb..
							'Виробнича лінія відходів.'..lb..
							'Виробнича лінія одягу.'..lb..
							'4 нових вагонів – Хопер.'..lb..
							'Кнопка для спорудження підприємств. Будівництво дуже дороге. Саме для тих, хто зібрав силу силенну грошей і не знає куди їх подіти. Окрім цього, підприємста, які ви побудуєте, вимагатимуть чималих коштів на утримання. Кожен рівень розвитку підприємства має власну ціну.'..lb..
							'Додано 8 унікальних підприємств.'..lb..
							'Додано 12 унікальних вантажів. Всі нові вантажі додано у вантажівки та вагони.'..lb..
							'Транспорт із майстерні модифікацій Steam також зможе перевозити нові вантажі. Залежить від переліку ванжтів, які може перевозити транспорт-модифікація.'..lb..
							'Кожен завод надає робочі місця, кількість яких залежить від рівня розвитку заводу.'..lb..
							lb..
							'[h1]Рекомендується розпочинати нову гру! При оновленні модифікації старі збереження можуть перестати працювати.[/h1]'..lb..
							'[b]Місце, де ви можете завантажити попередню версію модифікації:[/b]'..lb..
							site..lb..
							site_2..lb..
							lb..
							'[h1]Version 2.4:[/h1]'..lb..
							'Додано виборничу лінію спиртного.'..lb..
							'Додано модель вантажу для Спиртного'..lb..
							'Додано модель Спиртово-горілчаного заводу.'..lb..
							'Змінено список товарів для Паперового комбінату.'..lb..
							'Змінено список товарів для Звалища.'..lb..
							'Змінено Трактор, тепер він має три різні причепи та перевозить вантажі.'..lb..
							"Трактор та причепи додано в об'єкти ландшафту."..lb..
							'Додано реалістичну вагу для нових вантажів з Модифікації, базові не змінено. У налаштуваннях можна змінити вагу вантажів. Типово - вага увімкнена..'..lb..
							'Перероблено добрива, які тепер збільшують продуктивність, але не є необхідними..'..lb..
							'Покращено сумісність зі збереженнями попередніх версій модифікації. У цій версії рекомендовано почати нову гру..'..lb..
							'Теперь деяку інформацію про заводи можна знайти підказках меню будівництва..'..lb..
							'Для сміття повернено відповідні текстури.'..lb..
							'Переналаштовано Електростанцію.'..lb..
							lb..
							'Модифікація несумісна з іншими, які змінюють стандартні характеристика вантажівок, вантажних вагонів, фабрик.'..lb..
							'[b]Не сумісна з:[/b]'..lb..
							lb..
							incompatible_1..lb..
							incompatible_2..lb..
							incompatible_3..lb..
							incompatible_4..lb..
							incompatible_5..lb..
							incompatible_6..lb..
							lb..
							lb..
							'Підтримайте наш сайт, будь ласка:'..lb..
							donate_1..lb..
							lb..
							donate_2..lb..
							lb..
							'[b]Автори модифікації не несуть жодної відповідальності за працездатність модифікації та/або гри. Використовуйте на власний ризик.[/b]',
			[Extractive_industry] = 'Гірнича промисловість',
			[Manufacturing] = 'Обробна промисловість',
			[Producing_industry] = 'Виробнича промисловість',
			[Commerce] = 'Інше (сфера послуг)',
			[WASTE] = 'Відходи',
			[ALUMINUM] = 'Алюміній',
			[BAUXITE] = 'Боксити',
			[MILK] = 'Молоко',
			[COTTON] = 'Бавовна',
			[CLOTHES] = 'Одяг',
			[FERTILIZERS] = 'Добрива',
			[CHEMICAL] = 'Хімікати',
			[PAPER] = 'Папір',
			[FILINGS] = 'Тирса',
			[CEMENT] = 'Цемент',
			[LIMESTONE] = 'Вапняк',
			[MINERALS] = 'Мінерали',
			[RUBBER] = 'Гума',
			[CARS] = 'Автомобілі',
			[URAN] = 'Уран',
			[ALCOHOL] = 'Спиртне',
			[Cotton_plantation] = 'Бавовняна ферма',
			[Dairy_farm] = 'Молочна ферма',
			[Power_plant] = 'Електростанція',
			[Fertilizer_factory] = 'Завод добрив',
			[Grain_silo] = 'Зерносховище',
			[Landfill] = 'Звалище',
			[Textile_factory] = 'Текстильна фабрика',
			[Grain_desc] = Fab_desc_UK..GrainMaintenance,
			[Cotton_desc] = Fab_desc_UK..CottonMaintenance,
			[Dairy_desc] = Fab_desc_UK..DairyMaintenance,
			[Power_desc] = Fab_desc_UK..PowerMaintenance,
			[Fertilizer_desc] = Fab_desc_UK..FertMaintenance,
			[Landfill_desc] = Fab_desc_UK..WasteMaintenance,
			[Textile_desc] = Fab_desc_UK..TextileMaintenance,
			[Chemical_desc] = Fab_desc_UK..ChemMaintenance,
			[Farm_desc] = Fab_desc_UK..FarmMaintenance,
			[Food_desc] = Fab_desc_UK..FoodMaintenance,
			[Chemical_desc] = Fab_desc_UK..ChemMaintenance,
			[Coal_desc] = Fab_desc_UK..CoalMaintenance,
			[Construction_desc] = Fab_desc_UK..ConstMaintenance,
			[Forest_desc] = Fab_desc_UK..ForestMaintenance,
			[Goods_desc] = Fab_desc_UK..GoodsMaintenance,
			[Iron_desc] = IronInfo_UK..lb..lb..Fab_desc_UK..IronMaintenance,
			[Machine_desc] = Fab_desc_UK..MachineMaintenance,
			[Oil_refinery_desc] = Fab_desc_UK..OilRefMaintenance,
			[Oil_well_desc] = Fab_desc_UK..OilWellMaintenance,
			[Quarry_desc] = QuarryInfo_UK..lb..lb..Fab_desc_UK..QuarryMaintenance,
			[Saw_mill_desc] = Fab_desc_UK..SawMillMaintenance,
			[Steel_mill_desc] = Fab_desc_UK..SteelMillMaintenance,
			[Raceway_desc] = Fab_desc_UK..RacewayMaintenance,
			[Raceway] = 'Гоночна траса',
			[Cement_desc] = CementInfo_UK..lb..lb..Fab_desc_UK..CementMaintenance,
			[Cement_factory] = 'Цементний завод',
			[Paper_desc] = Fab_desc_UK..PaperMaintenance,
			[Paper_mill] = 'Паперовий комбінат',
			[Distillery_desc] = TruckTerminal_UK..lb..lb..Fab_desc_UK..DistilleryMaintenance,
			[Distillery_plant] = 'Спиртово-горілчаний завод',
			-- Other
			[Asset_Name] = 'Трактор',
			[Asset_Desc] = "Набір об'єктів ландшафту з трактором",
			[Asset_1] = 'Трактор Форд 8n',
			[Asset_2] = 'Причеп ГКБ-817',
			[Asset_3] = 'Причеп ГКБ-819',
			[Asset_4] = 'Причеп ПЦ-5.6-817',
			[Left] = 'Ліворуч',
			[Straight] = 'Вперед',
			[Right] = 'Праворуч',
			[Height] = 'Висота',
			[Normal] = 'Звичайний',
			[Sidewalk] = 'Тротуар',
			-- Vehicle
			[Hopper] = 'Хопер',
			[Hopper_desc] = 'Саморозвантажуваний бункерний вантажний вагон для перевезення сипких вантажів',
			[gkb817_info] = 'Форд 8n (Платформа)',
			[gkb817_desk] = 'Трактор Форд 8n з причепом ГКБ-817',
			[gkb819_info] = 'Форд 8n (Насипний)',
			[gkb819_desk] = 'Трактор Форд 8n з причепом ГКБ-819',
			[pc817_info] = 'Форд 8n (Бочка)',
			[pc817_desc] = 'Трактор Форд 8n з причепом ПЦ-5.6-817',
		},
		
		es = {
			[info_name] = 	'Nueva Industria '..version,
			[info_desc] = 	'[h1]Esta modificaión añade nuevos tipos de recursos y nuevas cadenas de producción.[/h1]'..lb..
							lb..
							'Esta modificación esta traducida a 6 idiomas: Inglés, Alemán, Polaco, Ucraniano, Ruso y Español.'..lb..
							'Tareas pendientes:'..lb..
							'Añadir más de 14 nuevos tipos de recursos;'..lb..
							'Añadir nuevos vagones de mercancías y tráilers;'..lb..
							'Añadir fábrica de coches;'..lb..
							'Añadir nuevos comercios funcionales.'..lb..
							lb..
							'[h1]Esta versión incluye:[/h1]'..lb..
							'Cadena de producción de cemento'..lb..
							'Cadena de producción de residuos'..lb..
							'Cadena de producción de ropa'..lb..
							'Cadena de producción de papel'..lb..
							'Cadena de producción de alcohol'..lb..
							'4 nuevos vagones - Tolvas'..lb..
							'Añadido un nuevo botón para la construcción de fábricas. Esta característica es bastante cara y recomendada para aquellos que tienen mucho dinero. Cada nueva fábrica tiene un coste de mantenimiento anual. El coste depende del nivel de la fábrica.'..lb..
							'Se han añadido 7 fábricas exclusivas'..lb..
							'Se han añadido 12 nuevos tipos de carga. Estos nuevos tipos de carga tienen nuevos efectos visuales.'..lb..
							'La nueva carga es completamente funcional con la mayoría de vehículos modificados descargados de Steam Workshop.'..lb..
							'Cada fábrica proporciona nuevos lugares de trabajo. Este parámetro depende del nivel de la fábrica. Con el desarrollo de la fábrica, la cantidad de lugares de trabajo aumenta.'..lb..
							lb..
							'[h1]Es mejor usar esta modificación en una partida nueva. Puede causar errores si se añade en partidas guardadas.[/h1]'..lb..
							'[b]Versión anterior:[/b]'..lb..
							site..lb..
							site_2..lb..
							lb..
							'[h1]Version 2.4:[/h1]'..lb..
							'Añadida cadena de producción de alcohol.'..lb..
							'Añadido modelo 3D del alcohol.'..lb..
							'Añadido modelo 3D de la destilería.'..lb..
							'Se cambió la producción de la fábrica de papel.'..lb..
							'Se cambió la producción del vertedero.'..lb..
							'El tractor fue cambiado. Ahora tiene tres remolques diferentes y puede llevar carga..'..lb..
							'Añadidos el tractor y los remolques como decoración.'..lb..
							'Añadido peso real para la carga. La carga base (original) no fue cambiada. Las opciones de peso estan en el archivo de configuración y pueden modificarse libremente. Valor por defecto - ACTIVADO'..lb..
							'Se han cambiado los ferilizantes. Ahora incrementan la producción pero no son necesarios.'..lb..
							'Compatibilidad mejorada con la versión anterior. Aun así se recomienda usarlo en una nueva partida.'..lb..
							'Ahora puede verse la información sobre las fábricas en el menú de los edificios.'..lb..
							'La textura de los residuos ha sido mejorada.'..lb..
							'La central eléctrica ha sido equilibrada.'..lb..
							lb..
							'No funciona con otras modificaciones que cambien características estándar de fábricas, camiones y vagones de mercancías.'..lb..
							'[b]No usar con:[/b]'..lb..
							lb..
							incompatible_1..lb..
							incompatible_2..lb..
							incompatible_3..lb..
							incompatible_4..lb..
							incompatible_5..lb..
							incompatible_6..lb..
							lb..
							lb..
							'¡Los donativos son bienvenidos!'..lb..
							donate_1..lb..
							lb..
							donate_2..lb..
							lb..
							'[b]Los creadores del Mod, no son responsables de la modificación y/o rendimiento inesperado del juego. Úselo bajo su propio riesgo.[/b]',
			[Extractive_industry] = 'Industria Extractiva',
			[Manufacturing] = 'Fabricación',
			[Producing_industry] = 'Industria Productora',
			[Commerce] = 'Comercio',
			[WASTE] = 'Residuos',
			[ALUMINUM] = 'Aluminio',
			[BAUXITE] = 'Bauxita',
			[MILK] = 'Leche',
			[COTTON] = 'Algodón',
			[CLOTHES] = 'Ropa',
			[FERTILIZERS] = 'Fertilizantes',
			[CHEMICAL] = 'Químicos',
			[PAPER] = 'Papel',
			[FILINGS] = 'Serrín',
			[CEMENT] = 'Cemento',
			[LIMESTONE] = 'Caliza',
			[MINERALS] = 'Minerales',
			[RUBBER] = 'Pescado',
			[CARS] = 'Coches',
			[URAN] = 'Pescado',
			[ALCOHOL] = 'Alcohol',
			-- Factory
			[Cotton_plantation] = 'Plantación de algodón',
			[Dairy_farm] = 'Granja lechera',
			[Power_plant] = 'Central eléctrica',
			[Fertilizer_factory] = 'Fábrica de fertilizantes',
			[Grain_silo] = 'Granero',
			[Landfill] = 'Vertedero',
			[Textile_factory] = 'Taller textil',
			[Grain_desc] = Fab_desc_ES..GrainMaintenance,
			[Cotton_desc] = Fab_desc_ES..CottonMaintenance,
			[Dairy_desc] = Fab_desc_ES..DairyMaintenance,
			[Power_desc] = Fab_desc_ES..PowerMaintenance,
			[Fertilizer_desc] = Fab_desc_ES..FertMaintenance,
			[Landfill_desc] = Fab_desc_ES..WasteMaintenance,
			[Textile_desc] = Fab_desc_ES..TextileMaintenance,
			[Chemical_desc] = Fab_desc_ES..ChemMaintenance,
			[Farm_desc] = Fab_desc_ES..FarmMaintenance,
			[Food_desc] = Fab_desc_ES..FoodMaintenance,
			[Chemical_desc] = Fab_desc_ES..ChemMaintenance,
			[Coal_desc] = Fab_desc_ES..CoalMaintenance,
			[Construction_desc] = Fab_desc_ES..ConstMaintenance,
			[Forest_desc] = Fab_desc_ES..ForestMaintenance,
			[Goods_desc] = Fab_desc_ES..GoodsMaintenance,
			[Iron_desc] = IronInfo_ES..lb..lb..Fab_desc_ES..IronMaintenance,
			[Machine_desc] = Fab_desc_ES..MachineMaintenance,
			[Oil_refinery_desc] = Fab_desc_ES..OilRefMaintenance,
			[Oil_well_desc] = Fab_desc_ES..OilWellMaintenance,
			[Quarry_desc] = QuarryInfo_ES..lb..lb..Fab_desc_ES..QuarryMaintenance,
			[Saw_mill_desc] = Fab_desc_ES..SawMillMaintenance,
			[Steel_mill_desc] = Fab_desc_ES..SteelMillMaintenance,
			[Raceway_desc] = Fab_desc_ES..RacewayMaintenance,
			[Raceway] = 'Circuito de carreras',
			[Cement_desc] = CementInfo_ES..lb..lb..Fab_desc_ES..CementMaintenance,
			[Cement_factory] = 'Cementera',
			[Paper_desc] = Fab_desc_ES..PaperMaintenance,
			[Paper_mill] = 'Fábrica de papel',
			[Distillery_desc] = TruckTerminal_ES..lb..lb..Fab_desc_ES..DistilleryMaintenance,
			[Distillery_plant] = 'Destilería',
			-- Other
			[Asset_Name] = 'Tractor',
			[Asset_Desc] = 'Conjunto de elementos del tractor',
			[Asset_1] = 'Tractor Ford 8n',
			[Asset_2] = 'Tráiler GKB-817',
			[Asset_3] = 'Tráiler GKB-819',
			[Asset_4] = 'Tráiler PC-5.6-817',
			[Left] = 'Izquierda',
			[Straight] = 'Recto',
			[Right] = 'Derecha',
			[Height] = 'Altura',
			[Normal] = 'Normal',
			[Sidewalk] = 'Acera',
			-- Vehicle
			[Hopper] = 'Tolva',
			[Hopper_desc] = 'La tolva es un tipo de vagón de mercancías de fácil descarga utilizado para transportar productos a granel sueltos',
			[gkb817_info] = 'Ford 8n (plataforma)',
			[gkb817_desk] = 'Tractor Ford 8n con tráiler GKB-817',
			[gkb819_info] = 'Ford 8n (góndola)',
			[gkb819_desk] = 'Tractor Ford 8n con tráiler GKB-819',
			[pc817_info] = 'Ford 8n (cisterna)',
			[pc817_desc] = 'Tractor Ford 8n con tráiler PC-5.6-817',
		},
	}
end