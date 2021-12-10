#!/usr/bin/env bash

if ! command -v fish &> /dev/null
then
  echo "Fish не установлена"
  exit 1
fi

# Начать Fish, чтобы он мог создать некоторые из конфигурацийигураций
fish -c ""
mkdir -p ~/.config/fish/completions

chezmoi completion fish --output ~/.config/fish/completions/chezmoi.fish