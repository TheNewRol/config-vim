" Config shell
set shell=powershell
set shellcmdflag=-command
set shellquote=\"
set shellxquote=

set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set fileencoding=utf-8
set showmatch
set sw=2
set relativenumber

set laststatus=2
set noshowmode

call plug#begin('~/AppData/Local/nvim/plugged')
" Temas 
Plug 'morhetz/gruvbox'

" IDE
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' " plugin que me permite vuscar archivos
Plug 'tomasiser/vim-code-dark' " Plugin con los colores de visual studio code
Plug 'sheerun/vim-polyglot' " plugin para cargar lenguajes de programación
Plug 'tpope/vim-surround' " plugin de corchetes y parentesis y que permite fodificar el contenido del mismo
Plug 'easymotion/vim-easymotion' " plugin para desplasarce dentro de un archivo de forma rapida
Plug 'scrooloose/nerdtree' " plugin para mostrar un arbol de directorios en el terminal
Plug 'christoomey/vim-tmux-navigator' " plugin para navegar entre ventanas de archivos aviertos
Plug 'kosayoda/nvim-lightbulb' " plugin que permite mostrar snipets de codigo
Plug 'Raimondi/delimitMate' " plugin que permite el cierre automatico de corchetes, parentesis, comillas, etc.
Plug 'vim-airline/vim-airline' " plugin que muestra una línia flotante con información
Plug 'vim-syntastic/syntastic' " plugin que nos muestra errores de sintaxys en el archivo
Plug 'ryanoasis/vim-devicons' " plugin que nos pone iconos al los archivos
Plug 'vim-airline/vim-airline-themes' " plugin de temas de la linea flotante
Plug 'preservim/nerdcommenter' " plugin que nos facilita los comentarios
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"colorscheme gruvbox
"let g:gruvbox_contrast_dark = 'hard' "Alto contraste
set enc=utf-8
set guifont=Powerline_Consolas:h11
set t_Co=256
set t_ut=
colorscheme codedark
let g:airline_theme = 'tmuxline'
" let NERDDTreeQuitOnOpen = 1 " Permite que cuando selecionemos un archivo en el arbol de directoris, NERDTree se sierre de forma automatica

let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2) " Buscar en el archivo 
nmap <Leader>nt :NERDTreeFind<CR> " Arbol de directorios

" Atajos de teclado
nmap <Leader>w :w<CR> " Guardar
nmap <Leader>q :q<CR> " Cerrar
