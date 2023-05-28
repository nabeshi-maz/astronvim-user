return {
  'rgroli/other.nvim',
  config =  function ()
    require('other-nvim').setup {
    mappings = {
        -- model
          {
            pattern = "/app/models/(.*).rb",
            target = {
                {
                  target = '/spec/factories/%1s.rb',
                  context = 'factory',
                },
                {
                  target = '/spec/models/%1_spec.rb',
                  context = 'model spec',
                },
                {
                  target = '/app/controllers/**/%1s_controller.rb',
                  context = 'controller',
                },
            },
          },
        -- model_spec
          {
            pattern = 'spec/models/(.*)_spec.rb',
            target={
              {
                target='/app/models/%1.rb',
                context='model',
              }, 
            },
          },
        -- controller(rest) 
          {
            pattern = '/app/controllers/rest/(.*)_controller.rb',
            target={
              {
                target='/spec/requests/rest/%1/*.rb',
                context='controller spec',
              }, 
            },
          },
        -- operation,queries,forms,jobs
          {
            pattern = '/app/(.*)/(.*)/(.*).rb',
            target={
              {
                target='/spec/%1/%2/%3_spec.rb',
                context='spec',
              }, 
            },
          },
        -- spec operation,queries,forms,jobs
          {
            pattern = '/spec/(.*)/(.*)/(.*)_spec.rb',
            target={
              {
                target='/app/%1/%2/%3.rb',
                context='impl',
              }, 
            },
          },
      },
      transformers = {
          -- defining a custom transformer
          lowercase = function (inputString)
              return inputString:lower()
          end
      },
      style = {
          -- How the plugin paints its window borders
          -- Allowed values are none, single, double, rounded, solid and shadow
          border = "solid",

          -- Column seperator for the window
          seperator = "|",

	        -- width of the window in percent. e.g. 0.5 is 50%, 1.0 is 100%
	        width = 0.7,

	        -- min height in rows.
	        -- when more columns are needed this value is extended automatically
	        minHeight = 2
      },
    }
  end, 
  cmd = {"Other", "OtherSplit","OtherVSplit", "OtherClear"}
}
