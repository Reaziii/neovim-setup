return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "off", -- Disable type checking
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "workspace", -- Keeps diagnostics in workspace files
              },
              venvPath = ".venv", -- Use .venv as the environment
              venv = ".venv", -- Specify the name of the virtual environment folder
            },
          },
        },
        ruff = {
          logLevel = "debug"
        }
      },
    },
  },
}
