require('keys.alias')

setmap('n', '<Leader>xx', function() require('trouble').toggle() end, 'Open diagnostics')
setmap('n', '<Leader>xw', function() require('trouble').toggle('workspace_diagnostics') end, 'Open diagnostics for current workspace')
setmap('n', '<Leader>xd', function() require('trouble').toggle('document_diagnostics') end, 'Open diagnostics for current document')
setmap('n', '<Leader>xq', function() require('trouble').toggle('quickfix') end, 'Open quicfix diagnostics')
