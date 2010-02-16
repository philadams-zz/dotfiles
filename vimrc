" phil's vimrc
" http://philadams.net
"
" loosely modeled on:
"   folke's vimrc (http://www.ashberg.de/vim/vimrc.html)
"   will hui's vimrc (http://github.com/willhui/dotfiles/blob/master/vimrc)

" -------------------------------------------------------------------
" general settings
" -------------------------------------------------------------------

" set the textwidth
"set textwidth=79

" enable backspace to delete anything (including \n) in insert mode
set backspace=indent,eol,start
set nocompatible

" show line numbers
set number

" highlight bad whitespace
highlight BadWhitespace ctermbg=red guibg=red
 
" flag trailing whitespace as bad
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" show the ruler
set ruler

" copy the indent from teh current line when starting a new line
set autoindent

" describe how auto formatting is done (help: fo-table for details;
" add 'a' for auto formatting and 'n' for numbers)
set formatoptions=tcq

" use spaces to when <Tab>ing (use CTRL-V<Tab> for a real tab)
set expandtab

" tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4

" -------------------------------------------------------------------
" searching, substituting
" -------------------------------------------------------------------

" case-insensitive search
set ignorecase

" search becomes case sensitive if uppercase is used
set smartcase

" change the way backslashes are used in search patterns
set magic

" begin search at top when EOF reached
set wrapscan

" show matching parentheses/quotes/braces
set showmatch

" highlight all matches... (use :noh when you're done)
set hlsearch

" find-as-you-type
" set incsearch

" make sure :s///gc toggling is disabled
set noedcompatible

" -------------------------------------------------------------------
" highlighting, colors, fonts
" -------------------------------------------------------------------

" when we have a colored terminal or gui...
if &t_Co > 2 || has("gui_running")
    " ...then use highlighting
    syntax on
    set bg=dark
endif

if has("gui_running")
    set t_Co=256 " identify as 256 color terminal
    set fuoptions=maxvert,maxhorz " macvim fullscreen options
    set guioptions-=T " no toolbar
    set guioptions-=r " no scrollbar
    set lines=25 columns=84
    set transparency=15
    set guifont=Monaco:h13 " set gui font
    colorscheme nature " default color scheme
endif

" -------------------------------------------------------------------
" status line menu
" -------------------------------------------------------------------

" use tab for auto-expansion in menus
set wildchar=<TAB>

" show a list of all matches when tabbing a command
set wildmenu

" how command line completion works
set wildmode=list:longest,list:full

" show the current mode in the status line
set showmode

" attempt to reduce the number of annoying 'press enter' prompts
" that appear when the message text overflows the status line
" set cmdheight=2

" -------------------------------------------------------------------
" python settings
" -------------------------------------------------------------------
 
" display tabs at the beginning of a line in python mode as bad
autocmd BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/

" enable all possible python highlighting options
" (should use http://www.vim.org/scripts/script.php?script_id=790
" in addition!)
let python_highlight_all=1

" -----------------------------------------------------------
" Insert-Mode Completion
" -----------------------------------------------------------

" order and what to complete. see ":help complete" for info
set complete=.,w,b,u,t,i

" adjust case of a keyword completion match
set infercase

" when completing tags in Insert mode show both the name
" and any arguments (when a C function is inserted)
set showfulltag

function! InsertTabWrapper(direction)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    elseif "backward" == a:direction
        return "\<c-p>"
    else
        return "\<c-n>"
    endif
endfunction

function! CleverTab(direction)
    if pumvisible()
        if "backward" == a:direction
            return "\<c-p>"
        else
            return "\<c-n>"
        end
    endif
    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
        return "\<Tab>"
    elseif exists('&omnifunc') && &omnifunc != ''
        return "\<c-x>\<c-o>"
    else
        if "backward" == a:direction
            return "\<c-p>"
        else
            return "\<c-n>"
        end
    endif
endfunction

" use tab and shift+tab to cycle through completion results
inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>

" -------------------------------------------------------------------
" makefile settings
" -------------------------------------------------------------------

" makefiles insist on tabs
autocmd BufEnter ?akefile* set noet

" -------------------------------------------------------------------
" file, swap, backup, path
" -------------------------------------------------------------------

" make no backups
set nobackup

" put swap files in this directory (consolidate them all)
set directory=~/.vim/swap/

" Don't write backup file if vim is being called by "crontab -e"
" au BufWrite /private/tmp/crontab.* set nowritebackup

" Don't write backup file if vim is being called by "chpass"
" au BufWrite /private/etc/pw.* set nowritebackup

" -------------------------------------------------------------------
" temporary hackish 'fixes'
" -------------------------------------------------------------------

" markdown formatting
set comments+=f:---,f:- " markdown style headers (---*) formatted properly

" latex formatting
set comments+=:%,f:\\begin,f:\\end,f:\\item,f:\\usepackage,f:\\if,f:\\else,f:\\set,f:\\title,f:\\author,f:\\date,f:\\bib,f:\\make
