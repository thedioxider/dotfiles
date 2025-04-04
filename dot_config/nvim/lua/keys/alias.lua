local keymap = vim.keymap

function setmap(mode, rhs, lhs, desc, bufopts)
    --desc = desc or ''
    --bufopts = bufopts or 0
    keymap.set(mode, rhs, lhs, { noremap=true, buffer=bufopts, desc=desc })
end
