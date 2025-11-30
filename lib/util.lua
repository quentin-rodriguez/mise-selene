local M = {}

--- Returns headers for Github.
--- @return table Github headers
function M.headers()
    local headers = {
        ["User-Agent"] = "mise-plugin",
        ["Accept"] = "application/vnd.github+json",
        ["X-GitHub-Api-Version"] = "2022-11-28",
    }

    local token = os.getenv("GITHUB_TOKEN")

    if token then
        headers["Authorization"] = token
    end

    return headers
end

--- Returns the name of the OS.
--- @return string OS name
function M.get_os()
    local os = RUNTIME.osType

    if os == "darwin" then
        return "macos"
    end

    return os
end

--- Returns a table containing the results of applying the callback.
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
