local debug_dir = '/usr/lib/java-debug'

config = {
    cmd = {
        '/home/dio/.config/nvim/jdtls'
    },
    root_dir = require('jdtls.setup').find_root({ '.git', 'mvnw', 'gradlew' })
        or vim.fn.getcwd(),
    on_attach = require('keys.jdtls'),
    settings = {
        java = {
            signatureHelp = { enabled = true },
            home = os.getenv('JAVA_HOME')
                or '/usr/lib/jvm/default',
        }
    }
}
--[[
if os.execute('ls ' .. debug_dir) == 0 then
    print "Found java_debug!"
    config['init_options'] = {
        bundles = {
            vim.fn.glob(debug_dir .. '/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar', 1)
        },
    }
end
]]
require('jdtls').start_or_attach(config)
