vim.g.loaded_ruby_provider = false
vim.g.loaded_perl_provider = false
vim.g.loaded_python_provider = false

return {
  { "tanvirtin/monokai.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai_soda",
    },
  },

  { "yianwillis/vimcdoc" },
  { "arkav/lualine-lsp-progress" },
  { "folke/lsp-colors.nvim" },
  { "stevearc/overseer.nvim" },

  {
    "uga-rosa/translate.nvim",
    lazy = false,
    keys = {
      { "<leader>tw", "<cmd>Translate ZH<cr>", desc = "翻译" },
    },
    init = function()
      require("translate").setup({
        default = {
          command = "translate_shell",
        },
      })
    end,
  },
}
