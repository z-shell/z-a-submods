# -*- mode: zsh; sh-indentation: 2; indent-tabs-mode: nil; sh-basic-offset: 2; -*-
# vim: ft=zsh sw=2 ts=2 et
#
# Standardized $0 handling
# https://wiki.zshell.dev/community/zsh_plugin_standard#zero-handling
0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# Functions directory
# https://wiki.zshell.dev/community/zsh_plugin_standard#funtions-directory
if [[ $PMSPEC != *f* ]] {
    fpath+=( "${0:h}/functions" )
}

# The Proposed Function-Name Prefixes
# https://wiki.zshell.dev/community/zsh_plugin_standard#the-proposed-function-name-prefixes
autoload -Uz .za-submods-{atclone,atpull,help}-handler

# An empty stub to fill the help handler fields
.za-submods-null-handler() { :; }

@zi-register-annex "z-a-submods" hook:atclone-30 \
  .za-submods-atclone-handler \
  .za-submods-atclone-help-handler "submods''" # register a new ice-mod: submods''

@zi-register-annex "z-a-submods" hook:%atpull-30 \
  .za-submods-atpull-handler \
  .za-submods-null-handler
