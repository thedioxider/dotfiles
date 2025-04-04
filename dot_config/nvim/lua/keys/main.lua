require('keys.alias')

setmap('n', 'U', '<C-r>')
setmap({'n','v'}, '<Leader>\'', '"+')
setmap({'n','v'}, '<Leader>d', '"yd')
setmap({'n','v'}, '<Leader>x', '"yx')
setmap({'n','v'}, '<Leader>y', '"yy')
setmap({'n','v'}, '<Leader>p', '"yp')

--setmap('n', '<Leader>bb', '<CMD>bd<CR>')

require('keys.lsp')
