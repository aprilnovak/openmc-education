#!/usr/bin/env bash
set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOWNLOAD_DIR=./cross_sections
XS_VERSION=endfb-viii.0-hdf5
XS_DIR=${DOWNLOAD_DIR}/${XS_VERSION}

if [[ ! -d ${XS_DIR} ]]; then
  mkdir -p ${XS_DIR}
  echo "Downloading cross sections to ${XS_DIR}"
  XS_URL=https://anl.box.com/shared/static/uhbxlrx7hvxqw27psymfbhi7bx7s6u6a.xz
  TAR_ARGS="-C ${DOWNLOAD_DIR} -xJ --no-same-owner"
  if which curl &> /dev/null; then
    curl -L -k ${XS_URL} | tar ${TAR_ARGS}
  elif which wget &> /dev/null; then
    wget -q -O - ${XS_URL} | tar ${TAR_ARGS}
  else
    echo "Cannot download without 'wget' available"
    exit 1
  fi
else
  echo "Skipping cross section download because ${XS_DIR} already exists."
fi

set +ex

if [[ -z "${OPENMC_CROSS_SECTIONS}" ]]; then
  echo ""
  echo -e "\e[31mYou must now set:\e[0m"
  echo ""
  echo "export OPENMC_CROSS_SECTIONS=${XS_DIR}/cross_sections.xml"
  echo ""
fi
