require('keys.alias')

-- You probably also want to set a keymap to toggle aerial
setmap('n', '<leader>a', '<cmd>AerialToggle!<CR>')
-- Jump forwards/backwards with '{' and '}'
setmap('n', '{', '<cmd>AerialPrev<CR>')
setmap('n', '}', '<cmd>AerialNext<CR>')
