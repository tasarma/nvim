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

  -- Terraform Support
  {
    "hashivim/vim-terraform",
    ft = { "terraform", "hcl" },
  },
}
