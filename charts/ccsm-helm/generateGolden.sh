#!/bin/bash

set -euox pipefail

helm template test . --set elasticsearch.enabled=false > goldenfile
