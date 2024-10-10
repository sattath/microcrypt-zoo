#!/bin/bash
f=microcrypt.gv
F=${f%.*}
#create a separate file for the separations, to be used later
sed -n '/###### Separations.#########/,$p' "$f" > "separations_only.gv"
#create a file without the separations. This is done in two steps. First, removes all the lines after the tag Separations. Then, append } to the end of the file.
sed -e '/###### Separations.#########/,$d' "$f" > "no_separations.gv"
echo "}" >> "no_separations.gv"

sccmap -S no_separations.gv > scc.gv
gvpr -f color_by_scc.gvpr  scc.gv  $f > colored$f
# remove the last line of the file colored$f
sed -i .bak '$ d' colored$f
# append separations_only.gv to the end of colored$f
cat separations_only.gv >> colored$f
dot -Tcmapx -o$F.map -Tpng -o$F.png -Tsvg -o$F.svg colored$f 