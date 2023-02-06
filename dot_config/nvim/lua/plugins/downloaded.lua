return {
  -- Quickly and easily run single files
  {
    "CRAG666/code_runner.nvim",
    opts = {
      filetype = {
        java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
        python = "python3 -u",
        cpp = "cd $dir && clang++ -std=c++11 -Wall $fileName -o $fileNameWithoutExt.o && ./$fileNameWithoutExt.o",
        rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
      }
    },
  },
  -- Debugger (not done with configuration)
  {
    "puremourning/vimspector",
    opts = {}
  },
  -- Terminal ui
  {
    "akinsho/toggleterm.nvim",
    opts = {}
  }
}
