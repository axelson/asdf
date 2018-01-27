# shellcheck source=lib/commands/install.sh
source "$(dirname "$(dirname "$0")")/lib/commands/install.sh"
# shellcheck source=lib/commands/uninstall.sh
source "$(dirname "$(dirname "$0")")/lib/commands/uninstall.sh"

reinstall_command() {
  local plugin_name=$1
  local full_version=$2

  if [[ $# -eq 1 ]]; then
    display_error "You must specify a name and a version to reinstall"
    exit 1
  else
    uninstall_command "$plugin_name" "$full_version"
    install_command "$plugin_name" "$full_version"
  fi
}
