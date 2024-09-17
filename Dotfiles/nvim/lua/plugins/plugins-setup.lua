--自动安装packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

--保存此文件自动更新安装插件
--注意packercompile改成了packersync
--plugins.lua改成了plugins-setup.lua，适应本地文件
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])
--添加完插件后需要输入:PackerInstall来安装插件
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  use 'folke/tokyonight.nvim' --主题
  use {                       --nvim状态栏
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  use "nvim-treesitter/nvim-treesitter" --语法高亮
  use "p00f/nvim-ts-rainbow" --配合treesitter，不同括号颜色区分

  use{ --语法检查
    "williamboman/mason.nvim", --该插件统一管理LSP服务
    "williamboman/mason-lspconfig.nvim", --相当于mason.nvim和lspconfig的桥梁
    "neovim/nvim-lspconfig"
  }

  --自动补全插件起始
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("L3MON4D3/LuaSnip") --snippets引擎，不装的话自动补全会出问题
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")
  use("hrsh7th/cmp-path") --文件路径
  --自动补全插件结束

  --自动补全括号
  use "windwp/nvim-autopairs"

  --telescopr搜索插件
  use{
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = {{'nvim-lua/plenary.nvim'}}
    }
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
