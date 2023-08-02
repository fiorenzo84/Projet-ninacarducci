#!/bin/bash

for img in $(find . -type f -name "*.jpg"); do
    base=${img%.jpg}
    cwebp -q 80 "$img" -o "${base}.webp"
done
