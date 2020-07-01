# My Dotfiles

## Screencasting Notes

https://github.com/laurosilvacom/ultra-advanced-yak-shaved-lesson-creation-process

## Homebrew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```
brew update
```

## Oh My Zsh

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Hyper

Download: https://hyper.is

```
hyper i hyper-night-owl
```

## Node.js

```
brew install nvm
```

```
mkdir ~/.nvm
```

```
nvm install node
nvm use node

```

# OS Settings

Disable popup showing accented characters when holding down a key:

```
defaults write -g ApplePressAndHoldEnabled -bool false
```

Show path bar:

```
defaults write com.apple.finder ShowPathbar -bool true

```

## Keyboard

Key Repeat -> Fast
Delay Until Repeat -> Short
Disable "Correct spelling automatically"
Disable "Capitalize words automatically"
Disable "Add period with double-space"
Disable "Use smart quotes and dashes"

## VScode Config

```json
{
  "debug.console.fontSize": 16,
  "editor.cursorWidth": 6,
  "editor.fontSize": 16,
  "editor.quickSuggestionsDelay": 30,
  "editor.tabSize": 2,
  "explorer.openEditors.visible": 0,
  "markdown.preview.fontSize": 16,
  "terminal.integrated.fontSize": 16,
  "window.zoomLevel": 0,
  "editor.cursorBlinking": "solid",
  "editor.cursorStyle": "block",
  "editor.fontFamily": "Dank Mono, Menlo, Monaco, 'Courier New', monospace",
  "editor.matchBrackets": "never",
  "editor.renderLineHighlight": "none",
  "editor.renderWhitespace": "boundary",
  "javascript.updateImportsOnFileMove.enabled": "always",
  "terminal.integrated.fontFamily": "Dank Mono",
  "workbench.colorTheme": "Night Owl",
  "workbench.iconTheme": "material-icon-theme",
  "workbench.sideBar.location": "right",
  "breadcrumbs.enabled": false,
  "editor.folding": false,
  "editor.fontLigatures": false,
  "editor.formatOnSave": true,
  "editor.glyphMargin": false,
  "editor.minimap.enabled": false,
  "editor.minimap.renderCharacters": false,
  "editor.parameterHints.enabled": false,
  "editor.renderIndentGuides": false,
  "editor.smoothScrolling": true,
  "explorer.compactFolders": false,
  "prettier.singleQuote": true,
  "vscode_custom_css.policy": true,
  "workbench.activityBar.visible": false,
  "workbench.statusBar.visible": true,
  "prettier.semi": false,
  "terminal.integrated.env.osx": {
    "VSC": "LOL"
  },
  "[javascript]": {
    "editor.formatOnSave": false
  },
  "[javascriptreact]": {
    "editor.formatOnSave": false
  },
  "editor.codeActionsOnSave": {
    "source.fixAll": true
  },
  "[markdown]": {
    "editor.wordWrapColumn": 80,
    "editor.wordWrap": "bounded"
  },
  "[mdx]": {
    "editor.wordWrapColumn": 80,
    "editor.wordWrap": "bounded"
  },
  "prettier.disableLanguages": ["javascript", "javascriptreact"],
  "spellright.documentTypes": ["markdown", "plaintext", "mdx"],
  "spellright.language": ["en"],
  "spellright.parserByClass": {
    "mdx": {
      "parser": "markdown"
    }
  },
  "vscode_custom_css.imports": [
    "file:///Users/laurosilvacom/Documents/laurosilvacom/utilities/dotfiles/code-custom.css"
  ],
  "workbench.startupEditor": "newUntitledFile"
  // egghead
  /*
    "editor.fontSize": 22,
    "window.zoomLevel": -1,
    "terminal.integrated.fontSize": 20,
    "workbench.statusBar.visible": false,
    "scm.diffDecorations": "none",
    "editor.lineNumbers": "off",
    "workbench.editor.showTabs": false,
    "editor.quickSuggestions": false,
    "editor.suggestOnTriggerCharacters": false
    */
  // egghead
}
```
