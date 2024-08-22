--- Each SDK may have different environment variable configurations.
--- This allows plugins to define custom environment variables (including PATH settings)
--- Note: Be sure to distinguish between environment variable settings for different platforms!
--- @param ctx table Context information
--- @field ctx.path string SDK installation directory
function PLUGIN:EnvKeys(ctx)
    --- this variable is same as ctx.sdkInfo['plugin-name'].path
    local version_path = ctx.path
    if RUNTIME.osType == "windows" then
        return {
            {key="PNPM_HOME",value="D:\\code_project\\ts\\install\\pnpm"},
            {
                key = "PATH",
                value = version_path
            },
        }
    else
        return {
            {
                key = "PATH",
                value = version_path .. "/bin"
            },
        }
    end

end
