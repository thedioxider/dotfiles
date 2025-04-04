require('keys.dap')

local dap = require('dap')

dap.adapters.lldb = {
    name = 'lldb',
    type = 'executable',
    command = vim.fn.stdpath('data') .. '/mason/bin/codelldb',
    args = {},
}
dap.configurations.cpp = {
    {
        name = "Launch lldb",
        type = 'lldb',
        request = 'launch',
        program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
	    runInTerminal = false,
	    args = {},
    }
}
