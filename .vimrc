" ******************************************************************************
" AUTHOR: KARLKORP
" COPYRIGHT (C) KARLKORP
" VIM CONFIGURATION FILE
" E-MAIL: LISPGOD@GMAIL.COM
"

" ******************************************************************************
" GENERAL
"

" This option has the effect of making Vim either more
" Vi-compatible, or make Vim behave in a more useful way
set nocompatible

" Filetype detection, plugin and indent on
filetype plugin indent on

" Syntax highlighting for all buffers
syntax enable

" Disable Paste mode
set nopaste

" Vim will use the clipboard register '*' for all yank, delete,
" change and put operations which would normally go to the unnamed register
set clipboard=unnamed

" Blowfish method.  Strong encryption
set cryptmethod=blowfish

" This plugin makes the '%' command jump to matching
" HTML tags, if/else/endif in Vim scripts, etc.
runtime macros/matchit.vim

" ******************************************************************************
" TEXT EDITING
"

" A <Tab> in front of a line inserts blanks according to 'shiftwidth'
set smarttab
" Use the appropriate number of spaces to insert a <Tab>
set expandtab
" Number of spaces that a <Tab> in the file counts for
set tabstop=4
" Round indent to multiple of 'shiftwidth'
set shiftround
" Number of spaces to use for each step of (auto)indent
set shiftwidth=4
" Number of spaces that a <Tab> counts for while performing editing
" operations, like inserting a <Tab> or using <BS>
set softtabstop=4

" Copy indent from current line when starting a new line
set autoindent
" Copy the structure of the existing lines indent when autoindenting a new line
set copyindent
" Do smart autoindenting when starting a new line
set smartindent

" Don't insert two spaces after a '.', '?' and '!' with a join command
set nojoinspaces

" Don't make a backup before overwriting a file
set nobackup
" Don't use a swapfile for the buffer
set noswapfile

" Allow virtual editing in Visual block mode
set virtualedit=block

" Set the character encoding used inside Vim
set encoding=utf-8
" Encoding used for the terminal
set termencoding=utf-8
" Set the character encoding for the file of this buffer
set fileencoding=utf-8
" This is a list of character encodings considered
" when starting to edit an existing file
set fileencodings=utf-8,cp1251,koi8-r

" This gives the <EOL> of the current buffer,
" which is used for reading/writing the buffer from/to a file
set fileformat=unix
" This gives the end-of-line (<EOL>) formats that will be tried when
" starting to edit a new buffer and when reading a file into an existing buffer
set fileformats=unix,dos,mac

" Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode
set backspace=indent,eol,start

" This option specifies how keyword completion 'ins-completion'
" works when CTRL-P or CTRL-N are used
set complete=.,b,d,i,k,s,t,U,u,w
" This option specifies a function to be used for
" Insert mode omni completion with CTRL-X CTRL-O
set omnifunc=syntaxcomplete#Complete
" A comma separated list of options for Insert mode completion
set completeopt=longest,menu,menuone,preview
" Determines the maximum number of items to show
" in the popup menu for Insert mode completion
set pumheight=7

" These keywords start an extra indent in the next line
" when 'smartindent' or 'cindent' is set
set cinwords=class,def,do,elif,else,except
set cinwords+=finally,for,if,switch,try,while,with

" Changes the effect of the 'mksession' command
set sessionoptions=blank,buffers,curdir,folds,help
set sessionoptions+=options,slash,tabpages,unix,winsize

" When <Enter> is typed in insert mode set the indent
" for the next line to Lisp standards (well, sort of)
if (&filetype == "lisp")
    set lisp
endif

" ******************************************************************************
" VIM UI
"

" When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again
set autoread
" Write the contents of the file, if it has been modified
set autowrite
" Vim will change the current working directory whenever you
" open a file, switch buffers, delete a buffer or open/close a window
set autochdir

" Number of screen lines to use for the command-line
set cmdheight=1
" Number of screen lines to use for the command-line window
set cmdwinheight=7

" Maximum width of text that is being inserted
set textwidth=80
" Screen column that are highlighted with ColorColumn
set colorcolumn=81

" This option can be used to quickly switch between
" showing all text unfolded and viewing the text with folds
set foldenable
" All folds are opened
set foldclose=""
" A column with the specified width is shown at the side
" of the window which indicates open and closed folds
set foldcolumn=1
" Folds with a higher level will be closed
set foldlevel=10
" Set 'foldlevel' when starting to edit another buffer in a window
set foldlevelstart=10
" Lines with equal indent form a fold
set foldmethod=indent
" Specifies for which type of commands folds will be opened,
" if the command moves the cursor into a closed fold
set foldopen=block,hor,mark,percent,quickfix,search,tag,undo

" A buffer becomes hidden when it is 'abandon'ed
set hidden

" When there is a previous search pattern, highlight all its matches
set hlsearch
" While typing a search command, show where the pattern,
" as it was typed so far, matches
set incsearch

" Override the 'ignorecase' option if the
" search pattern contains upper case characters
set smartcase
" The case of the match is adjusted depending on the typed text
set infercase
" Ignore case in search patterns
set ignorecase

" Specifies whether :lmap or an Input Method (IM) is to be used in Insert mode
set iminsert=0
" Specifies whether :lmap or an Input Method (IM)
" is to be used when entering a search pattern
set imsearch=0

" Vim will use the first language for which the desired help can be found
set helplang=en
" Language to use for menu translation
set langmenu=en
" With the 'messages' argument the language used for messages is printed
language messages POSIX

" When this option is set, the screen will not be redrawn while executing
" macros, registers and other commands that have not been typed
set lazyredraw

" Enable List mode
set list
" Strings to use in 'list' mode and for the 'list' command
set listchars=tab:>~,trail:.

" When a bracket is inserted, briefly jump to the matching one
set showmatch
" Characters that form pairs
set matchpairs=<:>,(:),{:},[:]

" The options are set like with 'setlocal'
set modeline
" Give the number of lines that is checked for set commands
set modelines=1

" Enable the use of the mouse
set mouse=a
" The mouse pointer is hidden when characters are typed
set mousehide
" Right mouse button extends a selection
set mousemodel=extend

" Don't raise a dialog asking if wish to save the current file(s)
set noconfirm

" Don't highlight the screen line of the cursor with CursorLine
set nocursorline
" Don't highlight the screen column of the cursor with CursorColumn
set nocursorcolumn

" Some characters in the pattern are taken literally
set magic
" The 'substitute' flag 'g' is default off
set nogdefault

" Don't show the line and column number of the cursor position
set noruler

" Disable spell checking
set nospell
" List of word list names
set spelllang=en_us

" Don't ring the bell (beep or screen flash) for error messages
set noerrorbells
" Don't use visual bell instead of beeping
set novisualbell

" Print the line number in front of each line
set number
" Minimal number of columns to use for the line number
set numberwidth=3
" Show the line number relative to the
" line with the cursor in front of each line
set relativenumber

" Threshold for reporting number of lines changed
set report=0

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=10
" Minimal number of lines to scroll when the cursor gets off the screen
set scrolljump=10

" Don't give the intro message when starting Vim
set shortmess=I

" Show (partial) command in the last line of the screen
set showcmd

" Show both the tag name and a tidied-up form of the search
" pattern (if there is one) as possible matches
set showfulltag

" Don't put a message on the last line
set noshowmode

" Splitting a window will put the new window below the current one
set splitbelow
" When on, splitting a window will put the new window right of the current one
set splitright
" All the windows are automatically made the same size
" after splitting or closing a window
set equalalways

" Always show the status line
set laststatus=2
" Determine the content of the status line
set statusline=%F%r%h%w
set statusline+=\ %m
set statusline+=\ %=%y
set statusline+=\ [%{&ff}]
set statusline+=\ Buffer:[%n]
set statusline+=\ Column:[%v]
set statusline+=\ Line:%l/%L[%p%%]
set statusline+=\ Mode:[%{ShowCurrentMode()}]

" This option controls the behavior when switching between buffers
set switchbuf=newtab,split,useopen,usetab

" Determines the content of the tab pages line at the top of the Vim window
set tabline=""
" Never displayed tab page labels
set showtabline=0

" Time out on mappings and key codes
set timeout
" The time that is waited for a key code or mapped key sequence to complete
set timeoutlen=3000
" The time in milliseconds that is waited for a key code
" or mapped key sequence to complete
set ttimeoutlen=100

" The title of the window will be set to the value
" of 'titlestring' (if it is not empty), or to: filename [+=-] (path) - VIM
set title

" Indicates a fast terminal connection
set ttyfast

" A history of ':' commands, and a history of
" previous search patterns are remembered
set history=1000
" Maximum number of changes that can be undone
set undolevels=5000

" Changes the effect of the 'mkview' command
set viewoptions=cursor,folds,options,slash,unix

" Command-line completion operates in an enhanced mode
set wildmenu
" Completion mode that is used for the character specified with 'wildchar'
set wildmode=longest:full,full
" A file that matches with one of these patterns is ignored
" when expanding 'wildcards', completing file or directory names
set wildignore=*.bak,*.bin,*.class,*.exe,*.o,*.obj,*.pyc,*.pyo,*.swp

" Lines longer than the width of the window will wrap
" and displaying continues on the next line
set wrap
" Searches wrap around the end of the file
set wrapscan
" Vim will wrap long lines at a character in 'breakat' rather
" than at the last character that fits on the screen
set nolinebreak
" Allow specified keys that move the cursor left/right to move to the
" previous/next line when the cursor is on the first/last character in the line
set whichwrap=<,>,[,]

" Enable 256 colors in Vim
set t_Co=256

" Vim color scheme
colorscheme default

" Vim will try to use colors that look good on a light background
set background=light

" GVim UI settings
if has("gui_running")
    " Set the window size
    winsize 120 40
    " Number of pixel lines inserted between characters
    set linespace=0
    " Run GVim in $HOME directory
    silent! cd $HOME
    " Disable GUI components
    set guioptions=""
    set guitablabel=""
    " Set GUI Font
    try
        if has("mac")
            " Vim will use smooth ('antialiased') fonts
            set antialias
            set guifont=Monaco:h11
        elseif has("unix")
            set guifont=DejaVu\ Sans\ Mono\ 11
        elseif (has("win32") || has("win64"))
            set guifont=DejaVu_Sans_Mono:h11
        endif
    catch /.*/
        echoerr "Font doesn't found in the system font list"
    endtry
    " GUI highlight-groups
    highlight ColorColumn guibg=NONE guifg=#FF0000 gui=BOLD
    highlight FoldColumn  guibg=NONE guifg=#000000 gui=NONE
else
    " Terminal highlight-groups
    highlight ColorColumn ctermbg=NONE ctermfg=1* cterm=BOLD
    highlight FoldColumn  ctermbg=NONE ctermfg=0  cterm=NONE
endif

" ******************************************************************************
" FUNCTIONS
"

" Format file
function! FormatFile()
    silent! normal ml
    silent! normal gg=G
    silent! %s/\s\+$//e
    silent! normal 'lzz
    silent! delmarks l
endfunction

" Show current mode in status line
function! ShowCurrentMode()
    let s:showMode = ""
    let s:currentMode = mode()
    if (s:currentMode ==# "i")
        let s:showMode = "Insert"
    elseif (s:currentMode ==# "R")
        let s:showMode = "Replace"
    elseif (s:currentMode ==# "n")
        let s:showMode = "Normal"
    else
        let s:showMode = "Visual"
    endif
    return s:showMode
endfunction

" Lua/Ruby/Bash/Perl/Python templates
function! UseTemplates(type)
    let s:scriptLine = "#!/usr/bin/env "
    let s:scriptEncoding = "# -*- coding: utf-8 -*-"
    if (a:type == "lua")
        execute setline(1, s:scriptLine . "lua")
        execute setline(2, "")
    elseif (a:type == "ruby")
        execute setline(1, s:scriptLine . "ruby")
        execute setline(2, s:scriptEncoding)
        execute setline(3, "")
    elseif (a:type == "sh")
        execute setline(1, s:scriptLine . "bash")
        execute setline(2, "")
    elseif (a:type == "perl")
        execute setline(1, s:scriptLine . "perl")
        execute setline(2, "")
        execute setline(3, "use strict;")
        execute setline(4, "use warnings;")
        execute setline(5, "")
    elseif (a:type == "python")
        execute setline(1, s:scriptLine . "python")
        execute setline(2, s:scriptEncoding)
        execute setline(3, "")
    endif
    silent! normal Go
endfunction

" Run Lua/Ruby/Bash/Perl/Python code
function! Run()
    silent! write
    try
        if (&filetype == "lua")
            execute "!lua %"
        elseif (&filetype == "perl")
            execute "!perl %"
        elseif (&filetype == "ruby")
            execute "!ruby %"
        elseif (&filetype == "python")
            execute "!python %"
        elseif ((&filetype == "sh") && (has("unix") || has("mac")))
            execute "!sh %"
        else
            return
        endif
    catch /.*/
        echoerr "Error while calling function: Run()"
    endtry
endfunction

" Make the script executable
function! MakeExecutable()
    if ((getline(1) =~ "#!") && (getline(1) =~ "bin/"))
        silent! execute "!chmod a+x <afile>"
    endif
endfunction

" Add commands to the list of commands that Vim will execute
if has("autocmd")
    augroup BeforeWritingFile
        autocmd!
        autocmd BufWritePre * retab
        autocmd BufWritePre * call FormatFile()
    augroup END
    augroup AfterWritingFile
        autocmd!
        autocmd BufWritePost $MYVIMRC source $MYVIMRC
        if (has("unix") || has("mac"))
            autocmd BufWritePost * call MakeExecutable()
        endif
    augroup END
    augroup CreateNewFile
        autocmd!
        autocmd BufNewFile *.lua call UseTemplates("lua")
        autocmd BufNewFile *.pl,*.pm call UseTemplates("perl")
        autocmd BufNewFile *.py,*.pyw call UseTemplates("python")
        autocmd BufNewFile *.rb call UseTemplates("ruby")
        autocmd BufNewFile *.sh call UseTemplates("sh")
    augroup END
endif

" ******************************************************************************
" KEY MAPPINGS
"

" Abbreviations
cnoreabbrev q q!
cnoreabbrev Q q!
cnoreabbrev w w!
cnoreabbrev W w!

" Define leader key
let mapleader=","

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Navigation between splits
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" Locate search results in the center
nnoremap <silent>n nzz
nnoremap <silent>N Nzz
nnoremap <silent>* *zz
nnoremap <silent># #zz

" Clear search highlights
nnoremap // :nohlsearch<Return>

" Run script
nnoremap <leader>r :call Run()<Return>

" Reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" Disable arrow keys
for prefix in ['i', 'n', 'v']
    for key in ['<Up>', '<Down>', '<Left>', '<Right>']
        execute prefix . "noremap " . key . " <Nop>"
    endfor
endfor
