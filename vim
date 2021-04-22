"hybrid line number
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END



"vundle pack

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

	"ayu-theme plugin
	Plugin 'ayu-theme/ayu-vim'
	Plugin 'juanedi/predawn.vim'
	Plugin 'vim-syntastic/syntastic'
	Plugin 'nvie/vim-flake8'
	Plugin 'vim-scripts/indentpython.vim'
	Bundle 'Valloric/YouCompleteMe'
	Plugin 'scrooloose/nerdtree'
	Plugin 'jistr/vim-nerdtree-tabs'
	Plugin 'tpope/vim-fugitive'
	Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
	Plugin 'tmhedberg/SimpylFold'
	Plugin 'kien/ctrlp.vim'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"nerdtree tab navigation:conrol +l = next, h = previous , n = new
map  <C-l> :tabn<CR> 
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

" open terminal below all splits
cabbrev bterm botright term

"bottom terminal open
map  <F4> :bterm<CR>


"syntax enable
let python_highlight_all=1
syntax on
colorscheme predawn

"using unicode
set encoding=utf-8

"auto complete
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"nerdtree
autocmd VimEnter * NERDTree

