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
}
