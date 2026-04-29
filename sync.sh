#!/bin/bash

set -x
set -e

# Clear prior "latest" build so we don't leave stranded files for removed APIs
rm -rf docs/

pushd ../remix/packages/ui/demo
pnpm run prerender --dir "../../../../remix-ui-docs/docs"
popd
