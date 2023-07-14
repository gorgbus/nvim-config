local opts = {
  ensure_installed = {
    "lua",
    "rust",
    "php",
    "css",
    "html",
    "javascript",
    "typescript",
    "sql",
    "svelte",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },

  autotag = {
    enable = true,
  },
}

return opts
