reinstall_command() {
  local plugin_name=$1
  local full_version=$2

  if [[ $# -eq 1 ]]; then
    display_error "You must specify a name and a version to reinstall"
    exit 1
  else
    reinstall_tool_version "$plugin_name" "$full_version"
  fi
}

reinstall_tool_version() {
  uninstall_command()
  install_command()
}
