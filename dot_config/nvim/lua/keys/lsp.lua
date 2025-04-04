require('keys.alias')

local lspmap = function(rhs, lhs, desc)
    if desc then
        desc = 'LSP: ' .. desc
    end
    setmap('n', rhs, lhs, desc)
end

lspmap('<leader>e', vim.diagnostic.open_float, 'Show diagnostics')
lspmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
lspmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
lspmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
lspmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
lspmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
lspmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
lspmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
lspmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

-- See `:help K` for why this keymap
lspmap('K', vim.lsp.buf.hover, 'Hover Documentation')
lspmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

-- Lesser used LSP functionality
lspmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
lspmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
lspmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
lspmap('<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, '[W]orkspace [L]ist Folders')
