#!/bin/bash

set -e

echo "🔧 開発環境セットアップを開始します..."

# Homebrew の存在チェック
if ! command -v brew &> /dev/null; then
  echo "🍺 Homebrewが見つかりません。インストールします..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "✅ Homebrew 準備完了"

# 一括インストールしたいアプリ
apps=(
  google-chrome
  notion
  cursor
)

echo "📦 アプリをインストールします: ${apps[*]}"
for app in "${apps[@]}"; do
  echo "→ $app"
  brew install --cask "$app" || echo "⚠️ $app のインストールで問題が発生しました"
done

echo "🎉 セットアップ完了！"