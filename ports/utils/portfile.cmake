vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO JakubSzwedowicz/utils
    REF "v${VERSION}"
    SHA512 86aca2e10007eeff16f86d0cfef4ef3d9efe8f26c3e978fc8af95d159161ea1e2683b43fb97121921587eadaca8a584d4889049e988fc875e88aca7e614ff703
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
