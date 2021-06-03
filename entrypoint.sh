#!/bin/sh

set -e

# Capture output
result=$( $1 )


# Write output to output variable
echo ::set-output name=result::$result