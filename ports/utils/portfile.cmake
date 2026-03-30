vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO JakubSzwedowicz/utils
    REF "v${VERSION}"
    SHA512 cd8184a5f68f35085fa806c50b18e44521e6c2213498fcdf24e217be85f6378e11ba5e07680eba0e260dcf003fc94605259f6a5f4615f17961395fb405f9bc1b
    HEAD_REF develop
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(
    PACKAGE_NAME "utils"
    CONFIG_PATH "lib/cmake/utils"
)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
