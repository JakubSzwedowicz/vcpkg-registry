vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO JakubSzwedowicz/utils
    REF "v${VERSION}"
    SHA512 ae3b34a69dd03b68aafb50ee3669ffc55afd96ae268ceed25b3f95d91c4700c7bfe3eb0172c07727f46b1c2ecd464656b1847cc312ec1ad4099d3f4a6d45eaa5
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
