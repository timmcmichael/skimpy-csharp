#!/bin/bash

# Define output directory
OUTPUT_DIR="output-test"
STYLE_SHEET="css/architech-light.css"
ASCIIDOCTOR_PATH="$HOME/.gem/ruby/2.6.0/bin/asciidoctor-multipage"
DIAGRAM_PATH="$HOME/.gem/ruby/2.6.0/gems/asciidoctor-diagram-2.3.1/lib/asciidoctor-diagram"
FALLBACK_PATH="/usr/local/bin/asciidoctor-multipage"
FALLBACK_DIAGRAM_PATH="/Library/Ruby/Gems/2.6.0/gems/asciidoctor-diagram-2.3.1/lib/asciidoctor-diagram"

# Use fallback if the primary path is missing or not executable
if [ ! -x "$ASCIIDOCTOR_PATH" ]; then
    ASCIIDOCTOR_PATH="$FALLBACK_PATH"
fi

if [ ! -x "$DIAGRAM_PATH" ]; then
    DIAGRAM_PATH="$FALLBACK_DIAGRAM_PATH"
fi 

# Remove old output
rm -rf "$OUTPUT_DIR"

echo "Running Asciidoctor Multipage with:"
echo "Executable: $ASCIIDOCTOR_PATH"
echo "Diagram Lib: $DIAGRAM_PATH"
echo "Output Dir: $OUTPUT_DIR"
echo "Stylesheet: $STYLE_SHEET"

"$ASCIIDOCTOR_PATH" -D "$OUTPUT_DIR" \
    -r "$DIAGRAM_PATH" \
    -b multipage_html5 \
    -a stylesheet="$STYLE_SHEET" \
    -a source-highlighter=pygments \
    -a pygments-style=monokai \
    -a pygments-css=style \
    -a linkcss \
    index.adoc 

echo "Asciidoctor run completed. Output saved to build.log"


# Copy subfolder
cp css/*.css "$OUTPUT_DIR"/css
cp -R images "$OUTPUT_DIR"/images
