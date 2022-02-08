#!/bin/bash

set -euox pipefail

helm template test . --set elasticsearch.enabled=false > actual

diff goldenfile actual

rm actual
