let g:airline#themes#uniwatch#palette = {}

function! airline#themes#uniwatch#refresh()
  let g:airline#themes#uniwatch#palette.accents = {
        \ 'red': airline#themes#get_highlight('Constant'),
        \ }

  let s:N1 = airline#themes#get_highlight2(['Normal', 'bg'], ['DiffAdd', 'fg'], 'none')
  let s:N2 = airline#themes#get_highlight('Pmenu')
  let s:N3 = airline#themes#get_highlight('CursorLine')
  let g:airline#themes#uniwatch#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

  let group = airline#themes#get_highlight('vimCommand')
  let g:airline#themes#uniwatch#palette.normal_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }

  let s:I1 = airline#themes#get_highlight2(['Normal', 'bg'], ['DiffLine', 'fg'], 'none')
  let s:I2 = airline#themes#get_highlight2(['MoreMsg', 'fg'], ['Normal', 'bg'])
  let s:I3 = s:N3
  let g:airline#themes#uniwatch#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#uniwatch#palette.insert_modified = g:airline#themes#uniwatch#palette.normal_modified

  let s:R1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Error', 'fg'], 'none')
  let s:R2 = s:N2
  let s:R3 = s:N3
  let g:airline#themes#uniwatch#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#uniwatch#palette.replace_modified = g:airline#themes#uniwatch#palette.normal_modified

  let s:V1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Statement', 'fg'], 'none')
  let s:V2 = airline#themes#get_highlight2(['Constant', 'fg'], ['Normal', 'bg'])
  let s:V3 = s:N3
  let g:airline#themes#uniwatch#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#uniwatch#palette.visual_modified = g:airline#themes#uniwatch#palette.normal_modified

  let s:IA = airline#themes#get_highlight2(['NonText', 'fg'], ['CursorLine', 'bg'])
  let g:airline#themes#uniwatch#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#uniwatch#palette.inactive_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }
endfunction

call airline#themes#uniwatch#refresh()

