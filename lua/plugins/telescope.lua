return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local fzf = require("fzf-lua")
    fzf.setup({
      files = {

        cmd = "find . -type f -not -path '*/\\.git/*'",
        prompt = "Files❯ ",
        git_icons = true,
        file_icons = true,
        color_icons = true,
      },
      grep = {
        cmd = "rg --vimgrep",
        prompt = "Rg❯ ",
      },
    })

    vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Find Files" })
    vim.keymap.set("n", "<leader>fg", fzf.grep, { desc = "Live Grep" })
    vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "Buffers" })
    vim.keymap.set("n", "<leader>fh", fzf.help_tags, { desc = "Help Tags" })
  end,
}
