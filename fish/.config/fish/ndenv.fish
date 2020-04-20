set PATH $HOME/.ndenv/shims $PATH
command ndenv rehash 2>/dev/null
function ndenv
  set cmd $argv[1]
  set arg ""
  if test (count $argv) -gt 1
    # Great... fish first array index is ... 1 !
    set arg $argv[2..-1]
  end

  switch "$cmd"
    case rehash shell
        set script (ndenv "sh-$cmd" "$arg")
        eval $script
    case '*'
        command ndenv $cmd $arg
    end
end
