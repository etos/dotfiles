--vim diff: show full file/context]]
vim.cmd[[
if &diff
    set diffopt=filler,context:1000000
endif
]]

