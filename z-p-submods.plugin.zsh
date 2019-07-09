# Standarized $0 handling, see:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html#zero-handling

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"

# Handler's are using the ":" symbol as the namespacer
autoload :zp-atclone-handler :zp-atpull-handler

@zplg-register-z-plugin "z-p-submods" hook:atclone \
        :zp-atclone-handler :zp-atclone-help-handler \
        "submods''" # register a new ice-mod: submods''

@zplg-register-z-plugin "z-p-submods" hook:atpull \
        :zp-atpull-handler :zp-atpull-help-handler
