-- jedi
-- disable autocompletion, cause we use deoplete for completion
vim.cmd[[
let g:jedi#completions_enabled = 0
let g:jedi#popup_on_dot = 0
]]
-- open the go-to function in split, not another buffer
vim.cmd[[let g:jedi#use_splits_not_buffers = "right"]]
