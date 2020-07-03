syntax on
set noshowmatch
set guicursor=
set relativenumber
set hlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set ignorecase
set mouse=a
" set spell
" set spelllang=en_us
set backspace=indent,eol,start
set t_Co=256
"Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"  I AM SO SORRY FOR DOING COLOR SCHEMES IN MY VIMRC, BUT I HAVE
"  TOOOOOOOOOOOOO
Plug 'dracula/vim'
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
"Plug 'morhetz/gruvbox'
Plug 'crusoexia/vim-monokai'
" Plug 'phanviet/vim-monokai-pro'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug '/home/mpaulson/personal/vim-be-good'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'jiangmiao/auto-pairs'
Plug 'tell-k/vim-autopep8'
Plug 'dart-lang/dart-vim-plugin'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/taglist.vim'
call plug#end()
let g:coc_node_path = '/usr/bin/nodejs'
let g:gruvbox_contrast_dark = 'medium'
" --- The Greatest plugin of all time.  I am not bias
let g:vim_be_good_floating = 1
" --- ctrlp
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
""*/tags,**/tags"
set wildignore+=*/tmp/*,*.so,*\\tmp\\*,*.swp,*.zip,*.exe
set wildignore+=build*/**,oe*/**,*env*/**,tags
" --- Tlist position ---
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow =0
let Tlist_Auto_Open = 0
let Tlist_Use_Right_Window = 1
" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1
" --- coc
let g:coc_disable_startup_warning = 1
" --- vim python
let python_highlight_all = 1
let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff=1
"  --- bracket rainbow
" let g:rainbow_active = 1
" --- netrw
let g:netrw_liststyle=3
let g:netrw_altv = 1
colorscheme gruvbox
"colorscheme dracula
" colorscheme monokai
set background=dark
if executable('rg')
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
    let g:rg_derive_root='true'
endif
let loaded_matchparen = 1
let mapleader = " "
let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg!<SPACE>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>
" nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader><CR> :so ~/.vimrc<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nmap <F1> v[{vv}]zf
nmap <F9> :Tlist<CR>
nnoremap <F5> :!ctags -R --exclude=oe-logs --exclude=oe-workdir<CR>
nnoremap <F6> :set tags=$PWD/tags<CR>
nnoremap <F3> :vimgrep /<C-r><C-w>/gj **/*<CR>
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>

autocmd Filetype cpp setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
"autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
"autocmd FileType python set equalprg=autopep8\ -
set tags=/home/sungmoyang/01_PRJ/server/01_PRJ/seetv/src/audiod-pro/tags,/home/sungmoyang/01_PRJ/server/01_PRJ/seetv/src/audiooutputd-pro/tags,/home/sungmoyang/01_PRJ/server/01_PRJ/seetv/src/umi-pro/tags,/home/jungyongchoi/oe-server2/code_jcl4tv/legacy-broadcast/tags,/home/jungyongchoi/unittest/tags,/home/sungmoyang/01_PRJ/server/01_PRJ/seetv/src/arccontroller/tags
" set tags+=/home/jungyongchoi/oe-server2/code_jcl4tv/**/tags
" set tags+=/home/jungyongchoi/oe-server2/meta-lg-webos/automation_ccc/tags
" Vim with me
" nnoremap <leader>vwm :colorscheme gruvbox<bar>:set background=dark<CR>
" nmap <leader>vtm :highlight Pmenu ctermbg=gray guibg=gray
vnoremap X "_d
inoremap <C-c> <esc>
function! s:check_back_space() abort
 let col = col('.') - 1
     return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <C-space> coc#refresh()
" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart
" Sweet Sweet FuGITive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
" noremap <C-c> "+y
"noremap yy "+yy
"noremap y "+y
"noremap Y "+y$
"noremap x "+x
"noremap D "+D
"noremap dd "+dd
set clipboard=unnamedplus
set relativenumber
" autocmd BufWritePre <buffer> %s/\s\+$//e
" ---- gnome
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' |
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --ignore-case '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)
autocmd BufWritePre * :call TrimWhitespace()
"autocmd BufWritePre * :call system("ctags -R")
