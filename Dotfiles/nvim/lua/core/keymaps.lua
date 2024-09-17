--快捷键设置或更改
vim.g.mapleader = " "
--vim.keymap.set("原来的模式","更改后的键","更改前的键")
--eg:vim.keymap.set("i","jk","<ESC>")

--视觉模式
-- 视觉模式下，选中后按下shift + j(k) 可将选中行向下(上)移动
vim.keymap.set("v","J",":m '>+1<CR>gv=gv")
vim.keymap.set("v","K",":m '<-2<CR>gv=gv")

--搜索完成后取消字符高亮
--搜索完成后键入空格+nh(no highlight)
vim.keymap.set("n","<leader>nh",":nohl<CR>")

--插件
vim.keymap.set("n","<f2>",":NvimTreeToggle<CR>") --打开nvim-tree文件树使用F2
