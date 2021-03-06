% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PhenoGeneRankerFunctions.R
\name{RandomWalkRestart}
\alias{RandomWalkRestart}
\title{Random Walk Restart (RWR)}
\usage{
RandomWalkRestart(
  walkMatrix,
  geneSeeds,
  phenoSeeds,
  generatePValue = TRUE,
  numCores = 1,
  r = 0.7,
  eta = 0.5,
  tau = NULL,
  phi = NULL
)
}
\arguments{
\item{walkMatrix}{This is the walk matrix generated by the function
CreateWalkMatrix.}

\item{geneSeeds}{This is a vector for storing the ids of the genes that RWR starts
its walk. The final ranks show the proximity of the genes/phenotypes to the seed genes.}

\item{phenoSeeds}{This is a vector for storing the ids of the phenotypes that RWR starts
its walk. The final ranks show the proximity of the genes/phenotypes to the seed phenotypes.}

\item{generatePValue}{If this is TRUE, it will generate the probability values for each 
of the gene/phenotype rankings. If it is FALSE then the function will only return the ranks of genes/phenotype.}

\item{numCores}{This is the number of cores used for parallel processing.}

\item{r}{This parameter controls the global restart probability of RWR, and it has a default value of 0.7.}

\item{eta}{This parameter  controls restarting of RWR either to a gene seed or phenotype seeds, 
higher eta means utilizing gene seeds more than phenotype seeds, and it has a default value of 0.5.}

\item{tau}{This is a vector that stores weights for each of the 'gene'
layer in the complex gene and phenotype network. Each value of the vector
corresponds to the order of the network files in the input file of CreateWalkMatrix function. The weights must
sum up to the same number of gene layers. Default value gives equal weight to gene layers.}

\item{phi}{This is a vector that stores weights for each of the 'phenotype'
layer in the complex gene and phenotype network. Each value of the vector
corresponds to the order of the network files in the input file of CreateWalkMatrix function. The weights must
sum up to the same number of phenotype layers. Default value gives equal weight to phenotype layers.}
}
\value{
If the parameter generatePValue is TRUE, then this function returns a
  data frame of ranked genes/phenotypes with p-values with three columns; Gene/Phenotype
  id, score, p-value. If generatePValue is FALSE, then it returns a data frame
  of ranked genes/phenotypes with two columns; Gene/Phenotype id, score.
}
\description{
This method runs the random walk with restart on the provided
  walk matrix. It returns a data frame including ranked genes and phenotypes,
  and RWR scores of the genes and phenotypes. If generatePvalue is
  TRUE then it generates p-values along with the ranks.
}
\examples{
print("The data sets we used have not been published so the code below is unable to be run.")
#ranksWithPVal <- RandomWalkRestart(walkMatrix, c('gene1', 'gene2'), c(),TRUE)
#ranksWithPVal <- RandomWalkRestart(walkMatrix, c('gene1', 'gene2'), c(),TRUE)
#ranks <- RandomWalkRestart(CreateWalkMatrix('myFile.txt'),c('gene1'), 
 #      c('phenotype1', 'phenotype2'), FALSE)
#ranksWithPval <- RandomWalkRestart(CreateWalkMatrix('myFile.txt'),c('gene1'), 
 #      c(), TRUE, 12, 0.7, 0.6, tau =(1,0.5,1.5), phi =(1,0.5,1.5))

}
