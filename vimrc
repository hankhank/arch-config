set nocompatible
colorscheme koehler
syntax on
set backspace=2
set encoding=utf-8
set tabstop=4
set et
set shiftwidth=4
set incsearch
set autoindent
set smartindent
set ruler
set nobackup
set nowritebackup
set showmatch
set number
set smartcase
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set laststatus=2
set csprg=p:\cscope.exe
command Q q
map <S-Enter> O<Esc>
map <CR> o<Esc>
if has('cscope')
  set cscopetag 
  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help
  if filereadable("cscope.out")
        exe "cs add cscope.out"
  endif
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

	" Using 'CTRL-spacebar' then a search type makes the vim window
	" split horizontally, with search result displayed in
	" the new window.

	nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>

	" Hitting CTRL-space *twice* before the search type does a vertical
	" split instead of a horizontal one

	nmap <C-Space><C-Space>s
		\:vert scs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space><C-Space>g
		\:vert scs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space><C-Space>c
		\:vert scs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space><C-Space>t
		\:vert scs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space><C-Space>e
		\:vert scs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space><C-Space>i
		\:vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <C-Space><C-Space>d
		\:vert scs find d <C-R>=expand("<cword>")<CR><CR>

endif
