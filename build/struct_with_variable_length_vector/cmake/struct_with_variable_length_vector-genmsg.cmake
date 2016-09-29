# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "struct_with_variable_length_vector: 2 messages, 0 services")

set(MSG_I_FLAGS "-Istruct_with_variable_length_vector:/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(struct_with_variable_length_vector_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgData.msg" NAME_WE)
add_custom_target(_struct_with_variable_length_vector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "struct_with_variable_length_vector" "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgData.msg" ""
)

get_filename_component(_filename "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgDataArray.msg" NAME_WE)
add_custom_target(_struct_with_variable_length_vector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "struct_with_variable_length_vector" "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgDataArray.msg" "struct_with_variable_length_vector/imgData"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(struct_with_variable_length_vector
  "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/struct_with_variable_length_vector
)
_generate_msg_cpp(struct_with_variable_length_vector
  "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgDataArray.msg"
  "${MSG_I_FLAGS}"
  "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/struct_with_variable_length_vector
)

### Generating Services

### Generating Module File
_generate_module_cpp(struct_with_variable_length_vector
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/struct_with_variable_length_vector
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(struct_with_variable_length_vector_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(struct_with_variable_length_vector_generate_messages struct_with_variable_length_vector_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgData.msg" NAME_WE)
add_dependencies(struct_with_variable_length_vector_generate_messages_cpp _struct_with_variable_length_vector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgDataArray.msg" NAME_WE)
add_dependencies(struct_with_variable_length_vector_generate_messages_cpp _struct_with_variable_length_vector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(struct_with_variable_length_vector_gencpp)
add_dependencies(struct_with_variable_length_vector_gencpp struct_with_variable_length_vector_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS struct_with_variable_length_vector_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(struct_with_variable_length_vector
  "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/struct_with_variable_length_vector
)
_generate_msg_eus(struct_with_variable_length_vector
  "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgDataArray.msg"
  "${MSG_I_FLAGS}"
  "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/struct_with_variable_length_vector
)

### Generating Services

### Generating Module File
_generate_module_eus(struct_with_variable_length_vector
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/struct_with_variable_length_vector
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(struct_with_variable_length_vector_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(struct_with_variable_length_vector_generate_messages struct_with_variable_length_vector_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgData.msg" NAME_WE)
add_dependencies(struct_with_variable_length_vector_generate_messages_eus _struct_with_variable_length_vector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgDataArray.msg" NAME_WE)
add_dependencies(struct_with_variable_length_vector_generate_messages_eus _struct_with_variable_length_vector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(struct_with_variable_length_vector_geneus)
add_dependencies(struct_with_variable_length_vector_geneus struct_with_variable_length_vector_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS struct_with_variable_length_vector_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(struct_with_variable_length_vector
  "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/struct_with_variable_length_vector
)
_generate_msg_lisp(struct_with_variable_length_vector
  "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgDataArray.msg"
  "${MSG_I_FLAGS}"
  "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/struct_with_variable_length_vector
)

### Generating Services

### Generating Module File
_generate_module_lisp(struct_with_variable_length_vector
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/struct_with_variable_length_vector
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(struct_with_variable_length_vector_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(struct_with_variable_length_vector_generate_messages struct_with_variable_length_vector_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgData.msg" NAME_WE)
add_dependencies(struct_with_variable_length_vector_generate_messages_lisp _struct_with_variable_length_vector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgDataArray.msg" NAME_WE)
add_dependencies(struct_with_variable_length_vector_generate_messages_lisp _struct_with_variable_length_vector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(struct_with_variable_length_vector_genlisp)
add_dependencies(struct_with_variable_length_vector_genlisp struct_with_variable_length_vector_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS struct_with_variable_length_vector_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(struct_with_variable_length_vector
  "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/struct_with_variable_length_vector
)
_generate_msg_py(struct_with_variable_length_vector
  "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgDataArray.msg"
  "${MSG_I_FLAGS}"
  "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/struct_with_variable_length_vector
)

### Generating Services

### Generating Module File
_generate_module_py(struct_with_variable_length_vector
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/struct_with_variable_length_vector
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(struct_with_variable_length_vector_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(struct_with_variable_length_vector_generate_messages struct_with_variable_length_vector_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgData.msg" NAME_WE)
add_dependencies(struct_with_variable_length_vector_generate_messages_py _struct_with_variable_length_vector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/struct_with_variable_length_vector/msg/imgDataArray.msg" NAME_WE)
add_dependencies(struct_with_variable_length_vector_generate_messages_py _struct_with_variable_length_vector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(struct_with_variable_length_vector_genpy)
add_dependencies(struct_with_variable_length_vector_genpy struct_with_variable_length_vector_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS struct_with_variable_length_vector_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/struct_with_variable_length_vector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/struct_with_variable_length_vector
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(struct_with_variable_length_vector_generate_messages_cpp std_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/struct_with_variable_length_vector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/struct_with_variable_length_vector
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(struct_with_variable_length_vector_generate_messages_eus std_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/struct_with_variable_length_vector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/struct_with_variable_length_vector
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(struct_with_variable_length_vector_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/struct_with_variable_length_vector)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/struct_with_variable_length_vector\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/struct_with_variable_length_vector
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(struct_with_variable_length_vector_generate_messages_py std_msgs_generate_messages_py)
