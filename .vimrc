".vimrc for Alberto 
"built on from  alvin alexander's sample .vimrc file

" Plugins I have installed
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'
Plug 'yuttie/comfortable-motion.vim'


call plug#end()

" --- git_gutter commands ---

let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'

" --- other vim configuration commands ---

" enable syntax highlighting
syntax on

" python indentation, from files
filetype indent plugin on

" show the editing mode on the last line
set showmode

" tell vim to keep a backup file
set backup

" tell vim where to put its backup files
set backupdir=/private/tmp

" tell vim where to put swap files
set dir=/private/tmp


"--- common vim commands i don't use

" i don't use autoindent, but here's how to configure it:
set autoindent

" you can show line numbers
set number relativenumber

" highlight matching search strings
set hlsearch

" make searches case insensitive
" set ignorecase

" vim-airline theme
let g:airline_theme = 'codedark'

" --- ALE commands ---

let g:airline#extensions#ale#enabled = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_linters = {
      \   'python': ['flake8', 'pylint', 'pylint'],
      \   'markdown': ['mdl'],
      \   '~R': ['lintr'],
      \   'sh': ['shellcheck'],
      \}

" --- smooth scroll commands ---
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"



