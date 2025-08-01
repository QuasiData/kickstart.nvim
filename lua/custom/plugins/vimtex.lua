-- vimtext
-- https://github.com/lervag/vimtext

return {
  'lervag/vimtex',
  lazy = false,
  init = function()
    vim.g.vimtex_view_method = 'zathura'
  end,
}
