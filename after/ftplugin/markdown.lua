-- Paragraphs are one long line each: wrap at word boundaries and move by display line
vim.opt_local.linebreak = true
for _, k in ipairs { 'j', 'k' } do
  vim.keymap.set({ 'n', 'x' }, k, ("v:count == 0 ? 'g%s' : '%s'"):format(k, k), { buffer = true, expr = true })
end
