#!/usr/bin/env fish

for abbreviation in (abbr -l)
    abbr -e $abbreviation
end
abbr g 'git '
abbr gf 'git fetch '
abbr gs 'git status '
abbr gc 'git commit -m '
abbr md 'mkdir -p '
abbr pi '.venv/bin/python -m pip install -U '
abbr rm 'rm -Rf '
abbr xx 'chmod +x '
abbr z 'chezmoi '
abbr ze 'chezmoi edit --apply '