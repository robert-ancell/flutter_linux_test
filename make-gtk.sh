#/bin/sh

# Remove the GLFW files and replace them with GTK versions

ENGINE_DIR=/home/bob/git/flutter/engine/src/
rm -f ./linux/flutter/ephemeral/*.cc ./linux/flutter/ephemeral/*.h
rm -f ./linux/flutter/ephemeral/libflutter_linux_glfw.so
rm -fr ./linux/flutter/ephemeral/cpp_client_wrapper_glfw
ln -fs ${ENGINE_DIR}out/host_debug_unopt/libflutter_linux_gtk.so linux/flutter/ephemeral/
ln -fs ${ENGINE_DIR}flutter/shell/platform/linux/public/flutter_linux/ linux/flutter/ephemeral/
