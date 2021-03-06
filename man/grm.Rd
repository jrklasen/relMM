% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rel.R
\name{grm}
\alias{grm}
\title{Genetic relationship matrix}
\usage{
grm(x, checkPD = TRUE, ...)
}
\arguments{
\item{x}{a matrix (n x p) of n individuals (rows) and p SNPs (columns). The
alleles have to be coded by AA = 0, AB = 0.5, and BB = 1. Missing data are
not yet allowed.}

\item{checkPD}{logickal, if true (default) the nearest positive definite
matrix to the GRM is compute if the GRM does not fulfill these
requirements anyways.}

\item{...}{additional arguments to \code{\link[Matrix]{nearPD}}.}
}
\description{
Computers a genetic relationship matrix (GRM) from SNP data.
}
\examples{
# simulate data
set.seed(123)
x <- matrix(rbinom(1000, 2, .7)/2, 10, 100)
rownames(x) <- paste0("indiv", 1:nrow(x))
# estimated relationship matrix
genorel <- grm(x)

}

