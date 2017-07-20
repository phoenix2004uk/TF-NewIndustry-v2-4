local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/Ford_8n/Ford_8n_idle.wav", refDist = 25.0 },
		{ name = "vehicle/Ford_8n/Ford_8n_drive.wav", refDist = 25.0 }
	},
	events =  {
		horn = { names = { "vehicle/truck_old/truck_old_horn.wav" }, refDist = 25.0 },
		openDoors = { names = { "vehicle/truck_old/truck_old_dooropen.wav" }, refDist = 10.0 },
		closeDoors = { names = { "vehicle/truck_old/truck_old_doorclose.wav" }, refDist = 10.0 },
	},

	updateFn = function (input)
		return {
			tracks = soundeffectsutil.makeRoadVehicle2({ 0.05, 0.1, 0.3 },
				10.0,	-- Громкость холостого хода (0.075) ?Плавность перехода?
				0.6,	-- (0.6)
				0.9,	-- Повышение тональность на ходу, выше цифра ниже тональность (0.4)
				input.speed01),
			events = {
				horn = { gain = 1.0, pitch = 1.0 },
				openDoors = { gain = 1.0, pitch = 1.0 },
				closeDoors = { gain = 1.0, pitch = 1.0 }
			}
		}
	end
}
end
