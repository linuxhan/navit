file(READ "${SRC}" OUTPUT_LINES)
string(REGEX REPLACE "fill:#111111" "fill:${BGCOLOR}" OUTPUT_LINES "${OUTPUT_LINES}")
string(REGEX REPLACE "fill:#ffffff" "fill:${FGCOLOR}" OUTPUT_LINES "${OUTPUT_LINES}")
string(REGEX REPLACE "stroke:#ffffff" "stroke:${FGCOLOR}" OUTPUT_LINES "${OUTPUT_LINES}")
file(WRITE "${DST}" "${OUTPUT_LINES}")
