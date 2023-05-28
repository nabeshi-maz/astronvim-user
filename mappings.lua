return {
  -- first key is the mode
  n = {
    ["<leader>a"] = { "ggVG", desc = "Select All" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
