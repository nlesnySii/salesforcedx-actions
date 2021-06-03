#!/bin/sh

set -e

# Capture output
result=$( $1 )

echo result

# Write output to output variable
echo ::set-output name=result::$result