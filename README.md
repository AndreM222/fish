# Fish Dotfiles

## Contents 📦

- Fish Configuration

## Navigation ✈️

- [Navigate To Neovim Dotfiles <-](https://github.com/AndreM222/nvim) (For Detailed Setup)

## Dependencies 📃

- Git >= 2.19.0 (for partial clones support)

- Nerd Fonts >= 3.0

## Font 🖌️

- [FiraCode-NF-Mono](https://www.nerdfonts.com/font-downloads) - Font

## Theme 🎭

- [Dracula](https://draculatheme.com/windows-terminal) - Dracula Color Theme

## Terminal 📟

- [Iterm2](https://iterm2.com/index.html) - Terminal

## Shell 🛡️

- [Fish](https://fishshell.com/) - Shell

## Setup ⚒️

##### Package Managers 📦

- [Homebrew](https://brew.sh/) - `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"` - <span style="opacity:30%">brew</span>

- [Fisher](https://github.com/jorgebucaran/fisher) - `brew install fisher` - <span style="opacity:30%">fisher</span>

- [NVM | NodeJS](https://github.com/jorgebucaran/nvm.fish) - <span style="opacity:30%">npm</span>
```fish
fisher install jorgebucaran/nvm.fish
nvm install lts
nvm use lts
```

##### Brew - Needs Installation

- [Git](https://git-scm.com/download/win) - `brew install git`
- [SQLite & MySQL](https://sqlite.org/index.html) - `brew install sqlite`
- [Neovim](https://brew.run/search?query=neovim) - `brew install Neovim`
- [Oh-My-Posh](https://ohmyposh.dev/docs/installation/windows) - `brew install oh-my-posh`
- [Yarn](https://yarnpkg.com/) - `brew install yarn`
- [Fzf](https://github.com/junegunn/fzf) - `brew install fzf`
- [Bat](https://github.com/sharkdp/bat) - `brew install bat`
- [LazyDocker](https://github.com/jesseduffield/lazydocker) - `brew install lazydocker`
- [NTop](https://htop.dev/) - `brew install htop`
- [RipGrep](https://github.com/BurntSushi/ripgrep) - `brew install ripgrep`
- [LazyGit](https://github.com/jesseduffield/lazygit) - `brew install lazygit`
- [Fira-Font](https://github.com/ryanoasis/nerd-fonts) - `brew install --cask font-fira-code-nerd-font`
- [GHQ](https://github.com/x-motemen/ghq) - `brew install ghq`

##### Fisher - Needs Installation

- [Z Directory](https://github.com/jethrokuan/z) - `fisher install jethrokuan/z`


##### NodeJS - Needs Installation

- [Comitizen](https://github.com/streamich/git-cz)
```fish
npm install -g commitizen
npm install -g cz-conventional-changelog

# In Your Home Folder:
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
```

- [Licence-Generator](https://github.com/shadcn/license-generator) - `npm install license-generator`
- [Npm-Check-Updates](https://www.npmjs.com/package/npm-check-updates) - `npm install -g npm-check-updates`

## Directory Structure 🗂️

```
📂~/.config
|__📂fish
|   |__📄config.fish
|__📂MinimalNight
    |__📑Themes
```

## Info ℹ️

<details>
<summary>Debugging 🐞</summary>


Problem: `Commitizen opening editor instead of commit options`

Fix:
```fish
# Friendly setup for commitizen globally:
npm install -g commitizen cz-conventional-changelog && echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
```

</details>
