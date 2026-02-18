1. Build `exe` (PyInstaller one-file):

```powershell
py -3 -m PyInstaller --noconfirm --onefile --windowed --icon "logo.ico" --name "testerica" "testerica.py"
```

2. Confirm output exists:

```powershell
dir .\dist\testerica.exe
```

3. Open `installer_testerica.iss` in Inno Setup Compiler.

4. Click `Build` (or press `F9`).

5. Installer output will be generated in:

`.\installer_output\SetKITsImageBuilder_Setup_v3.9.0.exe`

Notes:
- Installer default path is: `C:\Program Files (x86)\Set KITs image builder`
- If version changes, update `APP_VERSION` in `testerica.py` and `MyAppVersion` in `installer_testerica.iss`.
