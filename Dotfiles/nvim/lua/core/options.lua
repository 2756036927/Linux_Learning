--行号
vim.opt.relativenumber = true
vim.opt.number = true

--缩进
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

--光标行
vim.opt.cursorline = true

--启用鼠标
vim.opt.mouse:append("a")

--启用系统剪贴板
vim.opt.clipboard:append("unnamedplus")

--默认新窗口右和下
vim.opt.splitright = true
vim.opt.splitbelow = true

--搜索结果不区分大小写
vim.opt.ignorecase = true
vim.opt.smartcase = true

--外观
--启用终端真颜色
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

--插件
--主题
vim.cmd[[colorscheme tokyonight-moon]]
