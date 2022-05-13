local M = {}

-- if theme given, load given theme if given, otherwise nvchad_theme
M.init = function()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
  vim.o.termguicolors = true
  vim.g.colors_name = "onedark"

  -- unload to force reload
  package.loaded["layers.ui.highlights" or false] = nil
  -- then load the highlights
  require "layers.ui.highlights"
end

-- returns a table of colors for given or current theme
M.get = function()
   return {
     base_30 = {
       white = "#abb2bf",
       darker_black = "#1b1f27",
       black = "#1e222a", --  nvim bg
       black2 = "#252931",
       one_bg = "#282c34", -- real bg of onedark
       one_bg2 = "#353b45",
       one_bg3 = "#30343c",
       grey = "#42464e",
       grey_fg = "#565c64",
       grey_fg2 = "#6f737b",
       light_grey = "#6f737b",
       red = "#d47d85",
       baby_pink = "#DE8C92",
       pink = "#ff75a0",
       line = "#2a2e36", -- for lines like vertsplit
       green = "#A3BE8C",
       vibrant_green = "#7eca9c",
       nord_blue = "#81A1C1",
       blue = "#61afef",
       yellow = "#e7c787",
       sun = "#EBCB8B",
       purple = "#b4bbc8",
       dark_purple = "#c882e7",
       teal = "#519ABA",
       orange = "#fca2aa",
       cyan = "#a3b8ef",
       statusline_bg = "#22262e",
       lightbg = "#2d3139",
       lightbg2 = "#262a32",
       pmenu_bg = "#A3BE8C",
       folder_bg = "#61afef",
     },
     base_16 = {
       base00 = "#1e222a",
       base01 = "#353b45",
       base02 = "#3e4451",
       base03 = "#545862",
       base04 = "#565c64",
       base05 = "#abb2bf",
       base06 = "#b6bdca",
       base07 = "#c8ccd4",
       base08 = "#e06c75",
       base09 = "#d19a66",
       base0A = "#e5c07b",
       base0B = "#98c379",
       base0C = "#56b6c2",
       base0D = "#61afef",
       base0E = "#c678dd",
       base0F = "#be5046",
     },
   }
end

return M
