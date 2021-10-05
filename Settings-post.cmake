
foreach (_PROJECT ${ALL_PROJECTS})
    set(_GITHUB_BRANCH ${DEFAULT_GITHUB_BRANCH})
    set_override_value("${OVERRIDE_PROJECT_GITHUB_BRANCH}" "${OVERRIDE_PROJECT_GITHUB_BRANCH_VALUE}" ${_PROJECT} _GITHUB_BRANCH)
    if (_PROJECT IN_LIST OPENCMISS_PROJECTS)
        set(_GITHUB_ORG ${DEFAULT_OPENCMISS_GITHUB_ORG})
    elseif(_PROJECT IN_LIST UTILITIES_PROJECTS)
        set(_GITHUB_ORG ${DEFAULT_UTILITIES_GITHUB_ORG})
    else()
        set(_GITHUB_ORG ${DEFAULT_DEPENDENCY_GITHUB_ORG})
    endif()
    set_override_value("${OVERRIDE_PROJECT_GITHUB_ORG}" "${OVERRIDE_PROJECT_GITHUB_ORG_VALUE}" ${_PROJECT} _GITHUB_ORG)
    set(GITHUB_REPO_URL ${GITHUB_PROTOCOL}${_GITHUB_ORG}${_PROJECT}${GITHUB_EXT})
    if (GIT_FOUND)
        set(DOWNLOAD_${_PROJECT}_CMD
            GIT_REPOSITORY ${GITHUB_REPO_URL}
            GIT_TAG ${_GITHUB_BRANCH}
        )
    else ()
        set(DOWNLOAD_${_PROJECT}_CMD
            URL ${GITHUB_REPO_URL}/archive/${_GITHUB_BRANCH}.zip
        )
    endif ()
endforeach ()
