local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = require "custom.configs.mason",
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      return require "custom.configs.rust-tool"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    config = function(_, opts)
      require("crates").setup(opts)
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "custom.configs.treesitter",
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "syntax")
      require("nvim-treesitter.configs").setup(opts)
      require("nvim-treesitter.install").compilers = { "clang" }
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require "plugins.configs.cmp"
      table.insert(M.sources, { name = "crates" })
      return M
    end,
  },
}
return plugins
