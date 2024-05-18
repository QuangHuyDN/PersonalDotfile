return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        python = { "black" },
        lua = { "stylua" },
        sh = { "shfmt" },
        cpp = { "clang_format" },
      },
      formatters = {
        black = {
          prepend_args = { "--line-length", "80" },
        },
      },
    },
  },
}
