-- metadata.lua
-- Backend plugin metadata and configuration
-- Documentation: https://mise.jdx.dev/backend-plugin-development.html

PLUGIN = { -- luacheck: ignore
    -- Required: Plugin name (will be the backend name users reference)
    name = "mise-selene",

    -- Required: Plugin version (not the tool versions)
    version = "1.0.0",

    -- Required: Brief description of the backend and tools it manages
    description = "A mise plugin for Selene CLI",

    -- Required: Plugin author/maintainer
    author = "quentin-rodriguez",

    -- Optional: Plugin homepage/repository URL
    homepage = "https://github.com/quentin-rodriguez/mise-selene.git",

    -- Optional: Plugin license
    license = "MIT",

    -- Optional: Important notes for users
    notes = {
        -- "Requires <BACKEND> to be installed on your system",
        -- "This plugin manages tools from the <BACKEND> ecosystem"
    },
}
