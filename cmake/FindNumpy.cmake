include(FindPackageHandleStandardArgs)

execute_process(
  COMMAND "${PYTHON_EXECUTABLE}" -c "import numpy.f2py; print(numpy.get_include())"
  OUTPUT_VARIABLE Numpy_INCLUDE_DIR
)

find_package_handle_standard_args(Numpy REQUIRED_VARS Numpy_INCLUDE_DIR)
