" Bufferline by barbar
let _buf_normfg     = _cloud
let _buf_normbg     = _rock_dark
let _buf_inacfg     = _gray_medium
let _buf_inacbg     = _rock_medium
let _buf_inacacc    = _gray_light
let _buf_accent     = _turquoise
let _buf_accent2    = _pink
let _buf_ERROR      = '#ff0000'
let _buf_WARN       = '#ffa500'
let _buf_INFO       = '#add8e6'
let _buf_HINT       = '#d3d3d3'

" BufferCurrent
let colorgroup['BufferCurrent']         = {"GUIFG": _buf_normfg, "GUIBG": _buf_normbg, "GUI": "bold"}
let colorgroup['BufferCurrentMod']      = {"GUIFG": _buf_accent, "GUIBG": _buf_normbg, "GUI": "italic,bold"}
let colorgroup['BufferCurrentIndex']    = {"GUIFG": _buf_accent, "GUIBG": _buf_normbg, "GUI": "bold"}
let colorgroup['BufferCurrentNumber']   = {"GUIFG": _buf_accent, "GUIBG": _buf_normbg}
let colorgroup['BufferCurrentTarget']   = {"GUIFG": _buf_accent, "GUIBG": _buf_normbg, "GUI": "italic,bold"}
let colorgroup['BufferCurrentSign']     = {"GUIFG": _buf_accent, "GUIBG": _buf_normbg, "GUI": "bold"}
let colorgroup['BufferCurrentSignRight']= {"GUIFG": _buf_accent, "GUIBG": _buf_normbg, "GUI": "bold"}
let colorgroup['BufferCurrentERROR']    = {"GUIFG": _buf_ERROR, "GUIBG": _buf_normbg, "GUI": "bold"}
let colorgroup['BufferCurrentWARN']     = {"GUIFG": _buf_WARN, "GUIBG": _buf_normbg, "GUI": "bold"}
let colorgroup['BufferCurrentINFO']     = {"GUIFG": _buf_INFO, "GUIBG": _buf_normbg, "GUI": "bold"}
let colorgroup['BufferCurrentHINT']     = {"GUIFG": _buf_HINT, "GUIBG": _buf_normbg, "GUI": "bold"}

" BufferInactive
let colorgroup['BufferInactive']         = {"GUIFG": _buf_inacfg, "GUIBG": _buf_inacbg}
let colorgroup['BufferInactiveMod']      = {"GUIFG": _gray_light, "GUIBG": _buf_inacbg, "GUI": "italic"}
let colorgroup['BufferInactiveIndex']    = {"GUIFG": _buf_inacacc, "GUIBG": _buf_inacbg, "GUI": "bold"}
let colorgroup['BufferInactiveNumber']   = {"GUIFG": _buf_inacacc, "GUIBG": _buf_inacbg, "GUI": "bold"}
let colorgroup['BufferInactiveTarget']   = {"GUIFG": _buf_accent, "GUIBG": _buf_inacbg, "GUI": "italic,bold"}
let colorgroup['BufferInactiveSign']     = {"GUIFG": _buf_inacacc, "GUIBG": _buf_inacbg}
let colorgroup['BufferInactiveSignRight']= {"GUIFG": _buf_inacacc, "GUIBG": _buf_inacbg}
let colorgroup['BufferInactiveERROR']    = {"GUIFG": _buf_inacacc, "GUIBG": _buf_inacbg, "GUI": "bold"}
let colorgroup['BufferInactiveWARN']     = {"GUIFG": _buf_inacacc, "GUIBG": _buf_inacbg, "GUI": "bold"}
let colorgroup['BufferInactiveINFO']     = {"GUIFG": _buf_inacacc, "GUIBG": _buf_inacbg, "GUI": "bold"}
let colorgroup['BufferInactiveHINT']     = {"GUIFG": _buf_inacacc, "GUIBG": _buf_inacbg, "GUI": "bold"}
