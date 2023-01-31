Config { font = "-misc-fixed-*-*-*-*-12-*-*-*-*-*-*-*"
  , borderColor = "#282a36"
  , border = TopB
  , bgColor = "#282a36"
  , fgColor = "#f8f8f2"
  , alpha = 255
  , position = TopW L 102
  , allDesktops = True
  , overrideRedirect = True
  , commands = [
      Run Cpu ["-L","3","-H","50", "--normal","green","--high","red"] 10
    , Run Battery ["-t", "Batt: <left>%", "--", "-h", "green", "yellow", "-l", "red"] 10
    , Run Memory ["-t","Mem: <usedratio>%"] 10
    , Run Swap [] 10
    , Run Date "%a %Y-%m-%d %H:%M:%S" "date" 10
    , Run StdinReader
  ]
  , sepChar = "%"
  , alignSep = "}{"
  , template = "%StdinReader% }{ %cpu% | %memory% | %battery% | <fc=#ffb86c>%date%</fc>"
}
