filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

colorscheme railscasts
set guifont=Menlo:h13

set tabstop=2
set shiftwidth=2
set expandtab
set number
set nocompatible
set smartindent
set autoindent
set textwidth=79
set softtabstop=2
set shiftround

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN FILES IN DIRECTORY OF CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%<CR>
map <leader>v :view %%
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" show the `best match so far' as search strings are typed:
set incsearch
set ignorecase
set smartcase

" Open new horizontal split windows below current
set splitbelow
" Open new vertical split windows to the right
set splitright
" Set temporary directory (don't litter local dir with swp/tmp files)
set directory=/tmp/

" Configure Coffeescript folds
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

" kill trailing spaces when exiting file
fun! StripTrailingWhitespace()
    " Don't strip on these filetypes
    if &ft =~ 'markdown'
        return
    endif
    %s/\s\+$//e
endfun

autocmd BufWritePre * call StripTrailingWhitespace()
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
