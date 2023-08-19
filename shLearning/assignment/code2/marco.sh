#!/bin/bash

# 定义 marco 函数
marco() {
  export MARCO_DIR=$(pwd)
}

# 定义 polo 函数
polo() {
  cd "$MARCO_DIR" || { echo "Error: Failed to change directory."; return 1; }
}

