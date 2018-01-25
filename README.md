# Simple Multicellularity Project

## FASTA fájlok kinyújtése

A "Species list and source" excel fájl a driveon tartalmazza a letöltött FASTA fájlok forrásait és elnevezéseit

## NOTUNG (OUTDATED)

Először megnyitjuk Notungba a fajfát és Display Options -> Display Internal Node Names és elmentjük NEWICK formátumba (species.tree.nwk)

A compare outputból kimásoljuk a reference részt ami a node neveket és az alatta található fajokat tartalmazza, majd egyeztetjük a NOTUNG-os fajfával a MRCA keresés alapján, ezzel megkapjuk, hogy melyik COMPARE node névnek mi a NOTUNGOS megfelelője

```
scripts/COMPARE_NOTUNG_dictionary.R
```

Fontos hogy belőjük az output fájlbe a headereket mert ez a scriptből lehet kimaradt (esetleg ezt lehet fixálni a scriptben) - header <- notung, compare, species

Bemásoljuk a species.tree.nwk-t a fákat tartalmazó mappába

Mivel a Cryne_H99_1 bezavar ezért ezt át kell nevezni az összes fába CryneH991-re

```
perl -pi -e 's/Cryne_H99_1/CryneH991/g' ./*
```

Elkészítjük a batch fájlt és behelyezzük a fákat tartalmazó mappába

```
java -jar /Users/genomelab3/programs/Notung-2.9/Notung-2.9.jar -b /Users/genomelab3/Desktop/SMC_project/Notung/trees_for_Notung/batch.run --reconcile --speciestag postfix --parsable --progressbar --rearrange --edgeweights length --threshold 70% --log --treeoutput newick --nolosses
```

Ezek newick típusú fákat adnak ki amik továbbszámolhatóak a COMPARE-ben így nincs szükség a parsable statokra.

(OUTDATED) Parsable statisztikák átalakítása és egyesítése COMPARE formátumra

```
scripts/Notung_stats.R

scripts/Notung_stats_functional_groups.R
```

## SILIX, HIFIX klaszterezés (OUTDATED)

### All vs All BLAST

El kell végezni az all vs all BLAST-ot a klaszerezéshez

```
nohup mpiformatdb -N 64 -i SMC_project_allgenomes.fasta -o T &
mv SMC_project_allgenomes.fasta.* ../share/
nohup mpirun -n 32 mpiblast -d SMC_project_allgenomes.fasta -i SMC_project_allgenomes.fasta -p blastp -m 8 -o SMC_project_allgenomes_blasted --copy-via=none &
```

### selenocystein

U_to_X.R

### Silix a Hifix-hez

silix SMC_project_allgenomes.fasta SMC_project_allgenomes_blasted --net > SMC_project_SLX.fnodes

### Hifix

hifix -t 64 SMC_project_allgenomes.fasta SMC_project_allgenomes_blasted.net SMC_project_SLX.fnodes> SMC_project_HFX.fnodes


