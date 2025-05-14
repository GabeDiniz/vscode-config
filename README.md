# vscode-config

My vscode

---

# 📁 Project Structure

```
vscode-config/
├── User/
│   ├── settings.json
│   ├── keybindings.json
│   ├── snippets/
│   │   ├── javascript.json
│   │   └── python.json
│   └── extensions.txt
├── install.sh (optional)
├── README.md
```

# 📄 Notes

- Create system link for the entire User folder (Windows): `mklink /D "%APPDATA%\Code\User" "C:\Users\<username>\vscode-config\User"`
- Create system link for settings file (Windows): `mklink "%APPDATA%\Code\User\settings.json" "C:\Users\<username>\vscode-config\User\settings.json"`
- Create system link on Linux/MacOS:`ln -s path-to-repository/vscode-config/User/settings.json ~/Library/Application\ Support/Code/User/settings.json` (Note: it may be easier to cd into the destination and just run ln -s path-to-repo settings.json)
- User config commonly stored here: `%APPDATA%/Code/User`
- `~/.vscode` - usually used for workspace settings (not global user config)
