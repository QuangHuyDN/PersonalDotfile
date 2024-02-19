return {
  {
    "danymat/neogen",
    keys = {
      {
        "<leader>cc",
        function()
          require("neogen").generate({ type = "file" })
        end,
        desc = "Neogen file docstrings",
      },
      {
        "<leader>nc",
        function()
          require("neogen").generate({ type = "class" })
        end,
        desc = "Neogen class docstrings",
      },
      {
        "<leader>nf",
        function()
          require("neogen").generate({ type = "func" })
        end,
        desc = "Neogen function docstrings",
      },
    },
    opts = {
      snippet_engine = "luasnip",
      languages = {
        python = {
          template = {
            annotation_convention = "google_docstrings", -- for a full list of annotation_conventions, see supported-languages below,
          },
        },
      },
    },
  },
}
