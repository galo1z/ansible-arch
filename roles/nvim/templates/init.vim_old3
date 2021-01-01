"Reduce waitng for a key code sequence end
set timeoutlen=100
"Set background color (needed for colorscheme)
set background=dark
"Turn backup off (no .swp, .un~, ~ files); Required by CoC plugin
set nobackup
set noswapfile
set nowritebackup
"Auto indent
"set ai
set smartindent
filetype indent off
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
set history=50
"Use spaces instead of tabs
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
"Enables graphical menu of the matches in shell
set wildmenu
"Highlight when exceeded 120 symbols in string
set colorcolumn=120
highlight ColorColumn ctermbg=darkgray

"Stop hightlighting of founded items by pressing Ctr+L
nnoremap <C-L> :nohlsearch<CR><C-L>

"Execute opened script/code by pressing F5
augroup rungroup
    autocmd!
    autocmd BufRead,BufNewFile *.go nnoremap <F5> :w <cr> :exec '!go run' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.py nnoremap <F5> :w <cr> :exec '!python' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.sh nnoremap <F5> :w <cr> :exec '!bash' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.c  nnoremap <F5> :w <cr> :!gcc % -o %< && ./%< <cr>
augroup END

"----------------------------------
" dein.vim
""----------------------------------
"Require
"set runtimepath+=/root/.local/share/dein/repos/github.com/Shougo/dein.vim
"
"Required
if dein#load_state('/root/.local/share/dein')
  call dein#begin('/root/.local/share/dein')

  "Required
  call dein#add('/root/.local/share/dein/repos/github.com/Shougo/dein.vim')
  "My plugins:
  call dein#add('airblade/vim-gitgutter')
"  call dein#add('pearofducks/ansible-vim')
"  call dein#add('itchyny/lightline.vim')
"  call dein#add('frazrepo/vim-rainbow')
"  call dein#add('kien/rainbow_parentheses.vim')
"  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
"  
"
  "Required
  call dein#end()
  call dein#save_state()
endif
"
"Required
"filetype plugin indent on
"syntax enable
"
""----------------------------------
"" Conquer of Completion (CoC)
""----------------------------------
"" TextEdit might fail if hidden is not set.
"set hidden
"
"" Give more space for displaying messages.
"set cmdheight=2
"
"" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
"" delays and poor user experience.
"set updatetime=300
"
"" Don't pass messages to |ins-completion-menu|.
"set shortmess+=c
"
"" Always show the signcolumn
"set signcolumn=yes
"
"" Use tab for trigger completion with characters ahead and navigate.
"" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
"" other plugin before putting this into your config.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
"" Use <c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()
"
"" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
"" position. Coc only does snippet and additional edit on confirm.
"" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
"if exists('*complete_info')
"  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"else
"  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"endif
"
"" Use `[g` and `]g` to navigate diagnostics
"" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
"" Use K to show documentation in preview window.
"nnoremap <silent> K :call <SID>show_documentation()<CR>
"function! s:show_documentation()
"  if (index(['vim','help'], &filetype) >= 0)
"    execute 'h '.expand('<cword>')
"  else
"    call CocAction('doHover')
"  endif
"endfunction
"
"" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')
"
""----------------------------------
"" I DON'T UNDERSTAND MOST BELOW THIS LINE
"
"" GoTo code navigation.
"" TODO
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"
"" Symbol renaming.
"" TODO
"nmap <leader>rn <Plug>(coc-rename)
"
"" Formatting selected code.
"" TODO
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
"
"augroup mygroup
"  autocmd!
"  " Setup formatexpr specified filetype(s).
"  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"  " Update signature help on jump placeholder.
"  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end
"
"" Applying codeAction to the selected region.
"" Example: `<leader>aap` for current paragraph
"" TODO
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)
"
"" Remap keys for applying codeAction to the current buffer.
"" TODO
"nmap <leader>ac  <Plug>(coc-codeaction)
"" Apply AutoFix to problem on the current line.
"nmap <leader>qf  <Plug>(coc-fix-current)
"
"" Map function and class text objects
"" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
"" TODO
"xmap if <Plug>(coc-funcobj-i)
"omap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap af <Plug>(coc-funcobj-a)
"xmap ic <Plug>(coc-classobj-i)
"omap ic <Plug>(coc-classobj-i)
"xmap ac <Plug>(coc-classobj-a)
"omap ac <Plug>(coc-classobj-a)
"
"" Use CTRL-S for selections ranges.
"" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)
"
"" Add `:Format` command to format current buffer.
"command! -nargs=0 Format :call CocAction('format')
"
"" Add `:Fold` command to fold current buffer.
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
"" Add `:OR` command for organize imports of the current buffer.
"command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
"
"" Add (Neo)Vim's native statusline support.
"" NOTE: Please see `:h coc-status` for integrations with external plugins that
"" provide custom statusline: lightline.vim, vim-airline.
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
"" Mappings for CoCList
"" Show all diagnostics.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
"" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"
""----------------------------------
"" Lightline
""----------------------------------
"let g:lightline = {
"      \ 'component': {
"      \   'charvaluehex': '0x%B'
"      \ }
"      \ }
"
"let g:lightline.active = {
"      \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'absolutepath', 'modified' ] ],
"      \   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
"      \ }
""----------------------------------
"" kien/rainbow_parentheses.vim
""----------------------------------
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
"let g:rbpt_colorpairs = [
"    \ ['brown',       'RoyalBlue3'],
"    \ ['Darkblue',    'SeaGreen3'],
"    \ ['darkgray',    'DarkOrchid3'],
"    \ ['darkgreen',   'firebrick3'],
"    \ ['darkcyan',    'RoyalBlue3'],
"    \ ['darkred',     'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['brown',       'firebrick3'],
"    \ ['gray',        'RoyalBlue3'],
"    \ ['black',       'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['Darkblue',    'firebrick3'],
"    \ ['darkgreen',   'RoyalBlue3'],
"    \ ['darkcyan',    'SeaGreen3'],
"    \ ['darkred',     'DarkOrchid3']
"    \ ]
"
"----------------------------------
" Misc
"----------------------------------
"No audoindent on pasted text
"set paste " THIS WILL CONFLICT WITH tab settings (tabstop,shiftwidth,..)
