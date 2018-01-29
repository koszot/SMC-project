library(dplyr)
library(readr)
library(seqinr)
library(stringr)

setwd("~/Desktop/SMC_project/raw_fasta_files/")

##### 1. Laccaria bicolor #####

FASTA <- read.fasta("Lacbi2_GeneCatalog_proteins_20110203.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Lacbi2\\|", "") %>% str_replace("\\|.*$", "_Lacbi2")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/laccaria_bicolor.fasta")

##### 2. Galerina marginata #####

FASTA <- read.fasta("Galma1_GeneCatalog_proteins_20110628.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Galma1\\|", "") %>% str_replace("\\|.*$", "_Galma1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/galerina_marginata.fasta")

##### 3. Coprinopsis cinerea #####

FASTA <- read.fasta("Copci_AmutBmut1_GeneCatalog_proteins_20130522.aa.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Copci_AmutBmut1\\|", "") %>% str_replace("\\|.*$", "_Copci")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/coprinopsis_cinerea.fasta")

##### 4. Schizophyllum commune #####

FASTA <- read.fasta("Schco3_GeneCatalog_proteins_20130812.aa.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Schco3\\|", "") %>% str_replace("\\|.*$", "_Schco3")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/schizophyllum_commune.fasta")

##### 5. Coniophora puteana #####

FASTA <- read.fasta("Conpu1_GeneCatalog_proteins_20101116.aa.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Conpu1\\|", "") %>% str_replace("\\|.*$", "_Conpu1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/coniophora_puteana.fasta")

##### 6. Plicaturopsis crispa #####

FASTA <- read.fasta("Plicr1_GeneCatalog_proteins_20111115.aa.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Plicr1\\|", "") %>% str_replace("\\|.*$", "_Plicr1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/plicaturopsis_crispa.fasta")

##### 7. Lentinus tigrinus #####

FASTA <- read.fasta("Lenti6_1_GeneCatalog_proteins_20130903.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Lenti6_1\\|", "") %>% str_replace("\\|.*$", "_Lenti61")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/lentinus_tigrinus.fasta")

##### 8. Stereum hirsutum #####

FASTA <- read.fasta("Stehi1_GeneCatalog_proteins_20101026.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Stehi1\\|", "") %>% str_replace("\\|.*$", "_Stehi1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/stereum_hirsutum.fasta")

##### 9. Punctularia strigosozonata #####

FASTA <- read.fasta("Punst1_GeneCatalog_proteins_20101026.aa.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Punst1\\|", "") %>% str_replace("\\|.*$", "_Punst1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/punctularia_strigosozonata.fasta")

##### 10. Fomitiporia mediterranea #####

FASTA <- read.fasta("Fomme1_GeneCatalog_proteins_20101122.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Fomme1\\|", "") %>% str_replace("\\|.*$", "_Fomme1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/fomitiporia_mediterranea.fasta")

##### 11. Auricularia delicata #####

FASTA <- read.fasta("Aurde3_1_GeneCatalog_proteins_20130729.aa.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Aurde3_1\\|", "") %>% str_replace("\\|.*$", "_Aurde31")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/auricularia_delicata.fasta")

##### 12. Botryobasidium botryosum #####

FASTA <- read.fasta("Botbo1_GeneCatalog_proteins_20110803.aa.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Botbo1\\|", "") %>% str_replace("\\|.*$", "_Botbo1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/botryobasidium_botryosum.fasta")

##### 13. Cryptococcus neoformans #####

FASTA <- read.fasta("Cryptococcus_neoformans_H99.proteins.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Cryne_H99_1\\|", "") %>% str_replace("\\|.*$", "_CryneH991")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/cryptococcus_neoformans.fasta")

##### 14. Tremella mesenterica #####

FASTA <- read.fasta("Treme1_best_proteins.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Treme1\\|", "") %>% str_replace("\\|.*$", "_Treme1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/tremella_mesenterica.fasta")

##### 15. Malassezia globosa #####

FASTA <- read.fasta("Malassezia_globosa.proteins.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Malgl1\\|", "") %>% str_replace("\\|.*$", "_Malgl1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/malassezia_globosa.fasta")

##### 16. Ustilago maydis #####

FASTA <- read.fasta("Ustma2_2_GeneCatalog_proteins_20171205.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Ustma2_2\\|", "") %>% str_replace("\\|.*$", "_Ustma22")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/ustilago_maydis.fasta")

##### 17. Wallemia sebi/Wallemia mellicola #####

FASTA <- read.fasta("Walse1_GeneCatalog_proteins_20100910.aa.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Walse1\\|", "") %>% str_replace("\\|.*$", "_Walse1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/wallemia_sebi.fasta")

##### 18. Melampsora laricis-populina #####

FASTA <- read.fasta("Mellp2_3_GeneCatalog_proteins_20151130.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Mellp2_3\\|", "") %>% str_replace("\\|.*$", "_Mellp23")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/melampsora_laricis_populina.fasta")

##### 19. Cronartium quercuum #####

FASTA <- read.fasta("Croqu1_GeneCatalog_proteins_20120612.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Croqu1\\|", "") %>% str_replace("\\|.*$", "_Croqu1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/cronartium_quercuum.fasta")

##### 20. Puccinia graminis #####

FASTA <- read.fasta("Pucgr2_GeneCatalog_proteins_20150718.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Pucgr2\\|", "") %>% str_replace("\\|.*$", "_Pucgr2")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/puccinia_graminis.fasta")

##### 21. Sporobolomyces roseus #####

FASTA <- read.fasta("Sroseus.FilteredModels1.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Sporo1\\|", "") %>% str_replace("\\|.*$", "_Sporo1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/sporobolomyces_roseus.fasta")

##### 22. Rhodosporidium toruloides #####

FASTA <- read.fasta("Rhoto1_GeneCatalog_proteins_20141208.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Rhoto1\\|", "") %>% str_replace("\\|.*$", "_Rhoto1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/rhodosporidium_toruloides.fasta")

##### 23. Neurospora crassa #####

FASTA <- read.fasta("Neucr2_GeneCatalog_proteins_20130412.aa.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Neucr2\\|", "") %>% str_replace("\\|.*$", "_Neucr2")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/neurospora_crassa.fasta")

##### 24. Sordaria macrospora #####

FASTA <- read.fasta("GCF_000182805.1_ASM18280v1_protein.faa", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- 1:length(names(FASTA))
names(FASTA) <- names(FASTA) %>% str_replace("$", "_Sorma")
FASTA

FASTA[length(names(FASTA))]

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/sordaria_macrospora.fasta")

##### 25. Cryphonectria parasitica #####

FASTA <- read.fasta("Cparasiticav2.GeneCatalog20091217.proteins.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Crypa2\\|", "") %>% str_replace("\\|.*$", "_Crypa2")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/cryphonectria_parasitica.fasta")

##### 26. Fusarium graminearum #####

FASTA <- read.fasta("Fusgr1_GeneCatalog_proteins_20110524.aa.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Fusgr1\\|", "") %>% str_replace("\\|.*$", "_Fusgr1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/fusarium_graminearum.fasta")

##### 27. Trichoderma reesei #####

FASTA <- read.fasta("TreeseiV2_FrozenGeneCatalog20081022.proteins.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Trire2\\|", "") %>% str_replace("\\|.*$", "_Trire2")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/trichoderma_reesei.fasta")

##### 28. Botrytis cinerea #####

FASTA <- read.fasta("Botci1_GeneCatalog_proteins_20110903.aa.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Botci1\\|", "") %>% str_replace("\\|.*$", "_Botci1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/botrytis_cinerea.fasta")

##### 29. Aspergillus fumigatus #####

FASTA <- read.fasta("Aspfu1_GeneCatalog_proteins_20120808.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Aspfu1\\|", "") %>% str_replace("\\|.*$", "_Aspfu1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/aspergillus_fumigatus.fasta")

##### 30. Penicillium chrysogenum #####

FASTA <- read.fasta("Pench1_GeneCatalog_proteins_20120123.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Pench1\\|", "") %>% str_replace("\\|.*$", "_Pench1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/penicillium_chrysogenum.fasta")

##### 31. Histoplasma capsulatum #####

FASTA <- read.fasta("Hisca1_GeneCatalog_proteins_20130826.aa.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Hisca1\\|", "") %>% str_replace("\\|.*$", "_Hisca1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/histoplasma_capsulatum.fasta")

##### 32. Cochliobolus heterostrophus #####

FASTA <- read.fasta("CocheC5_3_GeneCatalog_proteins_20110901.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|CocheC5_3\\|", "") %>% str_replace("\\|.*$", "_CocheC53")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/cochliobolus_heterostrophus.fasta")

##### 33. Saccharomyces cerevisiae #####

FASTA <- read.fasta("Sacce1_GeneCatalog_proteins_20101210.aa.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Sacce1\\|", "") %>% str_replace("\\|.*$", "_Sacce1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/saccharomyces_cerevisiae.fasta")

##### 34. Candida glabrata #####

FASTA <- read.fasta("GCF_000002545.3_ASM254v2_protein.faa", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- 1:length(names(FASTA))
names(FASTA) <- names(FASTA) %>% str_replace("$", "_Cangl")
FASTA

FASTA[length(names(FASTA))]

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/candida_glabrata.fasta")

##### 35. Zygosaccharomyces rouxii #####

FASTA <- read.fasta("Zygro1_GeneCatalog_proteins_20150128.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Zygro1\\|", "") %>% str_replace("\\|.*$", "_Zygro1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/zygosaccharomyces_rouxii.fasta")

##### 36. Kluyveromyces lactis #####

FASTA <- read.fasta("Klula1_GeneCatalog_proteins_20130227.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Klula1\\|", "") %>% str_replace("\\|.*$", "_Klula1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/kluyveromyces_lactis.fasta")

##### 37. Eremothecium gossypii #####

FASTA <- read.fasta("Ashgo1_1_GeneCatalog_proteins_20140830.aa.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Ashgo1_1\\|", "") %>% str_replace("\\|.*$", "_Ashgo11")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/eremothecium_gossypii.fasta")

##### 38. Pichia stipitis #####

FASTA <- read.fasta("Pstipitisv2.FilteredModels1.proteins", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Picst3\\|", "") %>% str_replace("\\|.*$", "_Picst3")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/pichia_stipitis.fasta")

##### 39. Debaryomyces hanseni #####

FASTA <- read.fasta("Debha1_GeneCatalog_proteins_20130209.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Debha1\\|", "") %>% str_replace("\\|.*$", "_Debha1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/debaryomyces_hanseni.fasta")

##### 40. Candida albicans #####

FASTA <- read.fasta("Canalb1_GeneCatalog_proteins_20161025.aa.fasta(2)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Canalb1\\|", "") %>% str_replace("\\|.*$", "_Canalb1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/candida_albicans.fasta")

##### 41. Dekkera bruxellensis #####

FASTA <- read.fasta("Dekbr2_GeneCatalog_proteins_20120306.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Dekbr2\\|", "") %>% str_replace("\\|.*$", "_Dekbr2")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/dekkera_bruxellensis.fasta")

##### 42. Taphrina deformans #####

FASTA <- read.fasta("Tapde1_1_GeneCatalog_proteins_20130601.aa.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Tapde1_1\\|", "") %>% str_replace("\\|.*$", "_Tapde11")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/taphrina_deformans.fasta")

##### 43. Schizosaccharomyces pombe #####

FASTA <- read.fasta("Schpo1_GeneCatalog_proteins_20130111.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Schpo1\\|", "") %>% str_replace("\\|.*$", "_Schpo1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/schizosaccharomyces_pombe.fasta")

##### 44. Mucor circinelloides #####

FASTA <- read.fasta("Mucor_circinelloides_v2_filtered_proteins.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Mucci2\\|", "") %>% str_replace("\\|.*$", "_Mucci2")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/mucor_circinelloides.fasta")

##### 45. Rhizopus oryzae #####

FASTA <- read.fasta("Rhior3_proteins.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Rhior3\\|", "") %>% str_replace("\\|.*$", "_Rhior3")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/rhizopus_oryzae.fasta")

##### 46. Phycomyces blakesleeanus #####

FASTA <- read.fasta("Phycomyces_blakesleeanus_v2_filtered_proteins.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Phybl2\\|", "") %>% str_replace("\\|.*$", "_Phybl2")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/phycomyces_blakesleeanus.fasta")

##### 47. Umbelopsis ramanniana #####

FASTA <- read.fasta("Umbra1_GeneCatalog_proteins_20121109.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Umbra1\\|", "") %>% str_replace("\\|.*$", "_Umbra1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/umbelopsis_ramanniana.fasta")

##### 48. Mortierella elongata #####

FASTA <- read.fasta("Morel2_GeneCatalog_proteins_20151120.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Morel2\\|", "") %>% str_replace("\\|.*$", "_Morel2")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/mortierella_elongata.fasta")

##### 49. Glomus intraradices #####

FASTA <- read.fasta("Gloin1_GeneCatalog_proteins_20120510.aa.fasta(1)", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Gloin1\\|", "") %>% str_replace("\\|.*$", "_Gloin1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/glomus_intraradices.fasta")

##### 50. Conidiobolus coronatus #####

FASTA <- read.fasta("Conco1_GeneCatalog_proteins_20120213.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Conco1\\|", "") %>% str_replace("\\|.*$", "_Conco1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/conidiobolus_coronatus.fasta")

##### 51. Coemansia reversa #####

FASTA <- read.fasta("Coere1_GeneCatalog_proteins_20110909.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Coere1\\|", "") %>% str_replace("\\|.*$", "_Coere1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/coemansia_reversa.fasta")

##### 52. Batrachochytrium dendrobatidis #####

FASTA <- read.fasta("Batde5_best_proteins.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Batde5\\|", "") %>% str_replace("\\|.*$", "_Batde5")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/batrachochytrium_dendrobatidis.fasta")

##### 53. Spizellomyces punctatus #####

FASTA <- read.fasta("Spipu1_GeneCatalog_proteins_20131203.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Spipu1\\|", "") %>% str_replace("\\|.*$", "_Spipu1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/spizellomyces_punctatus.fasta")

##### 54. Orpinomyces sp #####

FASTA <- read.fasta("Orpsp1_1_GeneCatalog_proteins_20140826.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Orpsp1_1\\|", "") %>% str_replace("\\|.*$", "_Orpsp11")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/orpinomyces_sp.fasta")

##### 55. Gonapodya prolifera #####

FASTA <- read.fasta("Ganpr1_GeneCatalog_proteins_20111215.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Ganpr1\\|", "") %>% str_replace("\\|.*$", "_Ganpr1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/gonapodya_prolifera.fasta")

##### 56. Catenaria anguillulae #####

FASTA <- read.fasta("Catan2_GeneCatalog_proteins_20160412.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Catan2\\|", "") %>% str_replace("\\|.*$", "_Catan2")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/catenaria_anguillulae.fasta")

##### 57. Allomyces macrogynus #####

FASTA <- read.fasta("Allma1_GeneCatalog_proteins_20131203.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Allma1\\|", "") %>% str_replace("\\|.*$", "_Allma1")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/allomyces_macrogynus.fasta")

##### 58. Rozella allomycis #####

FASTA <- read.fasta("Rozal1_1_GeneCatalog_proteins_20140111.aa.fasta", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- names(FASTA) %>% str_replace("^jgi\\|Rozal1_1\\|", "") %>% str_replace("\\|.*$", "_Rozal11")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/rozella_allomycis.fasta")

##### 59. Caenorhabditis elegans #####

FASTA <- read.fasta("Caenorhabditis_elegans.WBcel235.pep.all.fa", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- 1:length(names(FASTA))
names(FASTA) <- names(FASTA) %>% str_replace("$", "_Caeel")
FASTA

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/caenorhabditis_elegans.fasta")

##### 60. Drosophila melanogaster #####

FASTA <- read.fasta("Drosophila_melanogaster.BDGP6.pep.all.fa", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- 1:length(names(FASTA))
names(FASTA) <- names(FASTA) %>% str_replace("$", "_Dmel")
FASTA

FASTA[length(names(FASTA))]

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/drosophila_melanogaster.fasta")

##### 61. Ciona intestinalis #####

FASTA <- read.fasta("Ciona_intestinalis.KH.pep.all.fa", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- 1:length(names(FASTA))
names(FASTA) <- names(FASTA) %>% str_replace("$", "_Cioin")
FASTA

FASTA[length(names(FASTA))]

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/ciona_intestinalis.fasta")

##### 62. Mnemiopsis leidyi #####

FASTA <- read.fasta("ML2.2.aa", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- 1:length(names(FASTA))
names(FASTA) <- names(FASTA) %>% str_replace("$", "_Mnele")
FASTA

FASTA[length(names(FASTA))]

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/mnemiopsis_leidyi.fasta")

##### 63. Hydra magnipapillata #####

FASTA <- read.fasta("GCF_000004095.1_Hydra_RP_1.0_protein.faa", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- 1:length(names(FASTA))
names(FASTA) <- names(FASTA) %>% str_replace("$", "_Mydma")
FASTA

FASTA[length(names(FASTA))]

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/hydra_magnipapillata.fasta")

##### 64. Monosiga brevicollis #####

FASTA <- read.fasta("GCF_000002865.3_V1.0_protein.faa", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- 1:length(names(FASTA))
names(FASTA) <- names(FASTA) %>% str_replace("$", "_Monbr")
FASTA

FASTA[length(names(FASTA))]

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/monosiga_brevicollis.fasta")

##### 65. Salpingloea rosetta #####

FASTA <- read.fasta("GCF_000188695.1_Proterospongia_sp_ATCC50818_protein.faa", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- 1:length(names(FASTA))
names(FASTA) <- names(FASTA) %>% str_replace("$", "_Salro")
FASTA

FASTA[length(names(FASTA))]

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/salpingloea_rosetta.fasta")

##### 66. Capsaspora owczarzaki #####

FASTA <- read.fasta("GCF_000151315.2_C_owczarzaki_V2_protein.faa", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- 1:length(names(FASTA))
names(FASTA) <- names(FASTA) %>% str_replace("$", "_Capow")
FASTA

FASTA[length(names(FASTA))]

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/capsaspora_owczarzaki.fasta")

##### 67. Sphaeroforma arctica #####

FASTA <- read.fasta("GCF_001186125.1_Spha_arctica_JP610_V1_protein.faa", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- 1:length(names(FASTA))
names(FASTA) <- names(FASTA) %>% str_replace("$", "_Sphar")
FASTA

FASTA[length(names(FASTA))]

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/sphaeroforma_arctica.fasta")

##### 68. Thecamonas trahens #####

FASTA <- read.fasta("GCF_000142905.1_TheTra_May2010_protein.faa", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- 1:length(names(FASTA))
names(FASTA) <- names(FASTA) %>% str_replace("$", "_Thetr")
FASTA

FASTA[length(names(FASTA))]

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/thecamonas_trahens.fasta")

##### 69. Entamoeba histolytica #####

FASTA <- read.fasta("GCF_000208925.1_JCVI_ESG2_1.0_protein.faa", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- 1:length(names(FASTA))
names(FASTA) <- names(FASTA) %>% str_replace("$", "_Enthi")
FASTA

FASTA[length(names(FASTA))]

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/entamoeba_histolytica.fasta")

##### 70. Dictyostelium discoideum #####

FASTA <- read.fasta("GCF_000004695.1_dicty_2.7_protein.faa", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- 1:length(names(FASTA))
names(FASTA) <- names(FASTA) %>% str_replace("$", "_Dicdi")
FASTA

FASTA[length(names(FASTA))]

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/dictyostelium_discoideum.fasta")

##### 71. Polysphondylium pallidumm #####

FASTA <- read.fasta("GCF_000004825.1_PolPal_Dec2009_protein.faa", seqtype = "AA", as.string = TRUE, set.attributes = FALSE)
names(FASTA)

names(FASTA) <- 1:length(names(FASTA))
names(FASTA) <- names(FASTA) %>% str_replace("$", "_Polpo")
FASTA

FASTA[length(names(FASTA))]

write.fasta(sequences = FASTA, names = names(FASTA), nbchar = 80, file.out = "../fixed_fasta_files/polysphondylium_pallidum.fasta")
