#!/usr/bin/env bash
set -e

TEMP_DIR="temp"

# Tworzymy projekt tylko jeśli package.json nie istnieje
if [ ! -f package.json ]; then
    echo "Inicjalizacja projektu Vite w folderze $TEMP_DIR..."
    mkdir -p $TEMP_DIR
    npx create-vite@5.2.0 $TEMP_DIR --template react --yes

    echo "Kopiowanie projektu do katalogu roboczego..."
    cp -r $TEMP_DIR/. .
    rm -rf $TEMP_DIR

    echo "Instalacja Tailwind CSS v3..."
    npm install -D tailwindcss@3.4.4 postcss autoprefixer
    npx tailwindcss init -p
fi

# Instalacja zależności jeśli node_modules nie istnieje
if [ ! -d node_modules ]; then
    echo "Instalacja zależności..."
    npm install
fi

# Start dev server
echo "Start dev server..."
npm run dev -- --host 0.0.0.0