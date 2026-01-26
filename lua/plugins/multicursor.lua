return {
  "mg979/vim-visual-multi",
  branch = "master",
  event = { "BufReadPost", "BufNewFile" },
  init = function()
    -- Optional: customize the leader key for VM (default is \\)
    -- vim.g.VM_leader = "\\\\"
    -- Map to non-conflicting keys (gb = go to next)
    vim.g.VM_maps = {
      ["Find Under"] = "gb",         -- Start multi-cursor with gb
      ["Find Subword Under"] = "gb", -- Also for subwords
    }
    vim.g.VM_theme = "iceblue"
  end,
}
