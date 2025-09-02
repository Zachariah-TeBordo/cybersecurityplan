#!/usr/bin/env bash
# find_errors.sh - look for ERROR or WARN in .log files
# LOG_DIR = directory to scan (defaults to ~/logs)
# PATTERN = what to search (defaults to ERROR|WARN)

LOG_DIR="${1:-$HOME/logs}"   # $1 = first argument passed; default = ~/logs
PATTERN="${2:-ERROR|WARN}"   # $2 = second argument; default = regex ERROR|WARN

# Loop through each .log file in LOG_DIR and print a count of matches
for f in "$LOG_DIR"/*.log; do # loop through each .log file in LOG_DIR
  echo "$f : $(grep -E "$PATTERN" -c "$f")"
  # grep -E = extended regex search
  # -c = count number of matches
done