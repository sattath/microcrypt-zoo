# Mircorypt Zoo
An interactive visualization of known implications and separations between quantum cryptographic primitives that are potentially weaker than one-way functions. Black edges are implications, red dotted edges are separations, and equivalent primitives are marked with the same color. Hovering ove
**Contributions are welcome!**

View at [sattath.github.io/microcrypt-zoo/](https://sattath.github.io/microcrypt-zoo/).

![Microcrypt Zoo](microcrypt.png)

## For contributrs

The main source file is microcrypt.gv, which contains is a GraphViz (dot) file, describing all the known relations. To create the graph on your machine, you will need GraphViz installed, then in your terminal:
```bash
dot -Tsvg microcrypt.gv > microcrypt.svg 
```

Adding an implication is done by adding to microcrypt.gv one line that contains the reference information, and then a line for the relation itself. For example:
```dot 
edge [label="Kre21" tooltip="Kretschmer.\n Quantum Pseudorandomness and Classical Complexity.\n TQC21. " URL="https://drops.dagstuhl.de/opus/volltexte/2021/13997"]
PRS->OWF ; 
```

A separation is similar, follow the same template as in the source (separation are at the bottom). If you prefer, you can also email me the result (my last name at bgu.ac.il). This repository is maintained by Or Sattath.

Note that the nodes which are in the same strongly connected component are colored the same. This is done using the script color_by_scc.sh (which calls color_by_scc.gvpr). 

There might be a problem when opening the html file locally, and the links won't work. This is due to some javascript security measures regareding working with local files. This can be handled by following the instructions [here](https://stackoverflow.com/a/3177718) or [here](https://simplelocalize.io/blog/posts/what-is-cors/#3-disable-browser-cors-checks). 
For chrome on MacOS:
```bash
open /Applications/Google\ Chrome.app --args --user-data-dir="/var/tmp/chrome-dev-disabled-security" --disable-web-security --disable-site-isolation-trials
```
