#!/bin/sh

set -e

# Capture output
result=$( sh -c "$*" )

echo $result
# Write output to output variable
echo ::set-output name=result::$result