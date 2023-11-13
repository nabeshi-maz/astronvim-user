return {
  "nvim-telescope/telescope.nvim",
  dependencies = { -- add a new dependency to telescope that is our new plugin
    "nvim-telescope/telescope-media-files.nvim",
    "tom-anders/telescope-vim-bookmarks.nvim",
    "MattesGroeger/vim-bookmarks",
    "nvim-telescope/telescope-file-browser.nvim",
    "nvim-telescope/telescope-live-grep-args.nvim",
    "dawsers/telescope-file-history.nvim",
  },
  opts = function(_, opts)
    local lga_actions = require("telescope-live-grep-args.actions")
    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    -- modify the sources part of the options table
    opts.extensions = {
        -- extensions = {
          live_grep_args = {
            auto_quoting = true, -- enable/disable auto-quoting
            -- define mappings, e.g.
            mappings = { -- extend mappings
              i = {
                ["<C-k>"] = lga_actions.quote_prompt(),
                ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
              },
            },
            -- ... also accepts theme settings, for example:
            -- theme = "dropdown", -- use dropdown theme
            -- theme = { }, -- use own theme spec
            -- layout_config = { mirror=true }, -- mirror preview pane
          }
        }
    -- }
    -- return the new table to be used
    return opts
  end,
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
    telescope.load_extension "live_grep_args"
    telescope.load_extension "file_history"
  end,
}
