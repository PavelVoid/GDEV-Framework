local PAINT = {}

local function load(path)
    AddCSLuaFile(path)
    if CLIENT then
        include(path)
    end
end

load('gdev/modules/paint/main_cl.lua')
load('gdev/modules/paint/batch_cl.lua')
load('gdev/modules/paint/lines_cl.lua')
load('gdev/modules/paint/rects_cl.lua')
load('gdev/modules/paint/rounded_boxes_cl.lua')
load('gdev/modules/paint/outlines_cl.lua')
load('gdev/modules/paint/blur_cl.lua')
load('gdev/modules/paint/circles_cl.lua')
load('gdev/modules/paint/svg_cl.lua')
load('gdev/modules/paint/downsampling_cl.lua')

GDEV:RegisterModule("Paint", PAINT)