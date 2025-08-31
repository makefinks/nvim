return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" }, -- Load before writing buffer
  desc = "Auto-format on save with conform.nvim. Easily configure per-filetype formatters.",
  config = function()
    require("conform").setup {
      -- Format on save
      format_on_save = function(bufnr)
        local ignore_filetypes = { "markdown" }
        if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then return end
        return { timeout_ms = 500, lsp_fallback = true }
      end,
      -- Define formatters for each filetype
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "ruff_format" },
        javascript = { "prettier" },
        typescript = { "prettier" },
      },
    }
  end,
}
