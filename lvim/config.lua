-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.opt["tabstop"] = 4
vim.opt["shiftwidth"] = 4


local function map(mode,lhs,rhs)
  vim.keymap.set(mode,lhs,rhs, {silent=true})
end

vim.opt.clipboard = "unnamedplus"
map("n", "<A-l>" ,":BufferLineCycleNext<CR>")
map("n", "<A-h>" , ":BufferLineCyclePrev<CR>")

lvim.plugins = {
{
  'wfxr/minimap.vim',
  build = "cargo install --locked code-minimap",
  -- cmd = {"Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight"},
    init = function ()
    vim.cmd ("let g:minimap_width = 10")
    vim.cmd ("let g:minimap_auto_start = 0")
    vim.cmd ("let g:minimap_auto_start_win_enter = 0")
  end,
},

{
  "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
          RGB = true, -- #RGB hex codes
          RRGGBB = true, -- #RRGGBB hex codes
          RRGGBBAA = true, -- #RRGGBBAA hex codes
          rgb_fn = true, -- CSS rgb() and rgba() functions
          hsl_fn = true, -- CSS hsl() and hsla() functions
          css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
          css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
          })
  end,
},
}



