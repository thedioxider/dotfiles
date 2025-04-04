local cmp = require('cmp')
local lspkind = require('lspkind')
local luasnip = require('luasnip')
cmp.setup {
    sources = {
        { name = 'nvim_lsp' },
        --{ name = 'luasnip' },
    },
    mapping = require('keys.nvim-cmp'),
    formatting = {
        format = lspkind.cmp_format {
            mode = 'symbol',
            maxwidth = 30,
            ellipsis_char = '...',
        }
    },
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
}
