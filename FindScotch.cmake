SET ( SCOTCH_INCLUDE_DIR SCOTCH_INCLUDE_DIR-NOTFOUND )
SET ( SCOTCH_LIBRARY SCOTCH_LIBRARY-NOTFOUND )
SET ( SCOTCHERR_LIBRARY SCOTCHERR_LIBRARY-NOTFOUND )

FIND_PATH(SCOTCH_INCLUDE_DIR
  NAMES scotch.h
  HINTS ${SCOTCH_INCLUDE_DIR}
  $ENV{SCOTCH_INCLUDE_DIR}
  ${SCOTCH_DIR}/include
  $ENV{SCOTCH_DIR}/include
  PATH_SUFFIXES scotch
  DOC "Directory of SCOTCH Header")

# Check for scotch
FIND_LIBRARY(SCOTCH_LIBRARY
  NAMES scotch scotch${SCOTCH_LIB_SUFFIX}
  HINTS ${SCOTCH_LIBRARY}
  $ENV{SCOTCH_LIBRARY}
  ${SCOTCH_DIR}/lib
  $ENV{SCOTCH_DIR}/lib
  DOC "The SCOTCH library"
  )

FIND_LIBRARY(SCOTCHERR_LIBRARY
  NAMES scotcherr scotcherr${SCOTCH_LIB_SUFFIX}
  HINTS ${SCOTCHERR_LIBRARY} 
  $ENV{SCOTCHERR_LIBRARY} 
  ${SCOTCH_DIR}/lib 
  $ENV{SCOTCH_DIR}/lib
  DOC "The SCOTCH-ERROR library"
  )

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(SCOTCH DEFAULT_MSG
				  SCOTCH_INCLUDE_DIR SCOTCH_LIBRARY SCOTCHERR_LIBRARY)

MARK_AS_ADVANCED(SCOTCH_INCLUDE_DIR SCOTCH_LIBRARY SCOTCHERR_LIBRARY)