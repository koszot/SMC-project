library(seqinr)
library(stringr)

FASTA_file <- read.fasta(file = "~/Desktop/MTA/SMC_project/71_genomes.fasta",  seqtype = "AA", set.attributes = FALSE)

U_count <- 0
for (x in 1:length(FASTA_file)) {
  U_temp <- sum(str_detect(FASTA_file[[x]], "U"))
  U_count <- U_count + U_temp
}
U_count

for (x in 1:length(FASTA_file)) {
  FASTA_file[[x]] <- str_replace(FASTA_file[[x]], "U", "X")
}

U_count <- 0
for (x in 1:length(FASTA_file)) {
  U_temp <- sum(str_detect(FASTA_file[[x]], "U"))
  U_count <- U_count + U_temp
}
U_count

write.fasta(sequences = FASTA_file, names = names(FASTA_file), nbchar = 80, file.out = "~/Desktop/MTA/SMC_project/71_genomes_fixed.fasta")


