local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapRepeat("ground_texture/organik_cotton_details.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapRepeat("ground_texture/organik_cotton_nrml.dds", true, true, true),
	detailSize = { 32.0, 32.0 },
	colorTex = tu.makeTextureMipmapRepeat("ground_texture/organik_cotton_color.tga", false),
	colorSize = 256.0,
	
	priority = 1,
}
end
