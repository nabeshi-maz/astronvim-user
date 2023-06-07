return {
  "nvim-telescope/telescope.nvim",
  dependencies = { -- add a new dependency to telescope that is our new plugin
    "nvim-telescope/telescope-media-files.nvim",
    "tom-anders/telescope-vim-bookmarks.nvim",
    "MattesGroeger/vim-bookmarks",
    "nvim-telescope/telescope-file-browser.nvim",
  },
  -- the first parameter is the plugin specification
  -- the second is the table of options as set up in Lazy with the `opts` key
  config = function(plugin, opts)
    -- run the core AstroNvim configuration function with the options table
    require("plugins.configs.telescope")(plugin, opts)

    -- require telescope and load extensions as necessary
    local telescope = require "telescope"
    telescope.load_extension "media_files"
    telescope.load_extension "vim_bookmarks"
    telescope.load_extension "file_browser"
  end,
}
