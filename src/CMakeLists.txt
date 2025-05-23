target_sources(mylibrary
  PRIVATE
  ${CMAKE_CURRENT_SOURCE_DIR}/mylibrary.cpp
  PUBLIC
    FILE_SET CXX_MODULES
    BASE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}
    FILES mylibrary.cppm
)
