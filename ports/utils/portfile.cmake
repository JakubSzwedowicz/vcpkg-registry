vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO JakubSzwedowicz/utils
    REF "v${VERSION}"
    SHA512 5dbc794d350121418b1f78c2cdc962c61872ecef976aaaee3015decec7c74ee785d8eafe8335157e0dd0dfc12a75b37b34e83f30febbe5d8b3402d1ae4051653
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