# tModLoader 1.4.5 developer launch (Windows)

1. Install Visual Studio 2026 Community with the .NET desktop development workload, plus the .NET 8 and .NET 10 SDKs.
2. From the repository root, double-click `setup.bat`, then click **Setup**. If prompted, select `C:\Program Files (x86)\Steam\steamapps\common\Terraria\Terraria.exe`. If `setup.bat` fails while rebuilding the GUI, run the prebuilt `setup\GUI\bin\Release\net10.0-windows\setup-gui.exe` from the repository root. CLI alternative: `.\setup-cli.bat setup`.
3. Wait for decompilation and source generation. Expected folders: `src\decompiled`, `src\Terraria`, `src\TerrariaNetCore`, and `src\tModLoader`.
4. Open `tModLoader.sln` in Visual Studio. Set **Terraria** as the startup project, choose **Debug**, and press **F5**.

For updates to branch 1.4.5, run **Regenerate Source** in `setup.bat` or `.\setup-cli.bat regen-source`, then build and launch Terraria again.

## This machine

- Branch: `1.4.5`.
- Installed Terraria: `1.4.5.8` at `C:\Program Files (x86)\Steam\steamapps\common\Terraria`.
- Configured developer install: `C:\Program Files (x86)\Steam\steamapps\common\tModLoaderDev`.
- Detected SDKs: .NET `8.0.425` and `10.0.401`.
- Source generation is not complete; `src\Terraria` and `src\tModLoader` are missing.
- I attempted to start the prebuilt Setup GUI, but its window did not appear on the desktop.
- The CLI's initial NuGet restore currently fails before setup starts: `Value cannot be null. (Parameter 'path1')`. The Windows computer-control API could not connect, so I could not start Setup from the GUI.

