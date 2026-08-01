# 🌸 Sakura-XD Termux

A custom fork of [Termux](https://github.com/termux/termux-app) with extra features for Sakura-XD / Mezuka MD bot users.

## Features

- 🎨 Custom welcome popup with quick links (web, pair, settings, react, shop)
- 📦 **Backup Import** — restore your home directory from a `.zip` backup with one tap
- ℹ️ About dialog with project info
- Based on Termux `v0.118.3`

## Download

👉 [Download the latest APK from Releases](../../releases/latest)

## Backup & Restore

### Creating a backup (config only)

```bash
cd ~
touch .nimesh
zip -r ~/storage/downloads/my_backup.zip .bashrc .zshrc .termux .nimesh
```

### Creating a backup (config + theme / icon pack)

If you're also backing up your theme, icon pack, or Termux logo/banner customizations:

```bash
cd ~
touch .nimesh
zip -r ~/storage/downloads/theme_backup.zip .termux .termux-logo .stylix StyliX logo-ls .nimesh
```

### Creating a full backup (everything)

```bash
cd ~
touch .nimesh
zip -r ~/storage/downloads/full_backup_$(date +%Y%m%d).zip .bashrc .zshrc .p10k.zsh .termux .termux-logo .stylix StyliX logo-ls .nimesh
```

> ⚠️ Run `ls -la ~` first to confirm the exact folder names on your device — not all setups have every folder listed above (e.g. `StyliX` or `.stylix` may not exist if you don't use that theme engine). Remove any folder name from the command that doesn't apply to you, or you'll get a harmless "name not matched" warning.

### Restoring a backup (Backup Import)

1. Copy your backup `.zip` file to your device (e.g. `Downloads` folder)
2. Open Termux, long-press the terminal to open the context menu
3. Tap **"Backup Import"**
4. Select your `.zip` backup file
5. Wait for the **"Backup imported successfully. Restart Termux."** toast
6. Restart Termux — your files, dotfiles, and theme/icon customizations will be restored

**Note:** Backup Import overwrites existing files with the same name. If you have current changes you want to keep, back those up first before restoring an older backup.

## Credits

- Based on [Termux](https://github.com/termux/termux-app) (GPLv3)
- Modified by Black Cat ofc

## License

This project is a modification of Termux, which is licensed under GPL-3.0.
Source code changes are documented in this repository in accordance with the license.

## Disclaimer

This is an unofficial, community-modified build. Not affiliated with the official Termux project.
