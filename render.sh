#!/bin/bash

set -eou pipefail

#
# General definitions
#
input_dir="experiments"
output_dir="build"

#
# 1. Creating output directory
#
mkdir -p ${output_dir}

#
# 2. Rendering experiments
#
for file in ${input_dir}/*; do
  Rscript -e "rmarkdown::render('${file}', output_dir='${output_dir}')"
done

