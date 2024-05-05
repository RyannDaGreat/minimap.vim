#!/usr/bin/env bash
############################################################################
#    Author: Wenxuan Zhang                                                 #
#     Email: wenxuangm@gmail.com                                           #
#   Created: 2020-09-25 14:37                                              #
############################################################################
usage() { echo "Usage: $(basename "$0") <hscale> <vscale> <padding> [file]" >&2; }


# for ((i=1; i<=1000; i++))
# do
#     echo -e "⠿"
# done

if [ $# -lt 3 ] || [ $# -gt 4 ]; then
    usage && exit 1
fi

hscale=$1
vscale=$2
padding=$3
file=$4

# Check if the RP_SYS_EXECUTABLE variable is set
if [ -z "$RP_SYS_EXECUTABLE" ]; then
    # Print the symbol on 1000 separate lines if the variable is not set
    for i in {1..1000}; do
        echo "██"
    done
    echo ""  # Print a newline at the end
else
    # echo "$hscale" "$vscale" "$padding" "$file"
    # echo "$hscale" "$vscale" "$padding" "$file"
    # echo "$hscale" "$vscale" "$padding" "$file"
    # echo "$hscale" "$vscale" "$padding" "$file"
    # echo "$hscale" "$vscale" "$padding" "$file"
    # echo "$hscale" "$vscale" "$padding" "$file"
    $RP_SYS_EXECUTABLE -m rp.libs.draw_code_minimap "$hscale" "$vscale" "$padding" "$file"
fi


# if [ -z "$file" ]; then
#     code-minimap -H "$hscale" -V "$vscale" --padding "$padding"
# else
#     code-minimap -H "$hscale" -V "$vscale" --padding "$padding" "$file"
# fi
