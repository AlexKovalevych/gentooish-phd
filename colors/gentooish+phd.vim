
set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "gentooish+phd"

" Very aggressive
"let s:orange = '#f0a000'
"let s:orange = '#b08060'
let s:violet = '#99699c'
let s:light_violet = '#a989ac'
let s:yellow = '#e3d756'
let s:red = '#d07346'
let s:darkgreen = '#80a050'
let s:green = '#99bf52'
let s:lightgreen = '#e2e9af'
let s:darkblue = '#32698f'
let s:blue = '#5299bf'
let s:lightblue = '#72b9bf'
let s:light_orange = '#fbd461'
let s:orange = '#bba401'
let s:grey = '#808080'

let s:text = '#e0e0e0'
let s:text_hl = '#ffffff'
let s:text_minor = '#909090'
let s:text_very_minor = '#304050'

let s:greyed = '#687898'

let s:popup_bg = '#101010'
let s:popup_bg_hl = '#000000'
let s:popup_fg = s:text
let s:popup_fg_hl = s:text_hl

let s:bg = '#061229'
let s:bg_hl_soft = '#1e293e'
let s:bg_hl = '#324454'
let s:bg_minor = '#030a17'

let s:structure =  '#76cc68'
let s:constant1 = '#c08040'
let s:constant2 = '#d2852b'
let s:constant3 = '#f2a54b'
let s:control1 = '#f9f7a4'
let s:control2 = '#c9b794'
" '#76cc68'
let s:border1_bg = s:bg_hl
let s:border1_fg = s:text_minor
let s:func = '#96b2cc'



if version >= 700
  "Tabpages
  exe 'hi TabLineSel   guifg='.s:text_hl           .' guibg='.s:border1_bg      .' gui=underline'
  exe 'hi TabLine      guifg='.s:text_minor        .' guibg='.s:bg      .' gui=underline'
  exe 'hi TabLineFill  guifg='.s:text_minor        .' guibg='.s:bg      .' gui=none'

  "P-Menu (auto-completion)
  "hi Pmenu guifg=#605958 guibg=#101418 gui=none
  "hi PmenuSel guifg=#a09998 guibg=#404040 gui=underline
  exe 'hi CursorLine    guibg='.s:bg_hl_soft     .' gui=none'
  exe 'hi CursorColumn  guibg='.s:bg_hl_soft     .' gui=none'
  exe 'hi MatchParen    guifg='.s:text_hl           .' guibg='.s:bg_hl     .' gui=bold'

  exe 'hi Pmenu         guifg='.s:text              .' guibg='.s:popup_bg      .' gui=none'
  exe 'hi PmenuSel      guifg='.s:text_hl           .' guibg='.s:popup_bg_hl   .' gui=bold'
  exe 'hi PmenuSbar                                    guibg='.s:popup_bg_hl
  exe 'hi PmenuThumb    guifg='.s:text
endif

exe 'hi Visual guibg='.s:bg_hl

"hi Cursor guifg=NONE guibg=#586068
hi Cursor guibg=#b0d0f0

exe 'hi Normal         guifg='.s:text              .' guibg='.s:bg
"exe 'hi Underlined     guifg='.s:white             .' guibg='.s:darkgrey        .' gui=underline'
exe 'hi NonText        guifg='.s:text_very_minor   .' guibg='.s:bg
exe 'hi SpecialKey     guifg='.s:text_very_minor              .' guibg='.s:bg

exe 'hi LineNr         guifg='.s:border1_fg        .' guibg='.s:border1_bg      .' gui=none'
exe 'hi StatusLine     guifg='.s:text_hl           .' guibg='.s:border1_bg      .' gui=underline'
exe 'hi StatusLineNC   guifg='.s:text_minor        .' guibg='.s:border1_bg      .' gui=underline'
exe 'hi VertSplit      guifg='.s:border1_bg        .' guibg='.s:border1_bg      .' gui=none'

exe 'hi Folded         guifg='.s:text_minor         .' guibg='.s:border1_bg  .' gui=none'
exe 'hi FoldColumn     guifg='.s:text_minor         .' guibg='.s:border1_bg  .' gui=none'
exe 'hi SignColumn     guifg='.s:text_minor         .' guibg='.s:border1_bg  .' gui=none'

exe 'hi Comment        guifg='.s:greyed            .' guibg='.s:bg        .' gui=none'
exe 'hi TODO           guifg='.s:greyed            .' guibg='.s:bg        .' gui=bold'

exe 'hi Title          guifg='.s:red               .' guibg='.s:bg        .' gui=underline'

exe 'hi Constant       guifg='.s:constant1        .' guibg='.s:bg        .' gui=none'
exe 'hi String         guifg='.s:constant2        .' guibg='.s:bg        .' gui=none'
exe 'hi Special        guifg='.s:constant3        .' guibg='.s:bg        .' gui=none'

exe 'hi Identifier     guifg='.s:control1          .' guibg='.s:bg        .' gui=none'
exe 'hi Statement      guifg='.s:control2          .' guibg='.s:bg        .' gui=none'
"exe 'hi Conditional    guifg='.s:grey             .' guibg='.s:bg        .' gui=bold'
"exe 'hi Repeat         guifg='.s:light_orange             .' guibg='.s:bg        .' gui=bold'
exe 'hi Structure      guifg='.s:structure         .' guibg='.s:bg        .' gui=none'
exe 'hi Function       guifg='.s:func      .' guibg='.s:bg        .' gui=none'

exe 'hi PreProc        guifg='.s:light_violet           .' guibg='.s:bg        .' gui=none'
exe 'hi Define         guifg='.s:light_violet           .' guibg='.s:bg        .' gui=none'
exe 'hi Operator       guifg='.s:light_orange      .' guibg='.s:bg        .' gui=none'
exe 'hi Type           guifg='.s:yellow            .' guibg='.s:bg        .' gui=none'

"hi Macro guifg=#a0b0c0 gui=underline

"Tabs, trailing spaces, etc (lcs)
"hi SpecialKey guifg=#808080 guibg=#343434

"hi TooLong guibg=#ff0000 guifg=#f8f8f8

hi Search guifg=#606000 guibg=#c0c000 gui=bold

hi Directory guifg=#dad085 gui=NONE
hi Error guibg=#602020

hi Normal gui=NONE   guifg=#cccccc   guibg=#191919 ctermfg=252 ctermbg=234
hi IncSearch gui=NONE   guifg=#000000   guibg=#8bff95 term=reverse ctermfg=16 ctermbg=120
hi Search gui=NONE   guifg=#cccccc   guibg=#863132 term=reverse ctermfg=252 ctermbg=95
hi ErrorMsg gui=NONE   guifg=#cccccc   guibg=#863132 term=standout ctermfg=252 ctermbg=95
hi WarningMsg gui=NONE   guifg=#cccccc   guibg=#863132 term=standout ctermfg=252 ctermbg=95
hi ModeMsg gui=NONE   guifg=#cccccc   guibg=NONE term=bold ctermfg=252
hi MoreMsg gui=NONE   guifg=#cccccc   guibg=NONE term=bold ctermfg=252
hi Question gui=NONE   guifg=#cccccc   guibg=NONE term=standout ctermfg=252
hi StatusLine gui=BOLD   guifg=#cccccc   guibg=#333333 term=bold,reverse cterm=bold ctermfg=252 ctermbg=236
hi User1 gui=BOLD   guifg=#999999   guibg=#333333 cterm=bold ctermfg=246 ctermbg=236
hi User2 gui=BOLD   guifg=#8bff95   guibg=#333333 cterm=bold ctermfg=120 ctermbg=236
hi StatusLineNC gui=NONE   guifg=#999999   guibg=#333333 term=reverse cterm=bold ctermfg=240 ctermbg=236
hi VertSplit gui=NONE   guifg=#cccccc   guibg=#333333 term=reverse ctermfg=252 ctermbg=236
hi WildMenu gui=BOLD   guifg=#cf7dff   guibg=#1F0F29 term=standout cterm=bold ctermfg=177 ctermbg=16
hi DiffText gui=NONE   guifg=#000000  guibg=#4cd169 term=reverse ctermfg=16 ctermbg=77
hi DiffChange gui=NONE   guifg=NONE     guibg=#541691 term=bold ctermbg=54
hi DiffDelete gui=NONE   guifg=#cccccc  guibg=#863132 term=bold ctermfg=252 ctermbg=95
hi DiffAdd gui=NONE   guifg=#cccccc  guibg=#306d30 term=bold ctermfg=252 ctermbg=59
hi Cursor gui=NONE   guifg=#000000   guibg=#8bff95 ctermfg=16 ctermbg=120
hi Folded gui=NONE   guifg=#aaa400   guibg=#000000 term=standout ctermfg=142 ctermbg=16
hi FoldColumn gui=NONE   guifg=#cccccc   guibg=#000000 term=standout ctermfg=252 ctermbg=16
hi Directory gui=NONE   guifg=#8bff95   guibg=NONE term=bold ctermfg=120
hi LineNr gui=NONE   guifg=#bbbbbb   guibg=#222222 term=underline ctermfg=250 ctermbg=235
hi NonText gui=NONE   guifg=#555555   guibg=NONE term=bold ctermfg=240
hi SpecialKey gui=NONE   guifg=#6f6f2f   guibg=NONE term=bold ctermfg=58
hi Title gui=NONE   guifg=#9a383a   guibg=NONE term=bold ctermfg=95
hi Comment gui=NONE   guifg=#666666   guibg=NONE term=bold ctermfg=241
hi Constant gui=NONE   guifg=#b8bb00   guibg=NONE term=underline ctermfg=142
hi Boolean gui=NONE   guifg=#00ff00   guibg=NONE ctermfg=46 ctermfg=46
hi String gui=NONE   guifg=#5dff9e   guibg=#0f291a ctermfg=85 ctermbg=16 ctermfg=85 ctermbg=16
hi Error gui=NONE   guifg=#990000   guibg=#000000 term=reverse ctermfg=88 ctermbg=16 term=reverse ctermfg=88 ctermbg=16
hi Identifier gui=NONE   guifg=#4cbbd1   guibg=NONE term=underline ctermfg=74 term=underline ctermfg=74
hi Ignore gui=NONE   guifg=#555555 ctermfg=240 ctermfg=240
hi Number gui=NONE   guifg=#ddaa66   guibg=NONE ctermfg=179 ctermfg=179
hi PreProc gui=NONE   guifg=#9a383a   guibg=NONE term=underline ctermfg=95 term=underline ctermfg=95
hi Special gui=NONE   guifg=#ffcd8b   guibg=NONE term=bold ctermfg=222 term=bold ctermfg=222
hi Statement gui=NONE   guifg=#4cd169   guibg=NONE term=bold ctermfg=77 term=bold ctermfg=77
hi Todo gui=NONE   guifg=#cccccc   guibg=#863132 term=standout ctermfg=252 ctermbg=95 term=standout ctermfg=252 ctermbg=95
hi Type gui=NONE   guifg=#c476f1   guibg=NONE term=underline ctermfg=177 term=underline ctermfg=177
hi Underlined gui=UNDERLINE   guifg=#cccccc   guibg=NONE term=underline cterm=underline ctermfg=252 term=underline cterm=underline ctermfg=252
hi Visual gui=reverse guifg=#6e4287   guibg=#ffffff term=reverse ctermfg=231 ctermbg=60
hi VisualNOS gui=NONE   guifg=#cccccc   guibg=#000000 term=bold,underline ctermfg=252 ctermbg=16
hi CursorLine gui=NONE   guifg=NONE      guibg=#222222 term=underline ctermbg=235
hi CursorColumn gui=NONE   guifg=NONE      guibg=#222222 term=reverse ctermbg=235
hi lispList gui=NONE   guifg=#555555
hi Pmenu gui=NONE   guifg=#cccccc   guibg=#222222 ctermfg=252 ctermbg=235
hi PMenuSel gui=BOLD   guifg=#c476f1   guibg=#000000
hi PmenuSbar gui=NONE   guifg=#cccccc   guibg=#000000 ctermfg=252 ctermbg=16
hi PmenuThumb gui=NONE   guifg=#cccccc   guibg=#333333 ctermfg=252 ctermbg=236
hi SpellBad gui=undercurl guisp=#cc6666 term=reverse cterm=undercurl ctermfg=167
hi SpellRare gui=undercurl guisp=#cc66cc term=reverse cterm=undercurl ctermfg=170
hi SpellLocal gui=undercurl guisp=#cccc66 term=underline cterm=undercurl ctermfg=185
hi SpellCap gui=undercurl guisp=#66cccc term=reverse cterm=undercurl ctermfg=80
hi MatchParen gui=NONE      guifg=#ffffff   guibg=#005500 term=reverse ctermfg=231 ctermbg=22
hi SpecialKey gui=NONE   guifg=#6f6f2f   guibg=NONE term=bold ctermfg=58
hi NonText gui=NONE   guifg=#555555   guibg=NONE term=bold ctermfg=240
hi Directory gui=NONE   guifg=#8bff95   guibg=NONE term=bold ctermfg=120
hi ErrorMsg gui=NONE   guifg=#cccccc   guibg=#863132 term=standout ctermfg=252 ctermbg=95
hi IncSearch gui=NONE   guifg=#000000   guibg=#8bff95 term=reverse ctermfg=16 ctermbg=120
hi Search gui=NONE   guifg=#cccccc   guibg=#863132 term=reverse ctermfg=252 ctermbg=95
hi MoreMsg gui=NONE   guifg=#cccccc   guibg=NONE term=bold ctermfg=252
hi ModeMsg gui=NONE   guifg=#cccccc   guibg=NONE term=bold ctermfg=252
hi LineNr gui=NONE   guifg=#bbbbbb   guibg=#222222 term=underline ctermfg=250 ctermbg=235
hi Question gui=NONE   guifg=#cccccc   guibg=NONE term=standout ctermfg=252
hi StatusLine gui=BOLD   guifg=#cccccc   guibg=#333333 term=bold,reverse cterm=bold ctermfg=252 ctermbg=236
hi StatusLineNC gui=NONE   guifg=#999999   guibg=#333333 term=reverse cterm=bold ctermfg=240 ctermbg=236
hi VertSplit gui=NONE   guifg=#cccccc   guibg=#333333 term=reverse ctermfg=252 ctermbg=236
hi Title gui=NONE   guifg=#9a383a   guibg=NONE term=bold ctermfg=95
hi Visual gui=reverse guifg=#6e4287   guibg=#ffffff term=reverse ctermfg=231 ctermbg=60
hi VisualNOS gui=NONE   guifg=#cccccc   guibg=#000000 term=bold,underline ctermfg=252 ctermbg=16
hi WarningMsg gui=NONE   guifg=#cccccc   guibg=#863132 term=standout ctermfg=252 ctermbg=95
hi WildMenu gui=BOLD   guifg=#cf7dff   guibg=#1F0F29 term=standout cterm=bold ctermfg=177 ctermbg=16
hi Folded gui=NONE   guifg=#aaa400   guibg=#000000 term=standout ctermfg=142 ctermbg=16
hi FoldColumn gui=NONE   guifg=#cccccc   guibg=#000000 term=standout ctermfg=252 ctermbg=16
hi DiffAdd gui=NONE   guifg=#cccccc  guibg=#306d30 term=bold ctermfg=252 ctermbg=59
hi DiffChange gui=NONE   guifg=NONE     guibg=#541691 term=bold ctermbg=54
hi DiffDelete gui=NONE   guifg=#cccccc  guibg=#863132 term=bold ctermfg=252 ctermbg=95
hi DiffText gui=NONE   guifg=#000000  guibg=#4cd169 term=reverse ctermfg=16 ctermbg=77
hi SignColumn  term=standout ctermfg=51 ctermbg=250
hi SignColumn  term=standout ctermfg=51 ctermbg=250
hi TabLine  term=underline cterm=underline ctermbg=248
hi TabLine  term=underline cterm=underline ctermbg=248
hi TabLineSel  term=bold cterm=bold
hi TabLineSel  term=bold cterm=bold
hi TabLineFill  term=reverse ctermfg=234 ctermbg=252
hi TabLineFill  term=reverse ctermfg=234 ctermbg=252
hi CursorColumn gui=NONE   guifg=NONE      guibg=#222222 term=reverse ctermbg=235
hi CursorLine gui=NONE   guifg=NONE      guibg=#222222 term=underline ctermbg=235
hi Cursor gui=NONE   guifg=#000000   guibg=#8bff95 ctermfg=16 ctermbg=120
hi lCursor  ctermfg=234 ctermbg=252
hi lCursor  ctermfg=234 ctermbg=252
hi Normal gui=NONE   guifg=#cccccc   guibg=#191919 ctermfg=252 ctermbg=234
hi Comment gui=NONE   guifg=#666666   guibg=NONE term=bold ctermfg=241
hi Constant gui=NONE   guifg=#b8bb00   guibg=NONE term=underline ctermfg=142
hi Special gui=NONE   guifg=#ffcd8b   guibg=NONE term=bold ctermfg=222 term=bold ctermfg=222
hi Identifier gui=NONE   guifg=#4cbbd1   guibg=NONE term=underline ctermfg=74 term=underline ctermfg=74
hi Statement gui=NONE   guifg=#4cd169   guibg=NONE term=bold ctermfg=77 term=bold ctermfg=77
hi PreProc gui=NONE   guifg=#9a383a   guibg=NONE term=underline ctermfg=95 term=underline ctermfg=95
hi Type gui=NONE   guifg=#c476f1   guibg=NONE term=underline ctermfg=177 term=underline ctermfg=177
hi Underlined gui=UNDERLINE   guifg=#cccccc   guibg=NONE term=underline cterm=underline ctermfg=252 term=underline cterm=underline ctermfg=252
hi Ignore gui=NONE   guifg=#555555 ctermfg=240 ctermfg=240
hi Error gui=NONE   guifg=#990000   guibg=#000000 term=reverse ctermfg=88 ctermbg=16 term=reverse ctermfg=88 ctermbg=16
hi Todo gui=NONE   guifg=#cccccc   guibg=#863132 term=standout ctermfg=252 ctermbg=95 term=standout ctermfg=252 ctermbg=95
hi String gui=NONE   guifg=#5dff9e   guibg=#0f291a ctermfg=85 ctermbg=16 ctermfg=85 ctermbg=16
hi Number gui=NONE   guifg=#ddaa66   guibg=NONE ctermfg=179 ctermfg=179
hi Boolean gui=NONE   guifg=#00ff00   guibg=NONE ctermfg=46 ctermfg=46
hi Special gui=NONE   guifg=#ffcd8b   guibg=NONE term=bold ctermfg=222 term=bold ctermfg=222
hi Identifier gui=NONE   guifg=#4cbbd1   guibg=NONE term=underline ctermfg=74 term=underline ctermfg=74
hi Statement gui=NONE   guifg=#4cd169   guibg=NONE term=bold ctermfg=77 term=bold ctermfg=77
hi PreProc gui=NONE   guifg=#9a383a   guibg=NONE term=underline ctermfg=95 term=underline ctermfg=95
hi Type gui=NONE   guifg=#c476f1   guibg=NONE term=underline ctermfg=177 term=underline ctermfg=177
hi Underlined gui=UNDERLINE   guifg=#cccccc   guibg=NONE term=underline cterm=underline ctermfg=252
hi Ignore gui=NONE   guifg=#555555 ctermfg=240 ctermfg=240
hi Error gui=NONE   guifg=#990000   guibg=#000000 term=reverse ctermfg=88 ctermbg=16 term=reverse ctermfg=88 ctermbg=16
hi Todo gui=NONE   guifg=#cccccc   guibg=#863132 term=standout ctermfg=252 ctermbg=95 term=standout ctermfg=252 ctermbg=95
hi String gui=NONE   guifg=#5dff9e   guibg=#0f291a ctermfg=85 ctermbg=16 ctermfg=85 ctermbg=16
hi Number gui=NONE   guifg=#ddaa66   guibg=NONE ctermfg=179 ctermfg=179
hi Boolean gui=NONE   guifg=#00ff00   guibg=NONE ctermfg=46 ctermfg=46
hi User1 gui=BOLD   guifg=#999999   guibg=#333333 cterm=bold ctermfg=246 ctermbg=236
hi User2 gui=BOLD   guifg=#8bff95   guibg=#333333 cterm=bold ctermfg=120 ctermbg=236
if v:version >= 700
    hi SpellBad gui=undercurl guisp=#cc6666 term=reverse cterm=undercurl ctermfg=167
    hi SpellCap gui=undercurl guisp=#66cccc term=reverse cterm=undercurl ctermfg=80
    hi SpellRare gui=undercurl guisp=#cc66cc term=reverse cterm=undercurl ctermfg=170
    hi SpellLocal gui=undercurl guisp=#cccc66 term=underline cterm=undercurl ctermfg=185
    hi Pmenu gui=NONE   guifg=#cccccc   guibg=#222222 ctermfg=252 ctermbg=235
    hi PmenuSel  cterm=bold ctermfg=177 ctermbg=16
    hi PmenuSel  cterm=bold ctermfg=177 ctermbg=16
    hi PmenuSbar gui=NONE   guifg=#cccccc   guibg=#000000 ctermfg=252 ctermbg=16
    hi PmenuThumb gui=NONE   guifg=#cccccc   guibg=#333333 ctermfg=252 ctermbg=236
    hi MatchParen gui=NONE      guifg=#ffffff   guibg=#005500 term=reverse ctermfg=231 ctermbg=22
endif


" Plugins

"exe 'hi TagListFileName  guifg='.s:lightgrey               .' guibg='.s:darkgrey        .' gui=underline'
"exe 'hi TagListTitle  guifg='.s:mid_grey_blue               .' guibg='.s:darkgrey        .' gui=italic'
