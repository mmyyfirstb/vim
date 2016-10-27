set nocompatible              " be iMproved

"UI{
set t_Co=256
colorscheme molokai
let g:airline_theme = 'molokai'
"} UI


"airline tabline
let g:airline#extensions#tabline#enabled = 1

" BUNDLE{
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'Valloric/YouCompleteMe'  
Plugin 'rdnetto/YCM-Generator'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"}BUNDLE

"YCM{
set completeopt=longest,menu    
autocmd InsertLeave * if pumvisible() == 0|pclose|endif 

let g:ycm_confirm_extra_conf = 0
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_seed_identifiers_with_syntax=1    
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}
"}YCM







set nu
set nowrap                      " Do not wrap long lines
set autoindent                  " Indent at the same level of the previous line
set shiftwidth=4                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=4                   " An indentation every four columns
set softtabstop=4               " Let backspace delete indent
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current

syntax enable
syntax on
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=gb2312
set termencoding=utf-8






"taglist config
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
map <silent> <F9> :TlistToggle<cr> 

"nerdtree
let NERDTreeShowBookmarks=1                     "当打开NERDTree窗口时，自动显示Bookmarks 
map <silent> <F10> :NERDTreeToggle<CR>


set pastetoggle=<F2>

set tags=''
"set tags+=/root/php-5.6.14/tags
"cs add /root/php-5.6.14/cscope.out /root/php-5.6.14



"set tags+=/root/linux-2.6/tags
"cs add /root/linux-2.6/cscope.out /root/linux-2.6

"set tags=/root/spp/src/tags
"set tags=/root/spp/src/tags
"cs add /root/spp/src/cscope.out /root/spp/src

"set tags=/root/friendmsg/tags
"cs add /root/friendmsg/cscope.out /root/friendmsg


"set tags+=/root/phxpaxos/tags
"cs add /root/phxpaxos/cscope.out /root/phxpaxos

set tags+=/root/phxrpc/tags
cs add /root/phxrpc/cscope.out /root/phxrpc

"if has("cscope")
"    set csto=1                             "先搜索tags标签文件，再搜索cscope数据库
"    set cst                                "使用|:cstag|(:cs find g)，而不是缺省的:tag
"    if filereadable("cscope.out")
"        cs add cscope.out                   "添加cscope数据库
"    endif
"endif

let mapleader = ',' 
nnoremap <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <C-T> :bd<CR>
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
nmap <leader>g : tselect <C-R>=expand("<cword>")<CR><CR>
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"  
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"    
nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-.>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-.>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-.>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-.>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-.>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-.>d :cs find d <C-R>=expand("<cword>")<CR><CR>
