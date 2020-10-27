"Plugins
call plug#begin('~/.vim/plugged')

" Dev
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'preservim/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'm-pilia/vim-ccls'
"Plug 'maxboisvert/vim-simple-complete'

" Visual
Plug 'mhinz/vim-startify' " StartScreen
Plug 'vim-airline/vim-airline' " Bar
Plug 'vim-airline/vim-airline-themes'
Plug 'chrisbra/unicode.vim' " Insert unicode easy
Plug 'romgrk/doom-one.vim' " One of the best themes

" Writing things
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-abolish'
Plug 'junegunn/limelight.vim' " Paragraphs go brrr
Plug 'junegunn/goyo.vim' " Focused writing
Plug 'vimwiki/vimwiki' " Org Mode but in vim(kind of)

" Misc
Plug 'itchyny/calendar.vim' " Calendar (duh)

call plug#end()

" Plugin variables
set complete-=t " tag completion
set complete-=i " include completion

" Ale(LSP) stuff
let g:ale_c_cc_executable = 'clang'
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters = {'c': ['ccls']}
let g:ale_cpp_ccls_init_options = {
            \ 'cache': {
            \ 'directory': './ccls-cache'
            \ }
            \ }
let g:ale_completion_enabled = 1
let g:ale_c_cc_options = '-Iinclude -Iexternal -Wall -std=c99'
set omnifunc=ale#completion#OmniFunc

augroup HoverAfterComplete
    autocmd!
    autocmd User ALECompletePost ALEHover
augroup END

" Visual
let g:airline#extensions#tabline#enabled = 1

" Keybinds
let mapleader=" " " Map leader key to space
nn <silent> <leader>1 :tabprevious<CR>
nn <silent> <leader>2 :tabn<CR>
nn <silent> <leader>q :tabclose<CR>

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
nn <silent> <Leader>d :ALEGoToDefinition<CR>
nn <silent> <Leader>r :ALEFindReferences<CR>
nn <silent> <Leader>a :ALESymbolSearch<CR>
nn <silent> <Leader>h :ALEHover<CR>

" Colorscheme
set background=dark
colorscheme doom-one
set termguicolors
let g:airline_theme='atomic'

" Spelling
"set spell spelllang=en_us

" Sane defaultsa
set relativenumber " Make the number to current line
set linebreak
set showbreak=+++
set showmatch
set encoding=UTF-8  

set hlsearch
set smartcase
set ignorecase
set incsearch
   
set autoindent " auto indent
set cindent
set expandtab " Spaces instead of tabs
set shiftwidth=4 " 4 Spaces
set smartindent
set smarttab
set softtabstop=4

set textwidth=80
set colorcolumn=80
"set columns=80
highlight ColorColumn ctermbg=darkgrey

set confirm
set ruler
set undolevels=1000
set backspace=indent,eol,start " Good backspace
