local cmp     = require('cmp')
local mpng    = cmp.mapping
--local luasnip = require('luasnip')
return mpng.preset.insert {
    ['<C-d>'] = mpng.scroll_docs(-4),
    ['<C-f>'] = mpng.scroll_docs(4),
    ['<C-Space>'] = mpng.confirm {
        begavior = cmp.ConfirmBehavior.Replace,
        select   = true
    },
    ['<Tab>'] = mpng(function(fallback)
        if cmp.visible() then
            cmp.select_next_item()
        --elseif luasnip.expand_or_jumpable() then
            --luasnip.expand_or_jump()
        else
            fallback()
        end
    end, {'i', 's'}),
    ['<S-Tab>'] = mpng(function(fallback)
        if cmp.visible() then
            cmp.select_prev_item()
        --elseif luasnip.jumpable(-1) then
            --luasnip.jump(-1)
        else
            fallback()
        end
    end, {'i', 's'})
}
