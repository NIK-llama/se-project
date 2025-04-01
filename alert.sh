#!/bin/bash
source config.sh

echo "Sending alert..."
mail -s "Critical Log Alert" $EMAIL < $1
