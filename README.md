# `Z-A-SUBMODS`

## Introduction

A annex (i.e. an extension for [Zinit](https://github.com/z-shell/zinit) –
[more information](https://z-shell.github.io/zinit/wiki/Annexes/))
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

![screenshot](https://raw.githubusercontent.com/z-shell/z-a-submods/main/images/screenshot.png)

## Installation

Simply load as a plugin. This will install the annex within Zinit:

```zsh
zinit light z-shell/z-a-submods
```

After this you can use the `submods''` ice.
<!-- vim:set tw=85: -->
