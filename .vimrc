"文字エンコード設定*----------

set encoding=utf-8
scriptencoding utf-8



"View Settings ---------------*
"行番号を表示
set number

set ruler
set cursorline
set cursorcolumn
set laststatus=2
set mouse=a
set list
"set listchars=tab:> ,trail:_,eol:↲,extends:≫,precedes:≪,nbsp:%
set listchars=tab:>-,extends:<,trail:-,eol:\  
"highlight Normal 

"全角スペースをハイライト表示
function! ZenkakuSpace()
	highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction

if has('syntax')
	augroup ZenkakuSpace
		autocmd!
		autocmd ColorScheme * call ZenkakuSpace()
		autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
	augroup END
	call ZenkakuSpace()
endif

set backupdir=C:\Users\RJ026172\W_USUI\Tools\vim\temp\Backup
set directory=C:\Users\RJ026172\W_USUI\Tools\vim\temp\swp
set undodir=C:\Users\RJ026172\W_USUI\Tools\vim\temp\Undo

"tab幅の設定
set tabstop=4

"シフト移動幅
set shiftwidth=4

" 新しい行を作ったときに高度な自動インデントを行う
set smartindent

" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab

set showmatch

set ignorecase

set smartcase

set incsearch

set wrapscan

"検索文字をハイライト
set hlsearch

" クリップボードをWindowsと連携
set clipboard=unnamed

set noexpandtab

set backspace=2

" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

nmap <Esc><Esc> :nohlsearch<CR><Esc>
"backspace=indent,eol,start

set autoread
" Windowsでディレクトリパスの区切り文字に / を使えるようにする
set shellslash
"-----------------------------*


"Color Scheme Settings -------*

syntax on
colorscheme molokai
set t_Co=256
set background=dark

"------------------------------*

"Key Map Settings... ----------*
"F1でヘルプが開くのを無効化
nmap <F1> <nop>
imap <F1> <nop>
"------------------------------*
