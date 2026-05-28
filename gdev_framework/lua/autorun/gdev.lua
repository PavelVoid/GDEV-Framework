GDEV = GDEV or {}
GDEV.Modules = GDEV.Modules or {}

function GDEV:RegisterModule(name, tbl)
    GDEV.Modules[name] = tbl
end

function GDEV:GetModule(name)
    return GDEV.Modules[name]
end

if SERVER then
    function GDEV:Broadcast(msg)
        PrintMessage(HUD_PRINTTALK, msg)
    end
end

if CLIENT then
    function GDEV:ChatMsg(msg)
        chat.AddText(Color(0,255,0), msg)
    end
end

local function LoadDir(path)
    local files, folders = file.Find(path .. "/*", "LUA")
    for _, f in ipairs(files) do
        if string.EndsWith(f, ".lua") then
            include(path .. "/" .. f)
        end
    end
    for _, f in ipairs(folders) do
        LoadDir(path .. "/" .. f)
    end
end

if CLIENT then
    LoadDir("gdev")
end
