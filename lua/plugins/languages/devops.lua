return {
  -- Dockerfile Linting
  {
    "hadolint/hadolint-vim",
    ft = { "dockerfile" },
  },

  -- Schema Store for YAML/JSON
  {
    "b0o/SchemaStore.nvim",
    lazy = true,
    version = false,
  },
}
