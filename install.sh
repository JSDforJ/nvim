paru -S --needed neovim luarocks rustup nix nodejs npm tree-sitter-cli
if ! rustup toolchain list | grep -q "active" then
rustup toolchain install stable
fi
if ! rustup component list | grep -q "rust-analyzer" then
rustup component add rust-analyzer
fi
