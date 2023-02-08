return {
  -- Quickly and easily run single files
  {
    "CRAG666/code_runner.nvim",
    opts = {
      filetype = {
        java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
        python = "python3 -u",
        cpp = "cd $dir && clang++ -std=c++17 -Wall $fileName -o $fileNameWithoutExt.o && ./$fileNameWithoutExt.o",
        rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
      }
    },
    event = "VeryLazy"
  },
  -- Debugger (not done with configuration)
  {
    "puremourning/vimspector",
    enabled = false,
  },
  -- Terminal ui
  {
    "akinsho/toggleterm.nvim",
    opts = {},
    event = "VeryLazy"
  },
  {
    "s1n7ax/nvim-window-picker",
    event = "VeryLazy",
    config = function()
      require 'window-picker'.setup()
    end,
  }
}
