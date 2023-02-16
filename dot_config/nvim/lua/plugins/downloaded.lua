return {
  -- Run one-file codes quickly
  {
    "CRAG666/code_runner.nvim",
    event = "VeryLazy",
    opts = {
      filetype = {
        java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
        python = "python3 -u",
        cpp = "cd $dir && clang++ -std=c++17 -Wall $fileName -o $fileNameWithoutExt.o && ./$fileNameWithoutExt.o",
        rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
      }
    },
  },
  -- VSCode-like terminal in Neovim
  {
    "akinsho/toggleterm.nvim",
    event = "VeryLazy",
    opts = {},
  },
  -- Able to pick window in Neotree
  {
    "s1n7ax/nvim-window-picker",
    event = "VeryLazy",
    config = function()
      require("window-picker").setup()
    end,
  },
  -- Debugger (not v functional rn woops i'll get there someday)
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "jay-babu/mason-nvim-dap.nvim",
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text"
    },
    config = function()
      local dap = require('dap')
      local mason_nvim_dap = require('mason-nvim-dap')
      local dapui = require('dapui')
      local dap_virtual_text = require('nvim-dap-virtual-text')

      dapui.setup({})

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open({})
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close({})
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close({})
      end

      dap_virtual_text.setup({})

      mason_nvim_dap.setup({ ensure_installed = { "codelldb" }, automatic_setup = true })

      mason_nvim_dap.setup_handlers({
        function(source_name)
          require('mason-nvim-dap.automatic_setup')(source_name)
        end,
        codelldb = function(_)
          dap.adapters.codelldb = {
            type = 'server',
            name = 'codelldb',
            port = "${port}",
            executable = {
              -- command = 'codelldb',
              command = vim.fn.stdpath('data') .. '/mason/bin/codelldb',
              args = { "--port", "${port}" },
            }
          }

          dap.configurations.cpp = {
            {
              name = 'Launch',
              type = 'codelldb',
              request = 'launch',
              program = function()
                -- os.execute('g++ -g ' .. vim.fn.expand("%") .. " -o " .. vim.fn.expand("%:r") .. "DEBUG")
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
              end,
              cwd = '${workspaceFolder}',
              stopOnEntry = true,
              args = {},
              console = "integratedTerminal",
            },
          }
        end
      });
    end
  },
}
