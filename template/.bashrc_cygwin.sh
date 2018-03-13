alias open="cygstart"

npp (){
  /cygdrive/c/Program\ Files/Notepad++/notepad++.exe "$(cygpath -w "$*")" &
}
