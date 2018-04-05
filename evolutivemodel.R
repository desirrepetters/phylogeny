library(phangorn)

# BEST-FIT SUBSTITUTION MODEL TEST.

# Read the alignment file and create an object (specified in "Alignmentfile.fas")
Alignment <- "Alignmentfile.fas"

# Read the alignment with read.phyDat function. Specify file format (Fasta or other)
# Specify type of data (DNA, AA, CODON or USER)
Alignment2 <- read.phyDat(Alignment,
                          format = "fasta", type = "DNA")

# Test the Evolutive Models with modelTest function and get a table
# (model=all tests all models possible without a starting tree)
Model <- modelTest(Alignment2, model = "all")

# Order the table according to model selection criteria
# AIC, AICc, BIC are provided.
Model <- Model[order(Model["AIC"]),]

# See only the result, ordered by criteria selected
Model
