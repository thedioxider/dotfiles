opt.termguicolors = true
vim.cmd [[colorscheme lucid]]
opt.guifont        = 'CaskaydiaCove NFM:h14'

opt.cursorline     = true
opt.laststatus     = 3
opt.textwidth      = 80
opt.colorcolumn    = '+0'
opt.scrolloff      = 5
opt.number         = true
opt.relativenumber = true
opt.showmatch      = false
opt.pumheight      = 15

vim.cmd [[
    hi DiagnosticUnderlineError gui=undercurl
]]

local old_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
    opts = opts or {}
    opts.border = opts.border or 'single'
    opts.max_width = opts.max_width or 50
    return old_util_open_floating_preview(contents, syntax, opts, ...)
end
