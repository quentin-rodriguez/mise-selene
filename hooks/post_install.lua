--- hooks/post_install.lua

local cmd = require("cmd")

--- An extension that allows additional actions to be called after PreInstall.
--- @param ctx table SDK context
--- @field ctx.sdkInfo SDK informations
function PLUGIN:PostInstall(ctx)
    local sdk_info = ctx.sdkInfo["selene"]
    local file = sdk_info.path .. "/selene"

    -- Make the binary executable
    local success, _ = pcall(cmd.exec, "chmod +x " .. file)

    if not success then
        error("The " .. file .. " file could not be made executable")
    end
end
