-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "i", "s" }, "<Tab>", function()
  if require("luasnip").expand_or_jumpable() then
    require("luasnip").expand_or_jump()
  else
    return "<Tab>"
  end
end, { expr = true })

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
  if require("luasnip").jumpable(-1) then
    require("luasnip").jump(-1)
  else
    return "<S-Tab>"
  end
end, { expr = true })