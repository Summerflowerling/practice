# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "keyboard_control_gpio: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ikeyboard_control_gpio:/home/ros/practice/catkin_ws/src/keyboard_control_gpio/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(keyboard_control_gpio_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/practice/catkin_ws/src/keyboard_control_gpio/msg/keyboard.msg" NAME_WE)
add_custom_target(_keyboard_control_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "keyboard_control_gpio" "/home/ros/practice/catkin_ws/src/keyboard_control_gpio/msg/keyboard.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(keyboard_control_gpio
  "/home/ros/practice/catkin_ws/src/keyboard_control_gpio/msg/keyboard.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/keyboard_control_gpio
)

### Generating Services

### Generating Module File
_generate_module_cpp(keyboard_control_gpio
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/keyboard_control_gpio
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(keyboard_control_gpio_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(keyboard_control_gpio_generate_messages keyboard_control_gpio_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/practice/catkin_ws/src/keyboard_control_gpio/msg/keyboard.msg" NAME_WE)
add_dependencies(keyboard_control_gpio_generate_messages_cpp _keyboard_control_gpio_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(keyboard_control_gpio_gencpp)
add_dependencies(keyboard_control_gpio_gencpp keyboard_control_gpio_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS keyboard_control_gpio_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(keyboard_control_gpio
  "/home/ros/practice/catkin_ws/src/keyboard_control_gpio/msg/keyboard.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/keyboard_control_gpio
)

### Generating Services

### Generating Module File
_generate_module_eus(keyboard_control_gpio
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/keyboard_control_gpio
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(keyboard_control_gpio_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(keyboard_control_gpio_generate_messages keyboard_control_gpio_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/practice/catkin_ws/src/keyboard_control_gpio/msg/keyboard.msg" NAME_WE)
add_dependencies(keyboard_control_gpio_generate_messages_eus _keyboard_control_gpio_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(keyboard_control_gpio_geneus)
add_dependencies(keyboard_control_gpio_geneus keyboard_control_gpio_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS keyboard_control_gpio_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(keyboard_control_gpio
  "/home/ros/practice/catkin_ws/src/keyboard_control_gpio/msg/keyboard.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/keyboard_control_gpio
)

### Generating Services

### Generating Module File
_generate_module_lisp(keyboard_control_gpio
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/keyboard_control_gpio
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(keyboard_control_gpio_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(keyboard_control_gpio_generate_messages keyboard_control_gpio_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/practice/catkin_ws/src/keyboard_control_gpio/msg/keyboard.msg" NAME_WE)
add_dependencies(keyboard_control_gpio_generate_messages_lisp _keyboard_control_gpio_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(keyboard_control_gpio_genlisp)
add_dependencies(keyboard_control_gpio_genlisp keyboard_control_gpio_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS keyboard_control_gpio_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(keyboard_control_gpio
  "/home/ros/practice/catkin_ws/src/keyboard_control_gpio/msg/keyboard.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/keyboard_control_gpio
)

### Generating Services

### Generating Module File
_generate_module_nodejs(keyboard_control_gpio
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/keyboard_control_gpio
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(keyboard_control_gpio_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(keyboard_control_gpio_generate_messages keyboard_control_gpio_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/practice/catkin_ws/src/keyboard_control_gpio/msg/keyboard.msg" NAME_WE)
add_dependencies(keyboard_control_gpio_generate_messages_nodejs _keyboard_control_gpio_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(keyboard_control_gpio_gennodejs)
add_dependencies(keyboard_control_gpio_gennodejs keyboard_control_gpio_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS keyboard_control_gpio_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(keyboard_control_gpio
  "/home/ros/practice/catkin_ws/src/keyboard_control_gpio/msg/keyboard.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/keyboard_control_gpio
)

### Generating Services

### Generating Module File
_generate_module_py(keyboard_control_gpio
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/keyboard_control_gpio
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(keyboard_control_gpio_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(keyboard_control_gpio_generate_messages keyboard_control_gpio_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/practice/catkin_ws/src/keyboard_control_gpio/msg/keyboard.msg" NAME_WE)
add_dependencies(keyboard_control_gpio_generate_messages_py _keyboard_control_gpio_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(keyboard_control_gpio_genpy)
add_dependencies(keyboard_control_gpio_genpy keyboard_control_gpio_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS keyboard_control_gpio_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/keyboard_control_gpio)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/keyboard_control_gpio
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(keyboard_control_gpio_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(keyboard_control_gpio_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/keyboard_control_gpio)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/keyboard_control_gpio
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(keyboard_control_gpio_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(keyboard_control_gpio_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/keyboard_control_gpio)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/keyboard_control_gpio
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(keyboard_control_gpio_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(keyboard_control_gpio_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/keyboard_control_gpio)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/keyboard_control_gpio
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(keyboard_control_gpio_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(keyboard_control_gpio_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/keyboard_control_gpio)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/keyboard_control_gpio\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/keyboard_control_gpio
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(keyboard_control_gpio_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(keyboard_control_gpio_generate_messages_py std_msgs_generate_messages_py)
endif()
