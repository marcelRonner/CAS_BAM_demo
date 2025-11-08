#!/usr/bin/env bash
# Render all PlantUML (.puml) files in this directory to PNG
# Requirements: plantuml must be installed and in PATH, or use `java -jar plantuml.jar`

set -e
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"
# Render all PUML files to PNG
plantuml -tpng *.puml || {
  echo "plantuml command failed. If plantuml is not installed, try:"
  echo "  brew install plantuml" 
  echo "or use the PlantUML jar:"
  echo "  java -jar /path/to/plantuml.jar -tpng *.puml"
  exit 2
}

echo "Rendered PNGs in $SCRIPT_DIR"
