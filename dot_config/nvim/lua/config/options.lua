-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.vimspector_enable_mappings = "HUMAN"

vim.g.vimspector_install_gadgets = { 'debugpy', 'codelldb' }

vim.g.vimspector_configurations = {
  python = {
    adapter = "debugpy",
    configuration = {
      python = "python",
      request = "launch",
      type = "python",
      program = "${file}",
      stopOnEntry = false,
      cwd = "${workspaceRoot}",
      console = "integratedTerminal"
    },
    breakpoints = {
      exception = {
        raised = "N",
        uncaught = "",
        userUnhandled = "",
      }
    }
  },
  cpp = {
    adapter = "CodeLLDB",
    configuration = {
      type = "cpp",
      request = "launch",
      program = "${file}",
      stopOnEntry = false,
      cwd = "${workspaceRoot}",
      console = "integratedTerminal"
    },
    breakpoints = {
      exception = {
        raised = "N",
        uncaught = "",
        userUnhandled = "",
      }
    }
  }
}
