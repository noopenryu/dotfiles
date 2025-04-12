#!/bin/bash

# Define the directory and files
CONFIG_DIR="$HOME/.config/oh-my-posh"
ZASH_FILE="$CONFIG_DIR/zash.omp.json"
SCHEMA_FILE="$CONFIG_DIR/schema.json"

# Check if the zash.omp.json file exists
if [ ! -f "$ZASH_FILE" ]; then
  echo "Error: $ZASH_FILE not found. Please run the download script first."
  exit 1
fi

# Check if the schema.json file exists
if [ ! -f "$SCHEMA_FILE" ]; then
    echo "Error: $SCHEMA_FILE not found. Please run the download script first."
    exit 1
fi

# Replace the $schema URL with the local file path using jq
jq --arg schema_path "$SCHEMA_FILE" '. | ."$schema" = $schema_path' "$ZASH_FILE" > "$ZASH_FILE.tmp" && mv "$ZASH_FILE.tmp" "$ZASH_FILE"

# Check if the replacement was successful
if [ $? -eq 0 ]; then
  echo "Successfully replaced \$schema in $ZASH_FILE with local path."
else
  echo "Error: Failed to replace \$schema in $ZASH_FILE."
  exit 1
fi

exit 0