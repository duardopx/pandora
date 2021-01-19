" Settings
set secure
set modeline
set spelllang=en
set mouse=nv
set nostartofline
set title
set autoread

set clipboard=unnamedplus
set noshowmode
set scrolloff=6
set number
set cmdheight=1
set updatetime=300
set cursorline
set hidden
set nobackup
set splitbelow
set splitright
set signcolumn=yes
set shortmess+=c
set fillchars+=fold:.
syntax on

" Tab completion menu
set wildmenu
set wildmode=full

" Undo
set undolevels=1000
set undofile

" Jump to files with these extensions
set suffixesadd=.md,.c,.h,.cpp,.py,.tex

set tags=tags

" Don't treat hyphens and underscores like whitespace
set iskeyword+=-
set iskeyword+=_

" Search 
set showmatch
set matchtime=0
set incsearch
set hlsearch
set ignorecase
set inccommand=nosplit
set smartcase

" Line breaking 
set wrap
set nolinebreak
set breakindent
set breakindentopt=min:40
highlight ColorColumn ctermbg=0

" Indentation
set copyindent
set preserveindent
filetype plugin indent on
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

" Remmaps
" Quick way to enter in command line mode
nnoremap ; :

" Run commands in current file
nnoremap sc :%! 

" Scroll
map e <C-u>
map r <C-d>

" Switch tab
nmap tn :tabedit<Return>
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

" Set , as leader
let mapleader = ","

" Make U do the opposite of u
nnoremap U <C-r>

" The opposite of J
nnoremap K i<CR><Esc>

" Quickly save, only writing the file if there are changes
nnoremap <leader>w :up<CR>

" Create splits
nnoremap sv <C-w>v <CR>
nnoremap ss <C-w>s <CR>

" FZF mappings
nnoremap <C-p> :GFiles<CR>
nnoremap <C-p>. :Files<CR>
nnoremap <C-p>.. :Files ../..<CR>
nnoremap <leader>b :Buffers<CR>

" Git Mappings
nnoremap go :.Gbrowse<CR>
vnoremap go :'<,'>.Gbrowse<CR>
nnoremap gs :Git<CR>

" Quickly select the text you just pasted
nnoremap gV `[v`]

" Automatically jump to end of pasted text
noremap <silent> p p`]
nnoremap <silent> p p`]

" Traverse buffer list more easily.
nnoremap < :bprevious<CR>
nnoremap > :bnext<CR>

" Easily move between splits
nmap <Space> <C-w>w
nnoremap <silent> sh <C-w>h
vnoremap <silent> sh <C-w>h
nnoremap <silent> sj <C-w>j
vnoremap <silent> sj <C-w>j
nnoremap <silent> sk <C-w>k
vnoremap <silent> sk <C-w>k
nnoremap <silent> sl <C-w>l
vnoremap <silent> sl <C-w>l

" Make j and k operate on virtual lines, not real lines.
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk

" Toggle file browser, undotree and Vista tagbar
nnoremap <Leader>v :Vista!!<CR>

" Turn off search highlighting
nnoremap sn :noh<CR>

" Resize splits
nnoremap <silent> <c-Up> :resize +3<CR>
nnoremap <silent> <c-Down> :resize -3<CR>
nnoremap <silent> <c-left> :vertical resize -3<CR>
nnoremap <silent> <c-right> :vertical resize +3<CR>
