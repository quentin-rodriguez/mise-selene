-- metadata.lua
-- Tools plugin metadata and configuration
-- Documentation: https://mise.jdx.dev/tool-plugin-development.html

PLUGIN = { -- luacheck: ignore
    -- Required: Plugin name (will be the backend name users reference)
    name = "selene",

    -- Required: Plugin version (not the tool versions)
    version = "1.0.0",

    -- Required: Brief description of the tools it manages
    description = "A mise plugin for selene - lua linter written in Rust",

    -- Required: Plugin author/maintainer
    author = "quentin-rodriguez",

    -- Optional: Plugin homepage/repository URL
    homepage = "https://github.com/quentin-rodriguez/mise-selene.git",
}
