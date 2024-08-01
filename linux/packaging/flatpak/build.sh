# First, copy the `flutter build linux` output to this folder

rm -rf build-dir/

flatpak-builder --user --install build-dir dev.codesagepath.sharik.yml
flatpak run dev.codesagepath.sharik
