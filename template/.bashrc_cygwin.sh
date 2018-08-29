alias open="cygstart"
alias ifconfig="ipconfig"

npp (){
  /cygdrive/c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe "$(cygpath -w "$*")" &
}
