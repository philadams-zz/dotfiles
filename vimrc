" phil adams vimrc
" http://philadams.net
"
" modeled (to varying extents) on:
"   steve losch (http://bitbucket.org/sjl/dotfiles/src/tip/vim/.vimrc)
"   folke (http://www.ashberg.de/vim/vimrc.html)

" -------------------------------------------------------------------
" general settings
" -------------------------------------------------------------------

" pathogen load bundles
filetype on " calling off when it's already off causes a bad exit status!
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" no need to be compatible with vi
set nocompatible

" beware some security issues with modelines
set modelines=0

" tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4

" use spaces to when <Tab>ing (use CTRL-V<Tab> for a real tab)
set expandtab

" utf-8 please
set encoding=utf-8

" copy the indent from the current line when starting a new line
set autoindent

" show the ruler
set ruler

" show line numbers
"set number

" use a visual bell
set visualbell

" enable backspace to delete anything (including \n) in insert mode
set backspace=indent,eol,start

" set minimal number of screen lines to keep above and below cursor
set scrolloff=3

" we have a fast terminal connection - improve smoothness
set ttyfast

" stop <F1> bringing up help when i mean to hit <ESC>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" save on lost focus
au FocusLost * :wa

" -------------------------------------------------------------------
" status line menu
" -------------------------------------------------------------------

" show the current mode in the status line
set showmode

" always have a status line, even for last window
set laststatus=2

" use tab for auto-expansion in menus
set wildchar=<TAB>

" show a list of all matches when tabbing a command
set wildmenu

" how command line completion works
set wildmode=list:longest,list:full

" attempt to reduce the number of annoying 'press enter' prompts
" that appear when the message text overflows the status line
" set cmdheight=2

" -------------------------------------------------------------------
" searching, substituting
" -------------------------------------------------------------------

" use normal regex for searching already!
nnoremap / /\v
vnoremap / /\v

" case-insensitive search
set ignorecase

" search becomes case sensitive if uppercase is used
set smartcase

" begin search at top when EOF reached
set wrapscan

" show matching parentheses/quotes/braces
set showmatch

" apply substitutions globally on lines
set gdefault

" highlight all matches... (use :noh when you're done)
set hlsearch

" find-as-you-type
"set incsearch

"" make sure :s///gc toggling is disabled
"set noedcompatible

"" change the way backslashes are used in search patterns
"set magic

" -------------------------------------------------------------------
" handling long lines and movement
" -------------------------------------------------------------------

" wrap long lines
set wrap

" don't break lines in the middle of words
set linebreak

" textwidth
set textwidth=79

" jk and ^$ should move intuitively, not based on actual newlines...
nnoremap j gj
nnoremap k gk
nnoremap $ g$
nnoremap ^ g^

" -------------------------------------------------------------------
" file, swap, backup, path
" -------------------------------------------------------------------

" consolidate all swp files in this directory
set directory=~/.vim/swap/

" make no backups
set nobackup

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup

" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

" -------------------------------------------------------------------
" highlighting, colors, fonts
" -------------------------------------------------------------------

" when we have a colored terminal or gui...
if &t_Co > 2 || has("gui_running")
    " ...then use highlighting and a dark bg
    syntax on
    set bg=dark
endif

if has("gui_running")
    set t_Co=256 " identify as 256 color terminal
    set fuoptions=maxvert,maxhorz " macvim fullscreen options
    set guioptions-=T " no toolbar
    set guioptions-=r " no scrollbar
    set lines=28 columns=84
    set transparency=15
    set guifont=Monaco:h13 " set gui font
    colorscheme thegoodluck " default color scheme
endif

" -------------------------------------------------------------------
" formatting
" -------------------------------------------------------------------

" format options (:help fo-table)
set formatoptions=qrn1

" show invisible characters in color close to bg
"set list " seriously, list breaks linebreak?
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" -------------------------------------------------------------------
" leader and custom key commands
" -------------------------------------------------------------------

"" set default leader (personal modifier)
let mapleader=","


" OLD STUFFS
"
"" -------------------------------------------------------------------
"" python settings
"" -------------------------------------------------------------------
"
"" enable all possible python highlighting options
"" (should use http://www.vim.org/scripts/script.php?script_id=790
"" in addition!)
"let python_highlight_all=1
"
"" call nosetests
"function! Test()
"    :execute ":!nosetests"
"endfunction
"nnoremap <leader>t :call Test()<cr>
"
"" -------------------------------------------------------------------
"" makefile settings
"" -------------------------------------------------------------------
"
"" makefiles insist on tabs
"autocmd BufEnter ?akefile* set noet
"
"" -------------------------------------------------------------------
"" temporary hackish 'fixes'
"" -------------------------------------------------------------------
"
"" markdown formatting
"set comments+=f:---,f:- " markdown style headers (---*) formatted properly
"
"" latex formatting
"set comments+=:%,f:\\begin,f:\\end,f:\\item,f:\\usepackage,f:\\if,f:\\else,f:\\set,f:\\title,f:\\author,f:\\date,f:\\bib,f:\\make
