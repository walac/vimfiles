" Custom darker formatter for vim-codefmt

let s:plugin = maktaba#plugin#Get('codefmt')

function! s:GetDarkerFormatter() abort
  let l:formatter = {
      \ 'name': 'darker',
      \ 'setup_instructions': 'Install darker (https://pypi.org/project/darker/).'}

  function l:formatter.IsAvailable() abort
    return executable('darker')
  endfunction

  function l:formatter.AppliesToBuffer() abort
    return codefmt#formatterhelpers#FiletypeMatches(&filetype, 'python')
  endfunction

  function l:formatter.Format() abort
    let l:executable = 'darker'
    call codefmt#formatterhelpers#Format([
        \ l:executable,
        \ '--stdout',
        \ '--stdin-filename',
        \ expand('%:p'),
        \ '-r', 'HEAD..:STDIN:',
        \ '-l', '100',
        \ '-'])
  endfunction

  return l:formatter
endfunction

call s:plugin.GetExtensionRegistry().AddExtension(s:GetDarkerFormatter())
