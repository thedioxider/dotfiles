local bo = vim.bo

require('filetype').setup {
    overrides = {
        function_extensions = {
            ['java'] = function()
                bo.filetype = 'java'
                opt.tabstop = 2
                opt.softtabstop = 2
                opt.shiftwidth = 2
                opt.colorcolumn = '120'
                require('plugins.config.jdtls')
            end,
            ['cpp'] = function ()
                bo.filetype = 'cpp'
                opt.tabstop = 4
                opt.softtabstop = 4
                opt.shiftwidth = 4
            end,
            ['dart'] = function ()
                bo.filetype = 'dart'
                opt.tabstop = 2
                opt.softtabstop = 2
                opt.shiftwidth = 2
            end,
            ['nix'] = function ()
                bo.filetype = 'nix'
                opt.tabstop = 2
                opt.softtabstop = 2
                opt.shiftwidth = 2
            end,
        }
    }
}
