# Standarized $0 handling, see:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html#zero-handling

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# Handler's are using the ":" symbol as the namespacer
autoload -Uz :zp-submods-atclone-handler :zp-submods-atpull-handler \
        :zp-submods-atclone-help-handler :zp-submods-atpull-help-handler

@zinit-register-annex "z-a-submods" hook:atclone \
        :zp-submods-atclone-handler :zp-submods-atclone-help-handler \
        "submods''" # register a new ice-mod: submods''

@zinit-register-annex "z-a-submods" hook:%atpull \
        :zp-submods-atpull-handler :zp-submods-atpull-help-handler
