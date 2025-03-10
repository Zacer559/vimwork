-- ~/.config/nvim/lua/plugins/cmp.lua
return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")

    -- Override the mapping table completely to ensure clean configuration
    opts.mapping = cmp.mapping.preset.insert({
      -- Keep any existing mappings you want to preserve
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.abort(),

      -- Change Enter to just be a normal Enter key (not confirm selection)
      ["<CR>"] = cmp.mapping({
        i = function(fallback)
          fallback()
        end,
        s = cmp.mapping.confirm({ select = false }),
      }),

      -- Add Shift+Enter to confirm selection
      ["<S-CR>"] = cmp.mapping.confirm({ select = true }),

      -- Tab navigation
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
        else
          fallback()
        end
      end, { "i", "s" }),
    })

    return opts
  end,
}
