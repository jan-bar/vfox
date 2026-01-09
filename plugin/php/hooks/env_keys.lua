--- Each SDK may have different environment variable configurations.
--- This allows plugins to define custom environment variables (including PATH settings)
--- Note: Be sure to distinguish between environment variable settings for different platforms!
--- @param ctx table Context information
--- @field ctx.path string SDK installation directory
function PLUGIN:EnvKeys(ctx)
    --- this variable is same as ctx.sdkInfo['plugin-name'].path
    local mainPath = ctx.path
    local bin = ""
    if RUNTIME.osType ~= "windows" then
        bin = "/bin"
    end

	local composer = "D:\\code_project\\php\\install\\composer"
    return {
        {
            key = "PATH",
            value = mainPath .. bin
        },{
            key = "COMPOSER_HOME",
            value = composer
        },{
            key = "PATH",
            value = composer .. '\\vendor\\bin'
        },{
            key = "PHPRC",
            value = "D:\\code_project\\php\\install\\conf"
        },{
            key = "PHP_INI_SCAN_DIR",
            value = "D:\\code_project\\php\\install\\conf.d"
        }
    }
end
