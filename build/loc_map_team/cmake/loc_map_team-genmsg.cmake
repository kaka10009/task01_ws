# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "loc_map_team: 4 messages, 0 services")

set(MSG_I_FLAGS "-Iloc_map_team:/home/kaka/task01_ws/src/loc_map_team/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(loc_map_team_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeArray.msg" NAME_WE)
add_custom_target(_loc_map_team_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "loc_map_team" "/home/kaka/task01_ws/src/loc_map_team/msg/ConeArray.msg" "geometry_msgs/Point:std_msgs/Header:loc_map_team/ConeInfo"
)

get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg" NAME_WE)
add_custom_target(_loc_map_team_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "loc_map_team" "/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg" NAME_WE)
add_custom_target(_loc_map_team_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "loc_map_team" "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg" ""
)

get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2DArray.msg" NAME_WE)
add_custom_target(_loc_map_team_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "loc_map_team" "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2DArray.msg" "std_msgs/Header:loc_map_team/ConeDetection2D"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/loc_map_team
)
_generate_msg_cpp(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/loc_map_team
)
_generate_msg_cpp(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/loc_map_team
)
_generate_msg_cpp(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/loc_map_team
)

### Generating Services

### Generating Module File
_generate_module_cpp(loc_map_team
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/loc_map_team
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(loc_map_team_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(loc_map_team_generate_messages loc_map_team_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeArray.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_cpp _loc_map_team_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_cpp _loc_map_team_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_cpp _loc_map_team_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2DArray.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_cpp _loc_map_team_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(loc_map_team_gencpp)
add_dependencies(loc_map_team_gencpp loc_map_team_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS loc_map_team_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/loc_map_team
)
_generate_msg_eus(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/loc_map_team
)
_generate_msg_eus(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/loc_map_team
)
_generate_msg_eus(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/loc_map_team
)

### Generating Services

### Generating Module File
_generate_module_eus(loc_map_team
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/loc_map_team
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(loc_map_team_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(loc_map_team_generate_messages loc_map_team_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeArray.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_eus _loc_map_team_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_eus _loc_map_team_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_eus _loc_map_team_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2DArray.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_eus _loc_map_team_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(loc_map_team_geneus)
add_dependencies(loc_map_team_geneus loc_map_team_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS loc_map_team_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/loc_map_team
)
_generate_msg_lisp(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/loc_map_team
)
_generate_msg_lisp(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/loc_map_team
)
_generate_msg_lisp(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/loc_map_team
)

### Generating Services

### Generating Module File
_generate_module_lisp(loc_map_team
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/loc_map_team
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(loc_map_team_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(loc_map_team_generate_messages loc_map_team_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeArray.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_lisp _loc_map_team_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_lisp _loc_map_team_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_lisp _loc_map_team_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2DArray.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_lisp _loc_map_team_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(loc_map_team_genlisp)
add_dependencies(loc_map_team_genlisp loc_map_team_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS loc_map_team_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/loc_map_team
)
_generate_msg_nodejs(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/loc_map_team
)
_generate_msg_nodejs(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/loc_map_team
)
_generate_msg_nodejs(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/loc_map_team
)

### Generating Services

### Generating Module File
_generate_module_nodejs(loc_map_team
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/loc_map_team
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(loc_map_team_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(loc_map_team_generate_messages loc_map_team_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeArray.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_nodejs _loc_map_team_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_nodejs _loc_map_team_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_nodejs _loc_map_team_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2DArray.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_nodejs _loc_map_team_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(loc_map_team_gennodejs)
add_dependencies(loc_map_team_gennodejs loc_map_team_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS loc_map_team_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/loc_map_team
)
_generate_msg_py(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/loc_map_team
)
_generate_msg_py(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/loc_map_team
)
_generate_msg_py(loc_map_team
  "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/loc_map_team
)

### Generating Services

### Generating Module File
_generate_module_py(loc_map_team
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/loc_map_team
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(loc_map_team_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(loc_map_team_generate_messages loc_map_team_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeArray.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_py _loc_map_team_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeInfo.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_py _loc_map_team_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2D.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_py _loc_map_team_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kaka/task01_ws/src/loc_map_team/msg/ConeDetection2DArray.msg" NAME_WE)
add_dependencies(loc_map_team_generate_messages_py _loc_map_team_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(loc_map_team_genpy)
add_dependencies(loc_map_team_genpy loc_map_team_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS loc_map_team_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/loc_map_team)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/loc_map_team
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(loc_map_team_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(loc_map_team_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/loc_map_team)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/loc_map_team
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(loc_map_team_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(loc_map_team_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/loc_map_team)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/loc_map_team
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(loc_map_team_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(loc_map_team_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/loc_map_team)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/loc_map_team
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(loc_map_team_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(loc_map_team_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/loc_map_team)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/loc_map_team\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/loc_map_team
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(loc_map_team_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(loc_map_team_generate_messages_py geometry_msgs_generate_messages_py)
endif()
