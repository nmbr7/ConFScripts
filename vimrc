execute pathogen#infect()
filetype on
syntax on

let &titlestring = expand('%:p')
set title
set autoindent
set autochdir
set noshowmode
set number
set hidden
set history=100
filetype indent on
set wrap
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set hlsearch
set showmatch
set relativenumber
set nomodeline

map <C-n> :Vexplore<cr>
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <left> :tabp<cr>
map <right> :tabn<cr>
map <cr><cr> :tabnew<Space>
map <space> viw
map = dd2kp
map - ddp
imap <c-d> <esc>ddi
map <c-u> viwU
imap <c-u> <esc><c-u>i
map <c-u><c-u> viwu
imap <c-u><c-u> <esc><c-u><c-u>i

let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>
autocmd FileType c,cpp ClangFormatAutoEnable

let g:VimuxHeight = "35"
let g:VimuxOrientation = "v"
let g:VimuxRunnerType = "pane"
map rr :call VimuxPromptCommand()<cr>
map rl :call VimuxRunLastCommand()<cr>
map rc :call VimuxCloseRunner()<cr>

let g:VimuxPromptString = "\e[1;31m>> \e[1;32m"
let g:racer_cmd = "$HOME/.cargo/bin/racer"
let g:rustfmt_autosave = 1
let g:racer_experimental_completer = 1
let g:netrw_winsize = 15
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_banner = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='badwolf'
colorscheme molokai 
