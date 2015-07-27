#!/nix/store/zmd4jk4db5lgxb8l93mhkvr3x92g2sx2-bash-4.3-p39/bin/bash
# Make sure the following file exists.
FILE='/tmp/conkytoggle'

[[ $(< $FILE) -eq 0 ]] && echo -n 1 > $FILE || echo -n 0 > $FILE
