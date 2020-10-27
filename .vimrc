"Plugins
call plug#begin('~/.vim/plugged')

" Dev
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'preservim/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
Plug 'natebosch/vim-lsc'
    let g:lsc_auto_map = v:true
    let g:lsc_server_commands = {
                \ 'c': {
                \   'command': 'ccls',
                \   'log_level': -1,
                \   'suppress_stderr': v:true,
                \ }
                \}

Plug 'junegunn/fzf' " Fuzzy

" Visual
Plug 'mhinz/vim-startify' " StartScreen
Plug 'vim-airline/vim-airline' " Bar
Plug 'vim-airline/vim-airline-themes'
Plug 'chrisbra/unicode.vim' " Insert unicode easy
Plug 'romgrk/doom-one.vim' " One of the best themes
Plug 'jreybert/vimagit'

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

" Visual
let g:airline#extensions#tabline#enabled = 1

"LSP Stuff
set completeopt=menu,menuone,noinsert,noselect
set completeopt-=preview
let g:lsc_enable_autocomplete = v:true
let g:lsc_enable_disagnostics = v:true
let g:lsc_reference_highlights = v:true
let g:lsc_enable_apply_edit = v:false
let g:lsc_trace_level = 'off'
autocmd CompleteDone * silent! pclose

" Keybinds
let mapleader=" " " Map leader key to space
nn <silent> <leader>1 :tabprevious<CR>
nn <silent> <leader>2 :tabn<CR>
"nn <silent> <leader>q :tabclose<CR>

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
nn <silent> <Leader>d :LSClientGoToDefinition<CR>
nn <silent> <Leader>r :LSClientFindReferences<CR>
nn <silent> <Leader>a :LSClientWorkspaceSymbol<CR>
nn <silent> <Leader>h :LSClientShowHover<CR>

" Compile roff file
nn <silent> <Leader>g :!pdfroff -e % > $(echo %.pdf <bar> sed 's/roff\.//g')<CR>

" Colorscheme
set background=dark
colorscheme doom-one
set termguicolors
let g:airline_theme='atomic'

" Spelling
"set spell spelllang=en_us

" Sane defaults
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
