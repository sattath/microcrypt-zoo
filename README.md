# Mircorypt Zoo
An interactive visualization of known implications and separations between quantum cryptographic primitives that are potentially weaker than one-way functions. Black edges are implications, red dotted edges are separations, and equivalent primitives are marked with the same color. Hovering ove
**Contributions are welcome!**

View at [sattath.github.io/microcrypt-zoo/](https://sattath.github.io/microcrypt-zoo/).

## For contributrs

The main source file is microcrypt.gv, which contains is a GraphViz (dot) file, describing all the known relations. To create the graph on your machine, you will need GraphViz installed, then:
dot -Tsvg microcrypt.gv > microcrypt.svg 

Adding an implication is done by adding to microcrypt.gv one line that contains the reference information, and then a line for the relation itself. For example:
    edge [label="Kre21" tooltip="Kretschmer.\n Quantum Pseudorandomness and Classical Complexity.\n TQC21. " URL="https://drops.dagstuhl.de/opus/volltexte/2021/13997"]
    PRS->OWF ;

A separation is similar, follow the same template as in the source. If you prefer, you can also email me (my lasta name at bgu.ac.il).

Note that the nodes which are in the same strongly connected component are colored the same. This is done using the script color_by_scc.sh (which calls color_by_scc.gvpr). 


