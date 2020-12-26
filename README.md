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
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.formatOnSave": true,
  "editor.detectIndentation": true,
  "editor.lightbulb.enabled": true,
  "editor.fontFamily": "'Input Mono', Menlo, Monaco, 'Courier New', monospace",
  "editor.fontLigatures": false,
  "editor.snippetSuggestions": "top",
  "editor.wordBasedSuggestions": true,
  "editor.suggest.localityBonus": true,
  "editor.acceptSuggestionOnCommitCharacter": false,
  "editor.showUnused": true,
  "editor.fontSize": 14,
  "editor.fontWeight": 400,
  "editor.tabSize": 2,
  "terminal.integrated.fontSize": 14,
  "editor.hover.enabled": false,
  "editor.renderWhitespace": "none",
  "editor.glyphMargin": false,
  "editor.folding": false,
  "files.exclude": {
    ".next": true,
    "**/.next": true,
    "node_modules": true,
    "USE_GITIGNORE": true
  },
  "terminal.integrated.env.osx": {
    "VSC": "LOL"
  },
  "files.defaultLanguage": "{activeEditorLanguage}",
  "javascript.suggest.autoImports": true,
  "javascript.validate.enable": true,
  "search.exclude": {
    "***/.next": true,
    "**/.build": true,
    "**/.gh-pages": true,
    "**/bower_components": true,
    "**/build": true,
    "**/coverage": true,
    "**/dist": true,
    "**/node_modules": true
  },
  "errorLens.excludePatterns": ["**/*.{css}"],
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": false
  },
  "eslint.validate": [
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact"
  ],
  "eslint.options": {
    "env": {
      "browser": true,
      "jest/globals": true,
      "es6": true
    },
    "parserOptions": {
      "ecmaVersion": 2019,
      "sourceType": "module",
      "ecmaFeatures": {
        "jsx": true
      }
    },
    "rules": {
      "no-debugger": "off"
    }
  },
  "terminal.integrated.shellArgs.osx": ["-l"],
  "terminal.integrated.scrollback": 10000,
  "explorer.openEditors.visible": 0,
  "editor.lineNumbers": "on",
  "workbench.iconTheme": "material-icon-theme",
  "workbench.sideBar.location": "left",
  "workbench.startupEditor": "none",
  "workbench.activityBar.visible": false,
  "workbench.panel.defaultLocation": "left",
  "workbench.editor.limit.enabled": true,
  "workbench.editor.limit.perEditorGroup": false,
  "workbench.editor.limit.value": 10,
  "debug.javascript.codelens.npmScripts": "never",
  "breadcrumbs.enabled": false,
  "npm.runSilent": true,
  "explorer.confirmDragAndDrop": false,
  "editor.multiCursorModifier": "ctrlCmd",
  "editor.formatOnPaste": false,
  "window.zoomLevel": 0,
  "editor.minimap.enabled": false,
  "spellright.language": ["en"],
  "spellright.documentTypes": ["markdown", "plaintext", "mdx"],
  "spellright.parserByClass": {
    "mdx": {
      "parser": "markdown"
    }
  },
  "javascript.updateImportsOnFileMove.enabled": "never",
  "typescript.updateImportsOnFileMove.enabled": "never",
  "editor.cursorSmoothCaretAnimation": false,
  "editor.smoothScrolling": true,
  "vsintellicode.modify.editor.suggestSelection": "automaticallyOverrodeDefaultValue",
  "[jsonc]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "eslint.packageManager": "npm",
  "npm.packageManager": "npm",
  "prettier.bracketSpacing": false,
  "prettier.proseWrap": "never",
  "prettier.semi": false,
  "prettier.singleQuote": true,
  "prettier.trailingComma": "all",
  "prettier.useEditorConfig": false,
  "editor.acceptSuggestionOnEnter": "on",
  "editor.tokenColorCustomizations": {
    "textMateRules": []
  },
  "workbench.colorTheme": "Setih Night",
  "editor.wordWrap": "bounded",
  "editor.suggestSelection": "first",
  "workbench.statusBar.visible": false,
  "workbench.editor.showTabs": false,
  "explorer.compactFolders": false

  // livestream
  /*
  "window.zoomLevel": 0,
  "editor.fontSize": 22,
  "terminal.integrated.fontSize": 20,
  "workbench.statusBar.visible": false,
  "editor.cursorBlinking": "solid",
  "explorer.decorations.colors": false,
  "explorer.decorations.badges": false,
  "editor.tokenColorCustomizations": {
    "textMateRules": []
  }
  /**/
  // egghead
  /*
  "editor.fontSize": 20,
  "terminal.integrated.fontSize": 15,
  "scm.diffDecorations": "none",
  "editor.lineNumbers": "off",
  "workbench.editor.showTabs": false,
  "workbench.statusBar.visible": false,
  "editor.cursorBlinking": "solid",
  "window.zoomLevel": -1,
  "breadcrumbs.enabled": false,
  "editor.parameterHints.enabled": false,
  "editor.suggestOnTriggerCharacters": false,
  "explorer.decorations.colors": false,
  "explorer.decorations.badges": false
  /**/
  // build react apps
  /*
  "editor.fontSize": 20,
  "terminal.integrated.fontSize": 15,
  "scm.diffDecorations": "none",
  "workbench.statusBar.visible": false,
  "editor.cursorBlinking": "solid",
  "window.zoomLevel": -1,
  "editor.parameterHints.enabled": false,
  "editor.suggestOnTriggerCharacters": false,
  "explorer.decorations.colors": false,
  "explorer.decorations.badges": false
  /**/
  // workshop
  /*
  "editor.fontSize": 22,
  "terminal.integrated.fontSize": 20,
  "scm.diffDecorations": "none",
  "workbench.statusBar.visible": false,
  "editor.cursorBlinking": "solid",
  "window.zoomLevel": 1,
  "workbench.colorTheme": "Night Owl Light",
  "explorer.decorations.colors": false,
  "explorer.decorations.badges": false,
  /**/
  // Talk
  /*
  "editor.fontSize": 22,
  "terminal.integrated.fontSize": 20,
  "scm.diffDecorations": "none",
  "editor.lineNumbers": "off",
  "workbench.statusBar.visible": false,
  "editor.cursorBlinking": "solid",
  "window.zoomLevel": 1,
  "workbench.colorTheme": "Night Owl Light",
  "breadcrumbs.filePath": "off",
  "breadcrumbs.symbolPath": "off",
  "editor.parameterHints.enabled": false,
  "editor.quickSuggestions": false,
  "editor.suggestOnTriggerCharacters": false,
  "explorer.decorations.colors": false,
  "explorer.decorations.badges": false,
  /**/
}

```
