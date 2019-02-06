#!/bin/sh
set -e

# get dependencies
if [ ! -d .bundle ]; then
  bundle --path=.bundle/gems --binstubs=.bundle/.bin
fi

if [ ! -d site/reveal.js ]; then
  cd site
  git clone -b 3.6.0 --depth 1 https://github.com/hakimel/reveal.js.git
  cd ..
fi

# build with dependencies
bundle exec ./build.sh
