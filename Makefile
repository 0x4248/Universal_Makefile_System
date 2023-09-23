# Universal makefile system
# A template for makefile that is compatible with all compilers and interpreters
# Github: https://www.github.com/lewisevans2007/Universal_makefile_system
# By: Lewis Evans

# ========== VERSION CONFIGURATION ==========

# Version Configuration
MAJOR_VERSION=1
MINOR_VERSION=0
PATCH_VERSION=0
EXTRA_VERSION=Stable
CODE_NAME=Code_name
VERSION = $(MAJOR_VERSION).$(MINOR_VERSION).$(PATCH_VERSION)
FULL_VERSION = $(VERSION)-$(EXTRA_VERSION)-$(CODE_NAME)

# Makefile Configuration
MAJOR_MAKEFILE_VERSION = 1
MINOR_MAKEFILE_VERSION = 0
PATCH_MAKEFILE_VERSION = 0
MAKEFILE_VERSION = $(MAJOR_MAKEFILE_VERSION).$(MINOR_MAKEFILE_VERSION).$(PATCH_MAKEFILE_VERSION)

# ========== PROJECT CONFIGURATION ==========

PROJECT_NAME = PROJECT_NAME
DESCRIPTION = DESCRIPTION
AUTHOR = AUTHOR
LICENSE = LICENSE
GITHUB_URL = GITHUB_URL

# ========== MAIN CONFIGURATION ==========

# Source Configuration

SRC = src
BIN = bin

# Compiler Configuration

C = COMPILER OR INTERPRETER NAME
C_FLAGS = COMPILER OR INTERPRETER FLAGS

all: init build

init: 
	@echo "MKDIR $(BIN)"
	@mkdir -p $(BIN)

# CHANGE THIS IF NEEDED
build:
	@echo "BUILD $(SRC)"
	@$(C) $(C_FLAGS) $(SRC) -o $(BIN)/$(SRC)

clean:
	@echo "CLEAN $(BIN)"
	@rm -rf $(BIN)

# ========== HELP ==========

help:
	@echo "\033[1m$(PROJECT_NAME)'s Makefile\033[0m"
	@echo "========================================"
	@echo  "Version: $(FULL_VERSION)"
	@echo  "Makefile version: $(MAKEFILE_VERSION)"
	@git rev-parse HEAD
	@echo "========================================"
	@echo "$(DESCRIPTION)"
	@echo "GitHub: $(GITHUB_URL)"
	@echo "Licence: $(LICENSE)"
	@echo "By: $(AUTHOR)"
	@echo ""
	@echo "Usage:"
	@echo "command                   | description"
	@echo "--------------------------|--------------------------------"
	@echo "make                      | compiles everything"
	@echo "make init                 | initializes the bin directory"
	@echo "make build 		  | builds the project"
	@echo "make clean                | cleans the bin directory"
	@echo "make version		  | prints the version"
	@echo "make makefile_version     | prints the Makefile version"
	@echo "make git_hash             | prints the git commit hash"
	@echo "make help                 | prints this help message"
	


# ========== VERSIONING ==========

version:
	@echo "$(FULL_VERSION)"

makefile_version:
	@echo "$(MAKEFILE_VERSION)"

git_hash:
	@git rev-parse HEAD