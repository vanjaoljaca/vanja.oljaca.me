#!/bin/bash

# need to copy accross images manually because sigh
mkdir -p _site/posts/assets
mkdir -p _site/miniprojects/assets
cp -r _posts/assets/* _site/posts/assets/
cp -r _miniprojects/assets/* _site/miniprojects/assets/
