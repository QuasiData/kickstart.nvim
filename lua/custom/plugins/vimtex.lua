-- vimtext
-- https://github.com/lervag/vimtext

return {
  {
    'lervag/vimtex',
    ft = { 'tex', 'plaintex' },
    init = function()
      -- Viewer
      vim.g.vimtex_view_method = 'general'
      vim.g.vimtex_view_general_viewer = 'sumatraPDF'
      vim.g.vimtex_view_general_options =
        [[-reuse-instance -forward-search @tex @line @pdf]]

      -- Compiler
      vim.g.vimtex_compiler_method = 'latexmk'
      vim.g.vimtex_quickfix_mode = 0

      vim.g.vimtex_compiler_latexmk = {
        build_dir = '',   -- or "build" if you prefer out-of-tree
        callback = 1,
        continuous = 1,
        executable = 'latexmk',
        options = {
          '-pdf',
          '-interaction=nonstopmode',
          '-synctex=1',
        },
      }
    end,
  },
}
