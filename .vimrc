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
"let g:Powerline_symbols = 'fancy'

" Omnisharp
let g:Omnisharp_stop_server = 0
let g:OmniSharp_host = "http://localhost:2000"

" Javascript Libraries Syntax Highlighting
" let g:used_javascript_libs ='jquery,angularjs,angularui,angularuirouter,react'


" Get Code Issues and syntax errors
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']

augroup omnisharp_commands
   autocmd!
   "Set autocomplete function to OmniSharp (if not using YouCompleteMe "completion plugin)
   autocmd FileType cs setlocal omnifunc=OmniSharp#Complete        

   autocmd FileType cs nnoremap gd :OmniSharpGotoDefinition<cr>
   " Synchronous build (blocks Vim)
   "autocmd FileType cs nnoremap <F5> :wa!<cr>:OmniSharpBuild<cr>
   " Builds can also run asynchronously with vim-dispatch installed
   autocmd FileType cs nnoremap <leader>b :wa!<cr>:OmniSharpBuildAsync<cr>
   autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck
          
   " Automatically add new cs files to the nearest project on save
   autocmd BufWritePost *.cs call OmniSharp#AddToProject()
           
   "show type information automatically when the cursor stops moving
   autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()
augroup END

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

