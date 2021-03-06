
set(PARALLEL_BUILDS ON)

set(LIST_SEPARATOR "<semi-colon>")

set(BASE_PACKAGE_CONFIG_DIR share/cmake/)

set(EXTPROJ_BASE_DIR extproj)
set(EXTPROJ_TMP_DIR ${EXTPROJ_BASE_DIR}/tmp)
set(EXTPROJ_STAMP_DIR ${EXTPROJ_BASE_DIR}/stamp)

set(DEFAULT_UTILITIES_GITHUB_ORG OpenCMISS-utilities/)
set(DEFAULT_DEPENDENCY_GITHUB_ORG OpenCMISS-dependencies/)
set(DEFAULT_OPENCMISS_GITHUB_ORG OpenCMISS/)

# Basic test for multi-configuration capable environments
if (IS_MULTI_CONFIG)
    set(MULTICONFIG_BUILD_CONFIG --config $<CONFIGURATION>)
else()
    set(SINGLECONFIG_BUILD_DIR_LABEL -release)
    set(SINGLECONFIG_BUILD_CONFIG -DCMAKE_BUILD_TYPE=Release)
endif()

set(LIBXML2_WITH_ZLIB ON)
set(HDF5_WITH_SZIP ON)
set(HDF5_WITH_ZLIB ON)
set(FIELDML-API_WITH_HDF5 ON)
set(OPTPP_WITH_BLAS ON)
set(ZINC_BUILD_TESTS ON)

set(USE_SYSTEM_BY_DEFAULT ZLIB LIBXML2 JPEG FREETYPE BLAS LAPACK)
set(DEPENDENCIES_WITH_DIFFERENT_MODULE_NAME LIBXML2 FREETYPE)
set(DEPENDENCIES_WITH_DIFFERENT_MODULE_NAME_VALUE LibXml2 Freetype)

set(OVERRIDE_PROJECT_GITHUB_ORG)
set(OVERRIDE_PROJECT_GITHUB_ORG_VALUE)
set(OVERRIDE_PROJECT_GITHUB_BRANCH)
set(OVERRIDE_PROJECT_GITHUB_BRANCH_VALUE)

