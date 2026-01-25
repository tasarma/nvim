return {
  "mg979/vim-visual-multi",
  branch = "master",
  event = { "BufReadPost", "BufNewFile" },
  init = function()
    -- Optional: customize the leader key for VM (default is \\)
    -- vim.g.VM_leader = "\\\\"
    -- Map to match VSCode-like behavior
    vim.g.VM_maps = {
      ["Find Under"] = "<C-d>",         -- Start multi-cursor with Ctrl+D (like VSCode)
      ["Find Subword Under"] = "<C-d>", -- Also for subwords
    }
    vim.g.VM_theme = "iceblue"
  end,
}
