# vscode-config

My vscode config related files, extensions list, and installation scripts.

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
├── install.sh
├── README.md
```

# 📄 Notes

### Important file locations

User config location:

Windows: `%APPDATA%/Code/User`

MacOS: ` ~/Library/Application\ Support/Code/User`

### Create system link for the entire User folder (Windows):
```bash
mklink /D "%APPDATA%\Code\User" "<your-repo-location>\vscode-config\User"
```
### Create system link for settings file (Windows):
```bash
mklink "%APPDATA%\Code\User\settings.json" "<your-repo-location>\vscode-config\User\settings.json"
```

### Create system link on Linux/MacOS:
(Note: it may be easier to cd into the destination and just run ln -s path-to-repo settings.json)
```bash
ln -s path-to-repository/vscode-config/User/settings.json ~/Library/Application\ Support/Code/User/settings.json
```
