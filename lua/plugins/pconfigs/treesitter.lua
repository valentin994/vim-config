return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    config = function () 
      require 'nvim-treesitter.install'.compilers = { 'gcc' }
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "javascript", "html", "lua", "python", "svelte", "dart", "css", "dockerfile", "typescript", "markdown", "terraform", "c", "go", "jsdoc" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
          autotag = {
            enable = true,
          },
        })
    end
}
