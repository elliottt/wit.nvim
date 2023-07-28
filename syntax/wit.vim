
syn match witIdent              "\<[a-z][a-zA-Z0-9-]*"

" Keyword definitions.
syn keyword witPackage          package
syn keyword witInterface        interface
syn keyword witWorld            world
syn keyword witImport           import
syn keyword witExport           export
syn keyword witUse              use
syn keyword witType             type flags record enum
syn keyword witPrim             u8 u16 u32 u64 string option list result func tuple

" Comments
syn match   witLineComment      "//.*"
syn region  witBlockComment     start="/\*"  end="\*/" contains=witBlockComment

syn sync lines=100

if !exists("did_wit_syntax_inits")
  let did_wit_syntax_inits = 1

  hi link witPackage                      Keyword
  hi link witInterface                    Keyword
  hi link witWorld                        Keyword
  hi link witImport                       Keyword
  hi link witExport                       Keyword
  hi link witUse                          Keyword
  hi link witType                         Struct
  hi link witPrim                         Type

  hi link witBlockComment                 witComment
  hi link witLineComment                  witComment
  hi link witComment                      Comment
endif

let b:current_syntax = "wit"
