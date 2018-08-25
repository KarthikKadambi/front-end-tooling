#!/usr/bin/env bash

EXTENSIONS=(
  "2gua.rainbow-brackets"
  "aaron-bond.better-comments"
  "christian-kohler.path-intellisense"
  "DavidAnson.vscode-markdownlint"
  "dbaeumer.vscode-eslint"
  "eamodio.gitlens"
  "eg2.tslint"
  "esbenp.prettier-vscode"
  "joelday.docthis"
  "jpoissonnier.vscode-styled-components"
  "ms-python.python"
  "ms-vsliveshare.vsliveshare"
  "msjsdiag.debugger-for-chrome"
  "robertohuertasm.vscode-icons"
  "WallabyJs.quokka-vscode"
  "wayou.vscode-todo-highlight"
  "wix.vscode-import-cost"
)

for VARIANT in "code"
do
  if hash $VARIANT 2>/dev/null; then
    echo "Installing extensions for $VARIANT"
    for EXTENSION in ${EXTENSIONS[@]}
    do
      $VARIANT --install-extension $EXTENSION
    done
  fi
done