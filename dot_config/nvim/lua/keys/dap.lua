require('keys.alias')
local dapmap = function(mode, lhs, rhs, desc)
    if desc then
        desc = 'DAP: ' .. desc
    end
    setmap(mode, lhs, rhs, desc)
end

dapmap('n', '<F5>', function() require('dap').continue() end)
dapmap('n', '<F6>', function() require('dap').terminate({}, {}, function() end) end)
dapmap('n', '<F9>', function() require('dap').run_to_cursor() end)
dapmap('n', '<F10>', function() require('dap').step_out() end)
dapmap('n', '<F11>', function() require('dap').step_over() end)
dapmap('n', '<F12>', function() require('dap').step_into() end)
dapmap('n', '<Leader>=b', function() require('dap').toggle_breakpoint() end)
dapmap('n', '<Leader>=B', function() require('dap').set_breakpoint() end)
dapmap('n', '<Leader>=l', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
dapmap('n', '<Leader>=r', function() require('dap').repl.open() end)
dapmap('n', '<Leader>=rl', function() require('dap').run_last() end)
dapmap({'n', 'v'}, '<Leader>=h', function()
  require('dap.ui.widgets').hover()
end)
dapmap({'n', 'v'}, '<Leader>=p', function()
  require('dap.ui.widgets').preview()
end)
dapmap('n', '<Leader>=f', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.frames)
end)
dapmap('n', '<Leader>=s', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.scopes)
end)
