
version_file="/Applications/UltiMaker Cura.app/Contents/Resources/cura/CuraVersion.py"
cura_version=$(grep "CuraVersion" "$version_file" | head -1 | sed -En 's/.*([0-9]+\.[0-9]+)\.[0-9]+.*/\1/p')
config_files_folder="$HOME/Library/Application Support/cura/$cura_version"

echo "Ready to copy config files to $config_files_folder"

cp ./configs/definitions/kingroon_klp1.def.json "$config_files_folder/definitions/"
cp ./configs/extruders/kingroon_klp1_extruder_0.def.json "$config_files_folder/extruders/"
mkdir -p "$config_files_folder/meshes"
cp ./configs/meshes/kingroon_klp1.stl "$config_files_folder/meshes/kingroon_klp1.stl"
mkdir -p "$config_files_folder/quality/"
cp -R ./configs/quality/kingroon_klp1 "$config_files_folder/quality/"
