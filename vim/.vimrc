" remap the command start character to ;
:nmap ; :

" turn on syntax highlighting
syntax on

" set the colorscheme
colo evening

set backspace=indent,eol,start

" turn on line numbering
set number
set relativenumber

" set folding to indentation
set foldmethod=indent
set nofoldenable

" set max line length before wrap
set textwidth=120

" setup tabs and tab labels
set showtabline=2
set tabline=%!MyTabLine()

function MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " select the highlighting
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif

    " set the tab page number
    let s .= '%' . (i + 1) . 'T'

    " the tab labels are generated by MyTabLabel()
    let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
  endfor

  " after the alst tab fill with TabLineFill and reset tab page nr
  let s .= '%#TabLineFill#%T'

  " right-align the label to close the current tab page
  if tabpagenr('$') > 1
    let s .= '%=%#TabLine#%999Xclose'
  endif

  return s
endfunction

function MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)

  " add the tab number to the label
  let tablabel = a:n . ') '

  " add the buffer name to the label
  let tabname = bufname(buflist[winnr - 1])
  if tabname == ''
    let tabname = '[No Name]'
  endif
  " get just the filename part if tabname is a path
  let tabname = fnamemodify(tabname, ':p:t')
  let tablabel .= tabname

  return tablabel
endfunction
