#!/bin/bash
cd "$(dirname "$0")"

# Generate latest version of the Plantuml images
./report-uml.sh

# Concat the markdowns
rm fullReport.fmd
for f in ./report/*.md; do (cat "${f}"; echo ""; echo "") >> fullReport.fmd; done
cat fullReport.fmd

# Generate the pdf
pandoc fullReport.fmd \
 -o report.pdf \
 --from markdown+yaml_metadata_block+raw_html \
 --template eisvogel \
 --table-of-contents \
 --toc-depth 3 \
 --number-sections \
 --top-level-division=chapter \
 --highlight-style breezedark

# Remove the concat
rm fullReport.fmd