return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter.configs")
        treesitter.setup({
            ensure_installed = {
                "json",
                "javascript",
                "typescript",
                "yaml",
                "html",
                "css",
                "bash",
                "vim",
                "lua",
                "gitignore",
                "c_sharp",
                "c",
                "cpp",
            },
        })
    end,
}
