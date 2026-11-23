#!/usr/bin/env bash

mkdir -v cache
mkdir -v config
mkdir -v data
mkdir -v media
mkdir -v stacks

for template in env/*.example.env; do
  target="${template/.example/}"

  if [ ! -f "$target" ]; then
    cp "$template" "$target"
    echo "Copied $template to $target"
  else
    echo "Skipped copying $template to $target (already exists)"
  fi
done
