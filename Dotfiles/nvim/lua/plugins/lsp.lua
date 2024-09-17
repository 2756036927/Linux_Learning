require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
--通过使用:Mason添加相关语言语法

require("mason-lspconfig").setup({
    --确保安装，根据需要填写
    ensure_installed = {
        "lua_ls",
    },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}
