return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional, for file icons
  config = function()
    local fzf = require("fzf-lua")
    fzf.setup({
      files = {
        -- Use a POSIX-compatible find command
        cmd = "find . -type f -not -path '*/\\.git/*'",
        prompt = "Files❯ ",
        git_icons = true, -- Show git icons
        file_icons = true, -- Show file icons
        color_icons = true, -- Enable color for icons
      },
      grep = {
        -- Use rg if available, fallback to grep
        cmd = "rg --vimgrep",
        prompt = "Rg❯ ",
      },
    })

    -- Keybindings for quick access
    vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Find Files" })
    vim.keymap.set("n", "<leader>fg", fzf.grep, { desc = "Live Grep" })
    vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "Buffers" })
    vim.keymap.set("n", "<leader>fh", fzf.help_tags, { desc = "Help Tags" })
  end,
}
