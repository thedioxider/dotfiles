return require('mason-tool-installer').setup {
    run_on_start = true,
    start_delay = 2000,
    ensure_installed = {
        'clang-format',
        'clangd',
        'cpplint',
        'codelldb',
        'pyright',
        'google-java-format',
        'rust-analyzer',
        'typescript-language-server',
        'prettier',
        'eslint_d',
        'html-lsp',
        'biome',
        'rnix-lsp',
        'nixfmt',
    }
}
