#!/bin/bash

set -euox pipefail

helm template test . --set elasticsearch.enabled=false > actual

diff -c goldenfile actual

rm actual
