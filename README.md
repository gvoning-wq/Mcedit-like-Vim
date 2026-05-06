# Mcedit-like Vim Configuration

This configuration makes Vim behave like the classic **mcedit** (Midnight Commander editor). It’s perfect for those who are used to function key shortcuts and want to stay in "Insert mode" by default.

## Features
- **Starts in Insert Mode**: Feels like a regular text editor.
- **Function Keys**: Classic F-key mappings for copying, moving, and saving.
- **Mouse Support**: Enabled by default.

## Hotkeys


| Key | Action |
|-----|--------|
| **F1** | Undo |
| **F2** | Save |
| **F3** | Start selection / Copy selected text |
| **F4** | Search and Replace |
| **F5** | Paste |
| **F6** | Cut (Move) |
| **F7** | Search |
| **F8** | Delete line |
| **F10** | Quit |

## How to install

1. Open your Vim configuration file:
   - **Linux/macOS**: `nano ~/.vimrc`
   - **Windows**: Open `_vimrc` in your user folder.
2. Copy the content of the `mcedit.vim` (or your file name) from this repository.
3. Paste it into your config file and save.
4. Restart Vim or run `:source ~/.vimrc` inside Vim to apply changes.

## Usage Note
To copy text: Press **F3** to start selecting, move the cursor to highlight the text, then press **F3** again to copy.
