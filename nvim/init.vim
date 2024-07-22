lua require('init')

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Vim-plug
" if has('vim_starting')
"     set rtp+=~/.vim/plugged/vim-plug
"     if !isdirectory(expand('~/.config/nvim/plugged/vim-plug'))
"         echo 'install vim-plug...'
"         call system('mkdir -p ~/.config/nvim/plugged/vim-plug')
"         call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
"     end
" endif

" call plug#begin('~/.config/nvim/plugged')
"     Plug 'junegunn/vim-plug', {'dir': '~/.config/nvim/plugged/vim-plug/autoload'}
"     Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
"     Plug 'scrooloose/syntastic'
"     Plug 'Shougo/vimproc.vim', {'do': 'make'}
"     Plug 'kana/vim-operator-user'
"     Plug 'rhysd/vim-clang-format'
"     Plug 'tyru/caw.vim'

"     Plug 'prabirshrestha/async.vim'
"     Plug 'prabirshrestha/vim-lsp'
" call plug#end()

" """"""""" deoplete
" let g:deoplete#enable_at_startup = 1
" if !exists('g:deoplete#omni#input_patterns')
"   let g:deoplete#omni#input_patterns = {}
" endif
" " let g:deoplete#disable_auto_complete = 1
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" " deoplete tab-complete
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


" """"""""" syntastic settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" """"""""" caw.vim
" " C-c でコメントアウト
" nmap <C-c> <Plug>(caw:I:toggle)
" vmap <C-c> <Plug>(caw:I:toggle)

" """"""""" vim-lsp clangd
" let g:lsp_log_verbose = 1
" let g:lsp_log_file = expand('~/vim-lsp.log')
" call lsp#register_server({
"     \ 'name': '/usr/lib/llvm-6.0/bin/clangd',
"     \ 'cmd': {server_info->['clangd']},
"     \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
"     \ })

" " オムニ補完設定
" autocmd FileType typescript setlocal omnifunc=lsp#complete

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" " set cursorline
" " hi CursorLineNr term=bold cterm=NONE ctermfg=203 ctermbg=NONE
" " hi clear CursorLine

" autocmd ColorScheme * highlight LineNr ctermfg=255
" colorscheme elflord

" nnoremap <ESC><ESC> :nohl<Return>

" " escape from insert mode
" inoremap <silent> jj <ESC>
" inoremap <silent> kk <ESC>

" " cursor moving in insert mode
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-h> <Left>
" inoremap <C-l> <Right>
" inoremap <C-a> <ESC>I
" inoremap <C-e> <ESC>A

" tnoremap <Esc> <C-\><C-n>


" " TAB settings
" " {{{
" " Anywhere SID.
" function! s:SID_PREFIX()
"   return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
" endfunction

" " Set tabline.
" function! s:my_tabline()  "{{{
"   let s = ''
"   for i in range(1, tabpagenr('$'))
"     let bufnrs = tabpagebuflist(i)
"     let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
"     let no = i  " display 0-origin tabpagenr.
"     let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
"     let title = fnamemodify(bufname(bufnr), ':t')
"     let title = '[' . title . ']'
"     let s .= '%'.i.'T'
"     let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
"     let s .= no . ':' . title
"     let s .= mod
"     let s .= '%#TabLineFill# '
"   endfor
"   let s .= '%#TabLineFill#%T%=%#TabLine#'
"   return s
" endfunction "}}}
" let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
" set showtabline=2 " 常にタブラインを表示

" " The prefix key.
" nnoremap    [Tag]   <Nop>
" nmap    t [Tag]
" " Tab jump
" for n in range(1, 9)
"   execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
" endfor
" " t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ

" map <silent> [Tag]c :tablast <bar> tabnew<CR>
" " tc 新しいタブを一番右に作る
" map <silent> [Tag]x :tabclose<CR>
" " tx タブを閉じる
" map <silent> [Tag]n :tabnext<CR>
" " tn 次のタブ
" map <silent> [Tag]p :tabprevious<CR>
" " tp 前のタブ
" " }}}
" "
