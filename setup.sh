#!/bin/bash
ENABLES=' '$ENABLES

function is_enable(){
  echo $ENABLES|grep ' '$1>>/dev/null 2>&1;
  return $?;
}

if is_enable rust;then
  (curl -sSf https://static.rust-lang.org/rustup.sh | sh)&
fi

if is_enable custom-vim-config;then
  mkdir workspace;
  (git clone https://github.com/heymind/my-vim.git)&
fi



wetty -p 4000&
/run.sh
