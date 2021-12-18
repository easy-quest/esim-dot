#!/usr/bin/env fish

asdf plugin add php || true
asdf plugin add python || true
asdf plugin add golang || true
asdf plugin add rust || true

asdf install golang latest
asdf global golang latest
asdf install rust latest
asdf global rust latest
asdf install python latest
asdf global python latest