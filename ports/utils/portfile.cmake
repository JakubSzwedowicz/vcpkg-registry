vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO JakubSzwedowicz/utils
    REF "v${VERSION}"
    SHA512 88a19f026839d36ddf71392c38675b41bbaabdc0bf403d43e9f786008ed7bbdb767f9681de35e5d6d0e36b85744ac4a9c28f7ac0d6871830b587ceede0af90e8
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
