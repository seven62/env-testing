#!/bin/bash

# If you have previously rendered HTML files locally, you can 
# run this simple script to quickly preview what you have.  

pushd ./site/
python3 -m http.server 8000