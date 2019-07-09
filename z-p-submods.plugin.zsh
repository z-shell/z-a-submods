# Standarized $0 handling, see:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html#zero-handling

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"

# Handler's are using the ":" symbol as the namespacer
autoload -Uz :zp-submods-atclone-handler :zp-submods-atpull-handler \
        :zp-submods-atclone-help-handler :zp-submods-atpull-help-handler

@zplg-register-z-plugin "z-p-submods" hook:atclone \
        :zp-submods-atclone-handler :zp-submods-atclone-help-handler \
        "submods''" # register a new ice-mod: submods''

@zplg-register-z-plugin "z-p-submods" hook:%atpull \
        :zp-submods-atpull-handler :zp-submods-atpull-help-handler
