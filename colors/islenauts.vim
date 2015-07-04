"
" Name: islenauts.vim
" URL:  https://github.com/MakeNowJust/islenauts-vim
" License: MIT <https://makenowjust.github.com/license/mit?2015>
"

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = expand('<sfile>:t:r')

let s:black    = "#162324"
let s:white    = "#EDF2F2"
let s:gray1    = "#B5C9C9"
let s:gray2    = "#839191"
let s:gray3    = "#565959"
let s:gray4    = "#262727"
let s:red      = "#F04341"
let s:green    = "#A4FA87"
let s:yellow   = "#F0E09E"
let s:magenta  = "#F06EE2"
let s:blue     = "#7377FA"
let s:cyan     = "#74E3DA"

function! s:RgbTo256(color)
  let l:r = str2nr(a:color[1:2], 16) * 6 / 256
  let l:g = str2nr(a:color[3:4], 16) * 6 / 256
  let l:b = str2nr(a:color[5:6], 16) * 6 / 256

  return l:r * 36 + l:g * 6 + l:b + 16
endfunction

let s:black_256   = s:RgbTo256(s:black)
let s:white_256   = s:RgbTo256(s:white)
let s:gray1_256   = s:RgbTo256(s:gray1)
let s:gray2_256   = s:RgbTo256(s:gray2)
let s:gray3_256   = 240
let s:gray4_256   = 235
let s:red_256     = s:RgbTo256(s:red)
let s:green_256   = s:RgbTo256(s:green)
let s:yellow_256  = s:RgbTo256(s:yellow)
let s:magenta_256 = s:RgbTo256(s:magenta)
let s:blue_256    = s:RgbTo256(s:blue)
let s:cyan_256    = s:RgbTo256(s:cyan)

exe 'hi! Normal       ctermfg=' . s:white_256   . ' guifg=' . s:white   . ' ctermbg=' . s:gray3_256    . ' guibg=' . s:gray3
exe 'hi! Comment      ctermfg=' . s:gray2_256   . ' guifg=' . s:gray2
exe 'hi! Constant     ctermfg=' . s:yellow_256  . ' guifg=' . s:yellow
exe 'hi! Identifier   ctermfg=' . s:blue_256    . ' guifg=' . s:blue
exe 'hi! Statement    ctermfg=' . s:green_256   . ' guifg=' . s:green
exe 'hi! PreProc      ctermfg=' . s:gray1_256   . ' guifg=' . s:gray1
exe 'hi! Type         ctermfg=' . s:green_256   . ' guifg=' . s:green
exe 'hi! Special      ctermfg=' . s:cyan_256    . ' guifg=' . s:cyan
exe 'hi! Underlined   ctermfg=' . s:cyan_256    . ' guifg=' . s:cyan     . ' cterm=none gui=none'
exe 'hi! Ignore       ctermfg=' . s:gray1_256   . ' guifg=' . s:gray1    . ' ctermbg=' . s:yellow_256  . ' guibg=' . s:yellow
exe 'hi! Todo         ctermfg=' . s:gray3_256   . ' guifg=' . s:gray3    . ' ctermbg=' . s:yellow_256  . ' guibg=' . s:yellow
exe 'hi! Error        ctermfg=' . s:gray1_256   . ' guifg=' . s:gray1    . ' ctermbg=' . s:red_256     . ' guibg=' . s:red

exe 'hi! Cursor       '                                                  . ' ctermbg=' . s:gray1_256   . ' guibg=' . s:gray1
exe 'hi! LineNr       ctermfg=' . s:magenta_256 . ' guifg=' . s:magenta  . ' ctermbg=' . s:gray4_256   . ' guibg=' . s:gray4
exe 'hi! CursorLineNr ctermfg=' . s:red_256     . ' guifg=' . s:red      . ' ctermbg=' . s:black_256   . ' guibg=' . s:black
exe 'hi! CursorLine   '                                                  . ' ctermbg=' . s:gray4_256   . ' guibg=' . s:gray4 . ' cterm=none gui=none'
exe 'hi! CursorColumn '                                                  . ' ctermbg=' . s:gray4_256   . ' guibg=' . s:gray4 . ' cterm=none gui=none'
exe 'hi! IncSearch    '                                                  . ' ctermbg=' . s:gray2_256   . ' guibg=' . s:gray1
exe 'hi! Visual       '                                                  . ' ctermbg=' . s:gray2_256   . ' guibg=' . s:gray2

hi link vimOption Identifier
hi link vimIsCommand Identifier
