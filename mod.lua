-- Created by Transport-games.ru team

cfg = require ('industryConfig')
cfg = require ('vehicleConfig')

function data()
	return {
		info = {
			minorVersion = 0,
			severityAdd = "WARNING",
			severityRemove = "CRITICAL",
			name = _(info_name),
			description = _(info_desc),
			tags = { "Industry", "Script Mod", "Wagon", "Misc", "Cargo" },
			authors = {			
				{ name = 'Vitaro',		role = 'CREATOR',		text = 'Main creator',						steamProfile = 'Vitaro',		tfnetId = 27686,	tgruID = 9562 },
				{ name = 'Mr.Kot"13"',	role = 'TESTER',		text = 'Test',																					tgruID = 9573 },
				{ name = 'kiemas',		role = 'OTHER',			text = 'Translation into Poland',																tgruID = 9458 },
				{ name = 'Devilhunter',	role = 'CO_CREATOR',	text = 'Script, translation into Ukrain',	steamProfile = 'Devilhunter',						tgruID = 7799 },
				{ name = 'pav',			role = 'CO_CREATOR',	text = '3d models',							steamProfile = 'pvl30',								tgruID = 9687 },
				{ name = 'tirkaz',		role = 'OTHER',			text = 'Translation into English',																tgruID = 9811 },
				{ name = 'Shadowmio',	role = 'OTHER',			text = 'Translation into German',			steamProfile = 'Shadowmio',		tfnetId = 19128 				},
				{ name = 'Oldkestas',	role = 'CO_CREATOR',	text = 'Textures',							steamProfile = 'Oldkestas',							tgruID = 9642 },
				{ name = 'Ural102',		role = 'CO_CREATOR',	text = '3d models',							steamProfile = 'Ural102',							tgruID = 7133 },
				{ name = 'Old',			role = 'CO_CREATOR',	text = '3d models',							steamProfile = 'old77754',							tgruID = 668 },
				{ name = 'Alex',		role = 'CO_CREATOR',	text = '3d models',							steamProfile = 'Alex_BY',		tfnetId = 18703,	tgruID = 1 },
				{ name = 'Malaxit',		role = 'CO_CREATOR',	text = '3d models',							steamProfile = 'Malaxit',							tgruID = 8368 },
			},
			tfnetId = { 2661 },
			url = {
				"http://transport-games.ru/files/file/980-novaya-industriya/",
				"https://www.transportfever.net/filebase/index.php/Entry/2661",
				"http://steamcommunity.com/sharedfiles/filedetails/?id=924099338",
			},	
			visible = true,
		},

		runFn = function (settings)
		
			addModifier("loadModel", modelCallback)

			game.config.industryButton = true
			
		--	New cargo (Новые товары)
			table.insert(game.config.cargotypes, { id = "WASTE",		name = _("Waste"),			weight = getWeight("WASTE") } )			-- Отходы
			table.insert(game.config.cargotypes, { id = "ALUMINUM",		name = _("*"),				weight = getWeight("ALUMINUM") } )		-- Алюминий
			table.insert(game.config.cargotypes, { id = "BAUXITE",		name = _("*"),				weight = getWeight("BAUXITE") } )		-- Бокситы
			table.insert(game.config.cargotypes, { id = "MILK",			name = _("Milk"),			weight = getWeight("MILK") } )			-- Молоко
			table.insert(game.config.cargotypes, { id = "COTTON",		name = _("Cotton"),			weight = getWeight("COTTON") } )		-- Хлопок
			table.insert(game.config.cargotypes, { id = "CLOTHES",		name = _("Clothes"),		weight = getWeight("CLOTHES") } )		-- Одежда
			table.insert(game.config.cargotypes, { id = "FERTILIZERS",	name = _("Fertilizers"),	weight = getWeight("FERTILIZERS") } )	-- Удобрения
			table.insert(game.config.cargotypes, { id = "CHEMICAL",		name = _("Chemicals"),		weight = getWeight("CHEMICAL") } )		-- Химия
			table.insert(game.config.cargotypes, { id = "PAPER",		name = _("Paper"),			weight = getWeight("PAPER") } )			-- Бумага 
			table.insert(game.config.cargotypes, { id = "FILINGS",		name = _("Wood powder"),	weight = getWeight("FILINGS") } )		-- Опилки
			table.insert(game.config.cargotypes, { id = "CEMENT",		name = _("Cement"),			weight = getWeight("CEMENT") } )		-- Цемент (Нужен спец вагон)
			table.insert(game.config.cargotypes, { id = "LIMESTONE",	name = _("Limestone"),		weight = getWeight("LIMESTONE") } )		-- Известняк
			table.insert(game.config.cargotypes, { id = "MINERALS",		name = _("Minerals"),		weight = getWeight("MINERALS") } )		-- Минералы
			table.insert(game.config.cargotypes, { id = "FISH",			name = _("*"),				weight = getWeight("FISH") } )			-- Рыба
		 	table.insert(game.config.cargotypes, { id = "CARS",			name = _("*"),				weight = getWeight("CARS") } )			-- Автомобили (Нужен спец вагон)
		 	table.insert(game.config.cargotypes, { id = "COM_AUTO",		name = _("*"),				weight = getWeight("COM_AUTO") } )		-- Спец техника (Нужен спец вагон)
			table.insert(game.config.cargotypes, { id = "URAN",			name = _("Uranium"),		weight = getWeight("URAN") } )			-- Уран
			table.insert(game.config.cargotypes, { id = "ALCOHOL",		name = _("Alcohol"),		weight = getWeight("ALCOHOL") } )		-- Спирт
		end
	}
end