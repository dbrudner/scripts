#!/bin/bash

# Create a temporary file
TEMP_FILE=$(mktemp)

# Function to clean up the temporary file on exit
cleanup() {
  rm -f "$TEMP_FILE"
}
trap cleanup EXIT

# Function to fetch weather data
fetch_weather() {
  curl -s "wttr.in/?format=3" >"$TEMP_FILE"
}

# Initial fetch
fetch_weather

# Run an infinite loop to periodically fetch weather data
while true; do
  fetch_weather
  sleep 300 # Wait for 5 minutes before the next fetch
done
