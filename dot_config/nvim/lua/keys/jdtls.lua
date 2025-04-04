require('keys.alias')
local jdtls = require('jdtls')

-- implements on_attach() function
return function(client, bufnr)
    local jdtlsmap = function(rhs, lhs, desc)
        if desc then
            desc = 'JDTLS: ' .. desc
        end
        setmap('n', rhs, lhs, desc, bufnr)
    end

    jdtlsmap('<C-S-I>', jdtls.organize_imports, 'Organize [I]ports')
    jdtlsmap('<Leader>ev', jdtls.extract_variable, '[E]xtract [V]ariable')
    jdtlsmap('<Leader>ec', jdtls.extract_constant, '[E]xtract [C]onstant')
    jdtlsmap('<Leader>=u', require('jdtls.dap').setup_dap_main_class_configs, '[U]pdate debug configs')
    setmap('v', '<Leader>em', [[<ESC><CMD>lua require('jdtls')ectract_method(true)<CR>]], '[E]xtract [M]ethod')
end
