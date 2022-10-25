" run python app
 autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
 autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

 autocmd FileType python map <buffer> <F6> :IronRepl<CR>
 autocmd FileType python map <buffer> <F18> :IronHide<CR>
 " replace
 noremap <F2> "hy:%s/<C-r><C-w>//gc<left><left><left>
 inoremap <F2> <esc><CR> "hy:%s/<C-r><C-w>//gc<left><left><left>
 vnoremap <F2> "hy:%s/<C-r>h//gc<left><left><left>

 noremap <F27> ":lua vim.diagnostic.get()<CR>
 "folding
 set foldmethod=indent  
 set nofoldenable
 
 "termdebug
 let g:termdebug_wide=1

 lua require "user.options"
 lua require "user.keymaps"
 lua require "user.plugins"
 lua require "user.colorscheme"
 lua require "user.cmp"
 lua require "user.lsp"
 lua require "user.telescope"
 lua require "user.treesitter"
 lua require "user.autopairs"
 lua require "user.comment"
 lua require "user.gitsigns"
 lua require "user.nvim-tree"
 lua require "user.bufferline"
 lua require "user.lualine"
 lua require "user.toggleterm"
 lua require "user.project"
 lua require "user.impatient"
 lua require "user.indentline"
 lua require "user.alpha"
 lua require "user.whichkey"
 lua require "user.autocommands"
 

 lua require "user.iron"
