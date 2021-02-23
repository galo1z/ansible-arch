"----------------------------------
" Common
"----------------------------------
"Reduce waitng for a key code sequence end
set timeoutlen=500
"Set background color (needed for colorscheme)
set background=dark
set termguicolors
"Turn backup off (no .swp, .un~, ~ files); Required by CoC plugin
set nobackup
set noswapfile
set nowritebackup
"Wrap lines
set wrap
"Enable mouse support
set mouse=a
"Enable system clipboard
set clipboard=unnamedplus
"Ignore case when searching
set ignorecase
"Hightlight search results
set hlsearch
"Highlight while typing a search command
set incsearch
"Highlight current line
set cursorline
"Enable line indexing
set number
set relativenumber
"Increase the undo limit
set history=100
"Use spaces instead of tabs
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
"Enables graphical menu of the matches in shell
set wildmenu
"Highlight 120th symbol
set colorcolumn=120
highlight ColorColumn ctermbg=darkgray
" Smart auto-indent
set smartindent
filetype indent off

"Stop hightlighting of founded items by pressing Ctr+L
nnoremap <C-L> :nohlsearch<CR><C-L>

"Execute opened script/code by pressing F5
augroup rungroup
    autocmd!
    autocmd BufRead,BufNewFile *.go nnoremap <F5> :w <cr> :exec '!go run' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.py nnoremap <F5> :w <cr> :exec '!python' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.sh nnoremap <F5> :w <cr> :exec '!bash' shellescape(@%, 1)  <cr>
    autocmd BufRead,BufNewFile *.c  nnoremap <F5> :w <cr> :exec '!gcc % -o %< && ./%<'      <cr>
augroup END

"filetype plugin indent on
syntax enable

colorscheme hybrid
