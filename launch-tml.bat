@echo off
set FNA3D_FORCE_DRIVER=Vulkan
cd /d "C:\Program Files (x86)\Steam\steamapps\common\tModLoaderDev"
dotnet "C:\code\tModLoader\src\tModLoader\Terraria\bin\Debug\net10.0\tModLoader.dll" -modsources "%USERPROFILE%\Documents\My Games\Terraria\tModLoader-dev\ModSources" %*
