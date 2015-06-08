set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
"Plugin 'mileszs/ack.vim'
"Plugin 'Lokaltog/vim-easymotion'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-highlight'
"Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'vim-scripts/paredit.vim'

Plugin 'tomtom/tcomment_vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
"Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/neocomplcache.vim'

" syntax
"Plugin 'pangloss/vim-javascript'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'thoughtbot/vim-rspec'
Plugin 'moll/vim-node'
Plugin 'leshill/vim-json'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
:set number
:set expandtab
:set tabstop=2
:set shiftwidth=2
silent !stty -ixon
:nmap <C-s> :w<CR>
:imap <C-s> <Esc>:w<CR>i
:nmap <C-q> :q<CR>
:imap <C-q> <Esc>:q<CR>
:nmap <C-e> :E<CR>
:imap <C-e> <Esc>:E<CR>i
:nmap <C-t> :tabnew<CR>
:imap <C-t> <Esc>:tabnew<CR>i
:nmap <C-j> gT
:imap <C-j> <Esc>gT
:nmap <C-k> gt
:imap <C-k> <Esc>gt
":let &t_Co=256
:syntax enable
:set backspace=start,eol,indent

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction
autocmd BufWritePre     * :call TrimWhiteSpace()
autocmd BufWritePre * :retab

function! HiTabs()
  syntax match TAB /\t/
  hi TAB ctermbg=blue ctermfg=red
endfunction
au BufEnter,BufRead * call HiTabs()

:let g:solarized_termcolors=256
:set background=dark
:colorscheme solarized

:let g:airline#extensions#tabline#enabled = 1
:let g:airline#extensions#tabline#left_sep = ' '
:let g:airline#extensions#tabline#left_alt_sep = '|'

:map <C-n> :NERDTreeToggle<CR>

:set statusline+=%#warningmsg#
:set statusline+=%{SyntasticStatuslineFlag()}
:set statusline+=%*

:let g:neocomplcache_enable_at_startup = 1

:let g:syntastic_always_populate_loc_list = 1
:let g:syntastic_auto_loc_list = 1
:let g:syntastic_check_on_open = 1
:let g:syntastic_check_on_wq = 0

:set hlsearch
:set laststatus=2
:noremap <F4> :set hlsearch! hlsearch?<CR>
