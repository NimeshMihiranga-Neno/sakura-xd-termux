# 🌸 Sakura-XD Termux

A custom fork of [Termux](https://github.com/termux/termux-app) with extra features for Sakura-XD / Mezuka MD bot users.

## Features

- 🎨 Custom welcome popup with quick links (web, pair, settings, react, shop)
- 📦 **Backup Import** — restore your home directory from a `.zip` backup with one tap
- ℹ️ About dialog with project info
- Based on Termux `v0.118.3`

## Download

👉 [Download the latest APK from Releases](../../releases/latest)

## How to use Backup Import

1. Long-press the terminal to open the context menu
2. Tap **"Backup Import"**
3. Select a `.zip` backup file (must contain a `.nimesh` marker file)
4. Wait for the "Backup imported successfully" toast
5. Restart Termux

### Creating a backup

```bash
cd ~
touch .nimesh
zip -r ~/storage/downloads/my_backup.zip .bashrc .zshrc .termux .nimesh
```

## Credits

- Based on [Termux](https://github.com/termux/termux-app) (GPLv3)
- Modified by Black Cat ofc

## License

This project is a modification of Termux, which is licensed under GPL-3.0.
Source code changes are documented in this repository in accordance with the license.

## Disclaimer

This is an unofficial, community-modified build. Not affiliated with the official Termux project.
