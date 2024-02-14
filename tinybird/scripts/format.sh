
#!/usr/bin/env bash
set -euxo pipefail

activate_venv() {
  if [ -z "$VIRTUAL_ENV" ]; then
    source .venv/bin/activate
  else
    echo "venv already active"
  fi
}

format() {
  for file in tinybird/pipes/*.pipe tinybird/datasources/*.datasource; do
    tb fmt --diff "$file";
    tb fmt "$file" --yes --line-length 100;
  done
}

init() {
  activate_venv
  format
}

init