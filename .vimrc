syn on
set nocompatible
set hls is
colorscheme desert
"colorscheme molokai
set autoindent
set smartindent

set mouse=a 
let Tlist_Use_Right_Window=1 
let Tlist_File_Fold_Auto_Close=1 
map <F4> :TlistToggle<CR> 
noremap <F6> :make<CR> 
noremap <S-F6> :make clean;make<CR> 
noremap <F7> :Tlist<CR> 
noremap <S-F7> :TlistSync<CR> 
noremap <F3> :!./vitags.sh<CR>:cs reset<CR> 
noremap <S-F3> :!cvs up<CR> 
"nnoremap <space> @=( ( foldclosed(line('.')) < 0 ) ? 'zc' : 'zo')<CR>
if has("multi_byte") 
set encoding=utf-8 
set fileencoding=chinese 
set fileencodings=ucs-bom,utf-8,chinese 
endif 
set wrap 
filetype plugin on

filetype plugin on 
filetype indent on

if has("cscope") 
set csprg=/usr/bin/cscope 
set csto=0 
set cst 
set nocsverb 
" add any database in current directory 
if filereadable("cscope.out") 
cs add cscope.out 
" else add database pointed to by environment 
elseif $CSCOPE_DB != "" 
cs add $CSCOPE_DB 
endif 
set csverb 
set cscopetag 
endif

set nu 
set ts=4 
set sw=4

set ru 
set cin 
set cino=:0g0t0(sus

set autoread " read open files again when changed outside Vim 
map <C-F12> :!ctags -R --c-kinds=+p --fields=+iaS --extra=+q .<CR> 
map <C-F11> :!ctags -R .<CR>

let Tlist_Auto_Open=1
let Tlist_Show_One_File=1     "不同时显示多个文件的tag，只显示当前文件的    
let Tlist_Exit_OnlyWindow=1   "如果taglist窗口是最后一个窗口，则退出vim   
let Tlist_Ctags_Cmd="/usr/bin/ctags" "将taglist与ctags关联  
