lua require("core")
lua require("configure")


set noexpandtab
set listchars=tab:\|\ ,trail:▫
set notimeout
set viewoptions=cursor,folds,slash,unix
set indentexpr=
set formatoptions-=tc
set noshowmode
set shortmess+=c
set completeopt=longest,noinsert,menuone,noselect,preview
silent !mkdir -p $HOME/.config/nvim/tmp/backup
silent !mkdir -p $HOME/.config/nvim/tmp/undo
"silent !mkdir -p $HOME/.config/nvim/tmp/sessions
set backupdir=$HOME/.config/nvim/tmp/backup,.
set directory=$HOME/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=$HOME/.config/nvim/tmp/undo,.
endif

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


set termguicolors " enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

silent! color deus

hi NonText ctermfg=gray guifg=grey10
"hi SpecialKey ctermfg=blue guifg=grey70


" ==================== Cursor Movement ====================
" New cursor movement (the default arrow keys are used for resizing windows)
"     ^
"     c
" < h   n >
"     t
"     v
noremap <silent> c k
noremap <silent> t j
noremap <silent> n l
" C/T keys for 5 times u/e (faster navigation)
noremap <silent> C 5k
noremap <silent> T 5j
" H/N keys for 7 times u/e (faster navigation)
noremap <silent> H b
noremap <silent> N w
" noremap <silent> H 7h
" noremap <silent> N 7l
