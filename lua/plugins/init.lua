return {
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
  },
  "neovim/nvim-lspconfig",
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  "nvim-lua/plenary.nvim",
  {
    "nvim-telescope/telescope.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- optional but recommended
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {},
  },
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  "mfussenegger/nvim-lint",
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  "nvim-treesitter/nvim-treesitter-context",
}
