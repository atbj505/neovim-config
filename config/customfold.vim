" 代码折叠设置
" fu! CustomFoldText()
  " "get first non-blank line
  " let fs = v:foldstart
  " while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
  " endwhile
  " if fs > v:foldend
    " let line = getline(v:foldstart)
  " else
    " let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
  " endif
  " let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
  " let foldSize = 1 + v:foldend - v:foldstart
  " let foldSizeStr = " " . foldSize . " lines "
  " let foldLevelStr = repeat("+--", v:foldlevel)
  " let lineCount = line("$")
  " let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "
  " let expansionString = repeat(".", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
  " return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
" endf
" set foldtext=CustomFoldText()

function! MyFoldText() " {{{
  let line = getline(v:foldstart)
  let nucolwidth = &fdc + &number * &numberwidth
  let windowwidth = winwidth(0) - nucolwidth - 3
  let foldedlinecount = v:foldend - v:foldstart

  " expand tabs into spaces
  let onetab = strpart('          ', 0, &tabstop)
  let line = substitute(line, '\t', onetab, 'g')

  let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
  let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines')
  return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . ' Lines '
endfunction " }}}

set foldtext=MyFoldText()
