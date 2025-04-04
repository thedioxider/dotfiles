require('mason').setup()

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Import on_attach() method with key bindings
local on_attach = require('keys.mason-lspconfig')

local servers = {
    bashls = {},
    lua_ls = {
        settings = {
            Lua = {
                workspace = { checkThirdParty = false },
                telemetry = { enable = false },
                diagnostics = {
                    globals = { 'vim' },
                },
            },
        },
    },
    clangd = {},
    rust_analyzer = {
        settings = {
            ["rust-analyzer"] = {
                imports = {
                    granularity = {
                        group = "module",
                    },
                    prefix = "self",
                },
                cargo = {
                    buildScripts = {
                        enable = true,
                    },
                },
                procMacro = {
                    enable = true
                },
            }
        }
    },
    dartls = {
        cmd = { 'dart', 'language-server', '--protocol=lsp' },
        filetypes = { 'dart' },
    },
    html = {
        filetypes = { 'html', 'handlebars' },
    },
}

local function setup_server(server_name)
    require('lspconfig')[server_name].setup(vim.tbl_deep_extend(
        'force',
        {
            capabilities = capabilities,
            on_attach = on_attach,
        },
        servers[server_name] or {}
    ))
end

local mason_lspconfig = require('mason-lspconfig')
mason_lspconfig.setup()
mason_lspconfig.setup_handlers {
    setup_server,
}
setup_server('dartls')
