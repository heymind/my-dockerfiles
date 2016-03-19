ENABLES=' '$ENABLES

function is_enable(){
  echo $ENABLES|grep ' '$1>>/dev/null 2>&1;
  return $?;
}

if is_enable rust;then
  
fi
