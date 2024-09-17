vim.g.loaded_netrw = 1 --默认不打开tree
vim.g.loaded_netrwPlugin = 1

--配置启动nvim-tree
require("nvim-tree").setup()

--基础使用教程
--Tab键打开文件夹或文件 但光标仍在文件树
--使用回车或o打开文件 并将光标移动至文件中
--
