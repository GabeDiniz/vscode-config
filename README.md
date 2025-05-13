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

- Create system link (Windows): `mklink /D "%APPDATA%\Code\User" "C:\Users\<username>\vscode-config\User"`
- User config commonly stored here: `%APPDATA%/Code/User`
- `~/.vscode` - usually used for workspace settings (not global user config)