--- hooks/env_keys.lua

--- Adds custom environment variables to the SDK context.
---
--- @param ctx table SDK Context
--- @field ctx.path string SDK installation directory
--- @return table
function PLUGIN:EnvKeys(ctx)
    return {
        {
            key = "PATH",
            value = ctx.path,
        },
    }
end
