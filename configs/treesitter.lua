local opts = {
    ensure_installed = {
        "lua",
        "rust",
        "php",
        "css",
        "html",
        "javascript",
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },

    autotag = {
        enable = true
    },
}

return opts
