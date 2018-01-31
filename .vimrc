" -- Compatability -- "

set encoding=utf-8 " always encode in utf"
set nocompatible   " use vim defaults instead of vi"

" -- Settings -- "

" File detection
execute pathogen#infect()
filetype on
filetype indent on
filetype plugin on
syntax enable

" Powerline
let g:Powerline_symbols = 'fancy'
let g:Powerline_dividers_override = ["\Ue0b0","\Ue0b1","\Ue0b2","\Ue0b3"]
let g:Powerline_symbols_override = {'BRANCH': "\Ue0a0", 'LINE': "\Ue0a1", 'RO': "\Ue0a2"}

" Airline
let g:airline_powerline_fonts = 1
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif

" unicode symbols

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Airline Themes
let g:airline_theme='kolor'
colorscheme kolor

"let g:airline_theme='molokai'
"colorscheme molokai

" Omnisharp
"let g:Omnisharp_stop_server = 0
"let g:OmniSharp_host = "http://localhost:2000"

" Javascript Libraries Syntax Highlighting
" let g:used_javascript_libs ='jquery,angularjs,angularui,angularuirouter,react'

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"let g:syntastic_python_checkers = ['pylint']

" Get Code Issues and syntax errors
" let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']

"augroup omnisharp_commands
"   autocmd!
   "Set autocomplete function to OmniSharp (if not using YouCompleteMe "completion plugin)
"   autocmd FileType cs setlocal omnifunc=OmniSharp#Complete        

"   autocmd FileType cs nnoremap gd :OmniSharpGotoDefinition<cr>
   " Synchronous build (blocks Vim)
   "autocmd FileType cs nnoremap <F5> :wa!<cr>:OmniSharpBuild<cr>
   " Builds can also run asynchronously with vim-dispatch installed
"   autocmd FileType cs nnoremap <leader>b :wa!<cr>:OmniSharpBuildAsync<cr>
"   autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck
          
   " Automatically add new cs files to the nearest project on save
"   autocmd BufWritePost *.cs call OmniSharp#AddToProject()
           
   "show type information automatically when the cursor stops moving
"   autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()
"augroup END

" General
set background=dark             "dark background"
set directory^=$HOME/backups/   "put all swap files together in one place
set backspace=2                 "enable <BS> for everything
set laststatus=2                "always show status line
set mouse=a                     "enable mouse in all modes"
set wrap                        "word wrap"
set linebreak                   "attempt to wrap lines cleanly
set number                      "show line numbers
set cursorline                  "highlight cursor line
set title                       "use filename in window title
set ttyfast                     "fast terminal

" Tabs
set autoindent                  "copy indent from previous line
set expandtab                   "replace tabs with spaces
set shiftwidth=2                "spaces for autoindenting
set smarttab                    "<BS> removes shiftwidth worth of spaces
set softtabstop=2               "spaces for editing, e.g <Tab> or <BS>
set tabstop=2                   "spaces for <Tab>

" Searches
set hlsearch                    "highlight search results
set incsearch                   "search while typing"
set ignorecase                  "case insensitive searching
set smartcase                   "override ignorecase if upper case typed
set textwidth=0                 "don't break lines after some maximum width
set ruler                       "shows ruler

" Colors
set t_Co=256
colorscheme elflord

" gVIM
if has('gui_running')
   set guioptions-=r            "remove right scrollbar
   set guioptions-=b            "remove bottom scrollbar
   set guioptions-=L            "remove left scrollbar
   set guifont=Inconsolata\ 13     "set gui font
   set guicursor+=a:block-blinkon1
   colorscheme torte
   " Paste from PRIMARY and CLIPBOARD
   inoremap <silent> <M-v> <Esc>"+p`]a
   inoremap <silent> <S-Insert> <Esc>"*p`]a
endif

