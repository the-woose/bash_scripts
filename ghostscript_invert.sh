#!/bin/bash
#
# ghostscript_invert.sh
#
# Inverts PDF file colors based on CMYK counterparts
#
ghostscript -o "$1_inverted.pdf" -sDEVICE=pdfwrite -c "{1 exch sub}{1 exch sub}{1 exch sub}{1 exch sub} setcolortransfer" -f "$1"
