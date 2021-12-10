#!/usr/bin/env fish

for abbreviation in (abbr -l)
    abbr -e $abbreviation
end
abbr g 'git $argv'
abbr gf 'git fetch $argv'
abbr gs 'git status $argv'
abbr gc 'git commit -m $argv'
abbr md 'mkdir -p $argv'
abbr pi '.venv/bin/python -m pip install -U $argv'
abbr rm 'rm -Rf $argv'
abbr xx 'chmod +x $argv'
abbr z 'chezmoi $argv'
abbr ze 'chezmoi edit --apply $argv'