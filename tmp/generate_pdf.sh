#!/bin/bash

PREFIX="18082008-md-hr"
OUTPUT="${PREFIX}.pdf"

mapfile -t files < <(
    find . -maxdepth 1 -type f -name "${PREFIX}-*.pdf" \
    ! -name "$OUTPUT" |
    sed 's|^\./||' |
    sort -t'-' -k4,4n
)

if [ ${#files[@]} -eq 0 ]; then
    echo "No PDF files found."
    exit 1
fi

echo "Found ${#files[@]} PDF files."

printf '%s\n' "${files[@]}"

pdfunite "${files[@]}" "$OUTPUT"

echo "Created: $OUTPUT"
ls -lh "$OUTPUT"
