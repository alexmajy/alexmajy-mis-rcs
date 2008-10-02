set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

" Languages settings, the setting assume you are working with windows xp
" simple chinese edition.
language messages en
set guioptions=egm
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" my vim settings start here
syntax on
colorscheme desert 

" to maximize the window
au GUIEnter * simalt ~x
set laststatus=2

" set backupdir=.,c:\tmp,c:\temp
set backupdir=c:\tmp,c:\temp,.

" set clipboard equal unnamed
set clipboard=unnamed

let Tlist_Ctags_Cmd = 'D:\utils\ctags57\ctags.exe'

" configure for winmanager
let g:winManagerWindowsLayout = 'FileExplorer,TagList'
"nmap wm :WMToggle<cr>
nmap nt :NERDTree<cr>

" configure for miniBufExp plug-in
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1

" configure for A.vim
let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc'


