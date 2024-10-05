local function map (mode,lhs,rhs)
  vim.keymap.set(mode,lhs,rhs,{silent = true})
end


map("i","<C-s>","<CMD>w<CR>")
