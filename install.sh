echo "Installing needed packacges with paru..."
paru -S --needed neovim luarocks rustup nix nodejs npm tree-sitter-cli
if ! rustup toolchain list | grep -q "active" ; then
  echo "Rust toolchain is missing, installing..."
  rustup toolchain install stable
else
  echo "Rust toolchain is already installed, skipping..."
fi
if ! rustup component list | grep -q "rust-analyzer" ; then
  echo "rust-analyzer is missing, installing..."
  rustup component add rust-analyzer
else
  echo "rust-analyzer is already installed, skipping..."
fi
