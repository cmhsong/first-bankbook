#!/bin/sh
# index.html(본문)에 문서 머리말을 붙여 GitHub Pages용 docs/index.html을 만든다.
cd "$(dirname "$0")" && mkdir -p docs && {
  printf '%s\n' '<!doctype html>' '<html lang="ko">' '<head>' '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">' \
    '<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>'
  cat index.html
  printf '%s\n' '</html>'
} > docs/index.html
