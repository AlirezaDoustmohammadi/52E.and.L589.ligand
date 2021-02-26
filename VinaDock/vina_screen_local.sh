#! /bin/bash

for f in ligand_*.pdbqt; do
    b=`basename $f .pdbqt`
    mkdir -p $b
    ./../bin/vina --config conf.txt --ligand $f --out ${b}/out.pdbqt --log ${b}/log.txt
done
