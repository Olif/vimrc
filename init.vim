" Plugin list
" -------------------------------------------------------
call plug#begin()
Plug 'https://github.com/Shougo/deoplete.nvim'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'fatih/molokai'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'benekastah/neomake'
call plug#end()            " required
" -------------------------------------------------------

" Common appereance
" -------------------------------------------------------
colorscheme molokai
set nu " Default to line numbers on
set guifont=Source\ Code\ Pro:h14 " Set default font
" -------------------------------------------------------

" Enable plugins on startup
" -------------------------------------------------------
let g:deoplete#enable_at_startup = 1
autocmd vimenter * NERDTree
autocmd! BufWritePost * Neomake
" -------------------------------------------------------

" Remapping
" -------------------------------------------------------
let mapleader = "\<Space>"
nnoremap <leader>w :w<CR>
vmap <leader>y "+y
vmap <leader>d "+d
nmap <leader>p "+p
nmap <leader>P "+P
vmap <leader>p "+p
vmap <leader>P "+P
nmap <leader><leader> V
" Switch between tabs
" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
" Allow swedish chars with autopairs
"let g:AutoPairsShortcutFastWrap='' 
let g:AutoPairsShortcutFastWrap = 'é'
" -------------------------------------------------------

" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" Toggle between normal and relative numbering.
noremap <leader>r :call NumberToggle()<cr>
