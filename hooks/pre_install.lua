--- hooks/pre_imstall.lua

local util = require("util")

--- Returns several pieces of information for the installation: the version, the download URL, and a note.
--- @param ctx table SDK context
--- @field ctx.version string Context version
--- @return table Version information
function PLUGIN:PreInstall(ctx)
    local version = ctx.version
    local os = util.get_os()
    local download_url = "https://github.com/Kampfkarren/selene/releases/download/"
        .. version
        .. "/selene-light-"
        .. version
        .. "-"
        .. os
        .. ".zip"

    return {
        version = version,
        url = download_url,
        note = "Downloading Selene: " .. version,
    }
end
