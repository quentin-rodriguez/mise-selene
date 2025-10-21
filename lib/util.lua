local M = {}

--- Returns headers for Github.
---
--- @return table Github headers
function M.headers()
    return {
        ["Accept"] = "application/vnd.github+json",
        ["X-GitHub-Api-Version"] = "2022-11-28",
        ["Authorization"] = "Bearer " .. (os.getenv("GITHUB_TOKEN") or ""),
    }
end

--- Returns the name of the platform.
---
--- @return string Platform name
function M.get_platform()
    local platform = RUNTIME.osType

    if platform == "Darwin" then
        return "macos"
    end

    return platform
end

--- Returns a table containing the results of applying the callback.
---
--- @param tbl table A table to run through the callback function
--- @param callback function A function to run for each elements
--- @return table New table
function M.map(tbl, callback)
    for k, v in ipairs(tbl) do
        tbl[k] = callback(v)
    end

    return tbl
end

return M
