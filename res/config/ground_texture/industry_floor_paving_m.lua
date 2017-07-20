local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapRepeat("ground_texture/grass_industry.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapRepeat("ground_texture/grass_wood_nrml.dds", true, true, true),
	--detailSize = { 16.0, 16.0 }
	detailSize = { 32.0, 32.0 },
	colorTex = tu.makeTextureMipmapRepeat("models/industry/overlay_textures/small_02.tga", false),
	colorSize = 256.0,
	alphaTex = tu.makeTextureMipmapClampVertical("ground_texture/industry_floor_alpha.dds", true, true),
	alphaSize = { 64.0, 4.0 },
	
	priority = 2,
}
end
