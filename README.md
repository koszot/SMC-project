# Simple Multicellularity Project

# Proteome összegyűjtése

A raw proteome-ok a __raw_fasta_files__ mappában vannak, és itt található a __taxonlist.xls__ fájl is ami a hivatkozásokat tartalmazza.

A __raw_FASTA_correction.R__ script segítésével átalakítjuk a headereket és a fasta fájlok neveit majd a __fixed_fasta_files__ mappában helyezzük el őket. Majd összecatoljuk a __71_genomes.fasta__ fájlba az összes faj proteomeját.

__75508_Picst3__ : ki lett törölve a __71_genomes.fasta__ fájlból mert a header alatt nem volt szekvencia és a raw fájlban visszakeresve is üres volt a header alatti terület
__79291_Picst3__ : ki lett törölve a __71_genomes.fasta__ fájlból mert a header alatt nem volt szekvencia és a raw fájlban visszakeresve is üres volt a header alatti terület

# All vs All BLAST

El kell végezni az all vs all BLAST-ot a klaszerezéshez

Local cluster :
```
nohup mpiformatdb -N 64 -i 71_genomes.fasta -o T &
mv 71_genomes.fasta.* ../share/
nohup mpirun -n 32 mpiblast -d 71_genomes.fasta -i 71_genomes.fasta -p blastp -m 8 -o 71_genomes_blasted --copy-via=none &
```
HPC-Szeged:
```
mpiformatdb -N 192 -i 71_genomes.fasta -o T
mv 71_genomes.fasta.* ../share/
mpirun -n 192 mpiblast -d 71_genomes.fasta -i 71_genomes.fasta -p blastp -m 8 -o 71_genomes_blasted --copy-via=none
```

# HIFIX klaszterezés

A klaszerezéshez először meg kell nézni, hogy az összes selenocisteine át lett-e alakítva X-re.
```
U_to_X.R
```
SILIX
```
silix 71_genomes_fixed.fasta 71_genomes_blasted_03_06 --net > 71_genomes_SLX.fnodes
```
HIFIX
```
hifix -t 48 71_genomes_fixed.fasta 71_genomes_blasted_03_06.net 71_genomes_SLX.fnodes > 71_genomes_HFX.fnodes
```

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




