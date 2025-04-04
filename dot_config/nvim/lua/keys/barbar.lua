require('keys.alias')

-- Move to previous/next
setmap('n', '<A-,>', '<Cmd>BufferPrevious<CR>')
setmap('n', '<A-.>', '<Cmd>BufferNext<CR>')
-- Re-order to previous/next
setmap('n', '<C-A-,>', '<Cmd>BufferMovePrevious<CR>')
setmap('n', '<C-A-.>', '<Cmd>BufferMoveNext<CR>')
-- Goto buffer in position...
setmap('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
setmap('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
setmap('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
setmap('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
setmap('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
setmap('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
setmap('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
setmap('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
setmap('n', '<A-9>', '<Cmd>BufferLast<CR>')
--setmap('n', '<A-0>', '<Cmd>BufferLast<CR>')
-- Pin/unpin buffer
setmap('n', '<A-p>', '<Cmd>BufferPin<CR>')
-- Close buffer
setmap('n', '<A-c>', '<Cmd>BufferClose<CR>')
setmap('n', '<A-S-c>', '<Cmd>bd!<CR>')
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
setmap('n', '<A-f>', '<Cmd>BufferPick<CR>')
-- Sort automatically by...
setmap('n', '<Leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>')
setmap('n', '<Leader>bd', '<Cmd>BufferOrderByDirectory<CR>')
setmap('n', '<Leader>bl', '<Cmd>BufferOrderByLanguage<CR>')
setmap('n', '<Leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>')

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
