#!/bin/bash
# Colors each set of equivalent primitives (strongly connected component) and renders the graph
f=microcrypt.gv
F=${f%.*}
sccmap -S $f > scc.gv
gvpr -f color_by_scc.gvpr scc.gv $f > colored$f
dot -Tpng -o$F.png -Tsvg -o$F.svg colored$f
