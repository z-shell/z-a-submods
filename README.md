[![paypal](https://img.shields.io/badge/-Donate-yellow.svg?longCache=true&style=for-the-badge)](https://www.paypal.me/ZdharmaInitiative)
[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=D54B3S7C6HGME)
[![patreon](https://img.shields.io/badge/-Patreon-orange.svg?longCache=true&style=for-the-badge)](https://www.patreon.com/psprint)

# Introduction

A z-plugin (i.e. a plugin for the [Zplugin](https://github.com/zdharma/zplugin) –
[more information](https://github.com/zdharma/zplugin/tree/master/doc/Z-PLUGINS.adoc))
that allows Zplugin to clone additional submodules when installing a plugin or
snippet. The submodules are then automatically updated on the `zplugin update ...`
command.

This z-plugin adds `submods''` ice to Zplugin which has the following syntax:

```zsh
submods'{user}/{plugin} -> {output directory}; ...'
```

An example command utilizing the z-plugin and its ice:

```zsh
# Load the `zsh-autosuggestions' plugin via Prezto module: `autosuggestions'
zplugin ice svn submods'zsh-users/zsh-autosuggestions -> external'
zplugin snippet PZT::modules/autosuggestions
```

![screenshot](https://raw.githubusercontent.com/zdharma/z-p-submods/master/images/screenshot.png)

# Installation

Simply load as a plugin. This will install the z-plugin within Zplugin:

```zsh
zplugin light zdharma/z-p-submods
```

After this you can use the `submods''` ice.
<!-- vim:tw=85
-->
