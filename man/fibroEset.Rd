\name{fibroEset}
\alias{fibroEset}
\docType{data}
\title{ Data from the microarray experiment of human, bonobo and gorilla cultured fibroblasts done by Karaman et al. (2003)}
\description{
Total RNA from early-passage primary fibroblast cell lines from 18 human, 10 bonobo and 11 gorilla donors was extracted and gene-expression analysis performed using Affymetrix U95Av2.}
\usage{data(fibroEset)}
\format{
Expression set with 12625 genes and 46 samples. \cr
 There are 2 covariates listed.
 \itemize{
  \item \code{samp}: sample code.
  \item \code{species}: The species the sample was obtained from. \cr 
   h: human (Homo sapiens), b: bonobo (Pan paniscus), g: gorilla (Gorilla gorilla)
}
}
\details{
Data preprocessing (as described in the publication): \cr
The raw expression scores for every gene in every sample were generated using AFFYMETRIX GENECHIP 5.0. Normalization was done by calculating multiplicative scaling factors on the basis of the median intensity of the 60th to 95th percentile of gene-expression scores. All gene-expression scores below 100 were set to 100 to minimize noise associated with less robust measurements of rare transcripts.

The usage of a human chip can cause mismatches between the ape RNA samples and human oligonucleotide probes. Because 16 perfect match probes interrogate each gene, the effect of mismatches should be minimal (Hacia et al. 1998). 
}
\source{
  \url{http://lichad.usc.edu/supplement/index.html}
}
\references{
  Karaman M.W., Houck M.L., Chemnick L.G., Nagpal S., Chawannakul D., Sudano D., Pike B.L., Ho V.V., Ryder O.A. & Hacia J.G. (2003) Comparative Analysis of Gene-Expression Patterns in Human and African Great Ape Cultured Fibroblasts. \emph{Genome Research} \bold{13}, 1619-1630.

  Hacia J.G. et al. (1998) Evolutionary sequence comparisons using high-density oligonucleotide arrays. \emph{Nature genetics} \bold{18}, 155-158.
}
\examples{
library(Biobase)
data(fibroEset)
xx <- exprs(fibroEset)
colnames(xx) <- as.character(fibroEset$species)
dim(xx)
xx[1:5,1:5]
fibroEset$species
featureNames(fibroEset)[1:20]
}
\keyword{datasets}
