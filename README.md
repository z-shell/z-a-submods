[![paypal](https://img.shields.io/badge/-Donate-yellow.svg?longCache=true&style=for-the-badge)](https://www.paypal.me/ZdharmaInitiative)
[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=D54B3S7C6HGME)
[![patreon](https://img.shields.io/badge/-Patreon-orange.svg?longCache=true&style=for-the-badge)](https://www.patreon.com/psprint)

# Introduction

A annex (i.e. an extension for [Zinit](https://github.com/zdharma/zinit) –
[more information](https://zdharma.org/zinit/wiki/Annexes/))
that allows Zinit to clone additional submodules when installing a plugin or
snippet. The submodules are then automatically updated on the `zinit update ...`
command.

This annex adds `submods''` ice to Zinit which has the following syntax:

```zsh
submods'{user}/{plugin} -> {output directory}; ...'
```

An example command utilizing the annex and its ice:

```zsh
# Load the `zsh-autosuggestions' plugin via Prezto module: `autosuggestions'
zinit ice svn submods'zsh-users/zsh-autosuggestions -> external'
zinit snippet PZT::modules/autosuggestions
```

![screenshot](https://raw.githubusercontent.com/zinit-zsh/z-a-submods/master/images/screenshot.png)

# Installation

Simply load as a plugin. This will install the annex within Zinit:

```zsh
zinit light zinit-zsh/z-a-submods
```

After this you can use the `submods''` ice.
<!-- vim:set tw=85: -->
