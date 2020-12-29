pUC19 <- list(size=2686, marker="ampicillin", ori="ColE1", accession="L01397", BanI=c(235, 408, 550, 1647) )
pACYC184 <- list(size=4245, marker="Tet, Cam", ori="p15A" )

plasmidDB <- list()
plasmidDB[["pUC19"]] <- pUC19
plasmidDB[["pACYC184"]] <- pACYC184
plasmidDB[["pBR322"]] <- list(size=4361, marker="Amp, Tet", ori="ColE1" )

plasmidDB[["pACYC184"]] # retrieve the entire pACYC184 list

lapply(plasmidDB, function(x) { return(x$ori) })
x <- unlist(lapply(plasmidDB, function(x) { return(x$size) }))
min(x)
# or, to get the name too ...
x[x == min(x)]