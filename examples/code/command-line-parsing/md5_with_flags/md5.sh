### run
  $ jbuilder build md5.exe
  Done: 3/7 (jobs: 1)                   Done: 4/7 (jobs: 1)                   Done: 5/7 (jobs: 1)                   Done: 74/77 (jobs: 1)                     Done: 75/77 (jobs: 1)                     Done: 76/77 (jobs: 1)                     
  $ ./_build/default/md5.exe -help
  Generate an MD5 hash of the input data
  
    md5.exe [FILENAME]
  
  === flags ===
  
    [-s string]    Checksum the given string
    [-t]           run a built-in time trial
    [-build-info]  print info about this build and exit
    [-version]     print the version of this build and exit
    [-help]        print this help text and exit
                   (alias: -?)
  
  $ ./_build/default/md5.exe -s "ocaml rocks"
  5a118fe92ac3b6c7854c595ecf6419cb
### completion
%% --non-deterministic
  $ env COMMAND_OUTPUT_INSTALLATION_BASH=1 ./_build/default/md5.exe
  function _jsautocom_23483 {
    export COMP_CWORD
    COMP_WORDS[0]=./_build/default/md5.exe
    if type readarray > /dev/null
    then readarray -t COMPREPLY < <("${COMP_WORDS[@]}")
    else IFS="
  " read -d " " -A COMPREPLY < <("${COMP_WORDS[@]}")
    fi
  }
  complete -F _jsautocom_23483 ./_build/default/md5.exe
