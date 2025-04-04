require('keys.alias')

-- Telescope
local tsbuiltin = require('telescope.builtin')
-- Using telescope-file-browser instead of finding files
--setmap('n', '<Leader>ff', tsbuiltin.find_files)
setmap('n', '<Leader>fg', tsbuiltin.live_grep)
--setmap('n', '<Leader>fb', tsbuiltin.buffers)
setmap('n', '<Leader>fh', tsbuiltin.help_tags)
