--- hooks/available.lua

local http = require("http")
local json = require("json")
local util = require("util")

--- Retrieve a list of versions in the SDK context.
--- @param ctx table SDK context
--- @return table
function PLUGIN:Available(ctx)
    local resp, err = http.get({
        url = "https://api.github.com/repos/Kampfkarren/selene/tags",
        headers = util.headers(),
    })

    if err then
        error("Request failed: " .. err)
    end

    if resp.status_code ~= 200 then
        error("Github error: " .. resp.status_code)
    end

    local tags = json.decode(resp.body)

    return util.map(tags, function(tag)
        return { version = tag.name }
    end)
end
