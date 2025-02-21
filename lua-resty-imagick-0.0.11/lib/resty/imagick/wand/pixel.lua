-- Copyright (C) by Kwanhur Huang


local modulename = 'restyImagickWandPixel'
local _M = {}
_M._NAME = modulename

local ffi = require("ffi")
local wand_lib = require("resty.imagick.wand.lib")

local lib = wand_lib.lib

_M.new = function(color)
    local pixelcolor = ffi.gc(lib.NewPixelWand(), lib.DestroyPixelWand)
	if color then
        lib.PixelSetColor(pixelcolor, color)
    end
    return pixelcolor
end

return _M