#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "=== Installing rebuild-check-hook ==="

if command -v paru >/dev/null 2>&1; then
    echo "Building and installing via paru / makepkg..."
    cd "${SCRIPT_DIR}" && makepkg -si --noconfirm
elif command -v makepkg >/dev/null 2>&1; then
    echo "Building and installing via makepkg..."
    cd "${SCRIPT_DIR}" && makepkg -si --noconfirm
else
    echo "Error: makepkg or paru is required to build Arch packages." >&2
    exit 1
fi

echo "rebuild-check-hook installed successfully!"
