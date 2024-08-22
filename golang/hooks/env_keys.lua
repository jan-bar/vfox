--- Each SDK may have different environment variable configurations.
--- This allows plugins to define custom environment variables (including PATH settings)
--- Note: Be sure to distinguish between environment variable settings for different platforms!
--- @param ctx table Context information
--- @field ctx.path string SDK installation directory
function PLUGIN:EnvKeys(ctx)
    local mainPath = ctx.path
    return {
        {
            key = "GOROOT",
            value = mainPath
        },
        -- {
        --     key = "GOPATH",
        --     value = mainPath .. "/packages"
        -- },
        {
            key = "PATH",
            value = mainPath .. "/bin"
        },
        -- {
        --     key = "PATH",
        --     value = mainPath .. "/packages/bin"
        -- }
    }
end
