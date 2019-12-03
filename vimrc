execute pathogen#infect()

set encoding=utf-8 fileencodings=
" ---------------
" options de base
" ---------------

set number     " afficher le numero de ligne
set mouse=a    " activer la souris
set title      " afficher le nom du fichier en haut de la fenetre
set autoindent " indentation automatique
set cindent    " indentation type C
syntax on      " coloration syntaxique
filetype plugin indent on

set list
set listchars=tab:>-,trail:~,extends:>,precedes:<

" eol=$,
" ---------------------------------------------------------------------------
" tabs - retirer les commentaires (") en debut de ligne pour activer l'option
" ---------------------------------------------------------------------------

set expandtab " remplacer les tabs par des epsaces (obligatoire en ING1)

autocmd fileType make setlocal noexpandtab
autocmd fileType snippets setlocal noexpandtab

set tabstop=4 " 1 tab = 4 espaces
set shiftwidth=4 " indentation automatique de 4 espaces
set smarttab " traiter 4 espaces comme 1 tab


" afficher '▒' pour chaque espace en fin de ligne
" afficher '>---' pour les tabs
" afficher '¬' pour les \n
" -----------------------------------------------

" set lcs=trail:▒,tab:>-,eol:¬


" ---------------------------------------------------------------------------
" maps - retirer les commentaires (") en debut de ligne pour activer l'option
" ---------------------------------------------------------------------------

" deplace le curseur eu milieu des () apres avoir ecrit ()
" --------------------------------------------------------

inoremap () ()<left>

" meme principe pour les autre symboles
" -------------------------------------

" inoremap [] []<left>
" inoremap "" ""<left>
" inoremap '' ''<left>
inoremap <> <><left>

" bien positionner les {} en faisant '{ + } + Entrer'
" ---------------------------------------------------

inoremap {}<Enter> {}<left><Enter><Enter><up><tab>

" met la colonne a 80
set cc=80

" NERDTree Map
map <C-t> <ESC>:NERDTreeToggle<CR>
imap <C-t> <ESC>:NERDTreeToggle<CR>

" save
nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>i<right>

" save and quit mapping
map <F1> :wq<CR>
imap <F1> <ESC>:wq<CR>

" open terminal
nmap <F3> :term<CR>

" reload .vimrc
map <F5> <ESC>:source ~/.vimrc<CR>

" Ulti Snips

" Edit snippet from current file
nmap <C-e> :UltiSnipsEdit<CR>

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Open the edit window vertically when you want to edit the snippet of
" particular file
let g:UltiSnipsEditSplit = "horizontal"

" define The directories where snippets are located
let g:UltiSnipsSnippetDirectories = [ '~/afs/snippets' ]

" Disable SnipMate snippets
let g:UltiSnipsEnableSnipMate = 0

" Nerd tree
" let g:NERDTreeDirArrows=0

" Map ctrl-h to show hidden files:
let NERDTreeMapToggleHidden = '<c-h>'

" devicons
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['h'] = 'h'

" airline

set t_Co=256

" let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1

let g:syntastic_c_include_dirs = [ '../include', 'include', '/home/nicolas/afs/projects/nicolas.went-42sh/src/includes']

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
" let g:airline_left_sep = "\uE0b0"
" let g:airline_left_sep = "\uE0c0"
" let g:airline_left_sep = "\uE0b4"
let g:airline_left_alt_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"Airline Themes
"let g:airline_theme='dark'
"let g:airline_theme='badwolf'
"let g:airline_theme='ravenpower'
"let g:airline_theme='simple'
"let g:airline_theme='term'
"let g:airline_theme='ubaryd'
"let g:airline_theme='laederon'
"let g:airline_theme='kolor'
"let g:airline_theme='molokai'
let g:airline_theme='powerlineish'
"let g:airline_theme='luna'
