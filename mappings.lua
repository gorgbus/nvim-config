local M = {}

M.custom = {
  n = {
    ["J"] = { "mzJ`z", "append bottom line next to current one" },
    ["<C-d>"] = { "<C-d>zz", "jump up" },
    ["<C-u>"] = { "<C-u>zz", "jump down" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    ["<leader>w"] = { ":update<cr>" },
    ["<leader>c"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
    },
  },

  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "move higlighted code up" },
    ["K"] = { ":m '<-2<CR>gv=gv", "move higlighted code down" },
    ["<leader>c"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
    },
  },
}

return M
