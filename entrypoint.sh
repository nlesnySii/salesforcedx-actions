#!/bin/sh

set -e

# Capture output
result=$( "$*" )

# Write output to output variable
echo ::set-output name=result::$result