alias vi='nvim'
alias ack='ag'
alias deepl="tr \"\n\" \" \" | xargs echo 'http://www.deepl.com/translator#en/ja/' | xargs -I {} xdg-open '{}'"

switch (uname)
  case Linux
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
  case '*'
end
