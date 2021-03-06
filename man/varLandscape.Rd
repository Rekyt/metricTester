% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/varLandscape.R
\name{varLandscape}
\alias{varLandscape}
\title{Create landscapes with varying degrees of heterogeneity}
\usage{
varLandscape(cells, seeds = 1, exponent = 1, cutoff = 0)
}
\arguments{
\item{cells}{The number of cells to divide each side of the arena into. Larger values
provide smoother looking surfaces, but values larger than 100 can require too much RAM
to run.}

\item{seeds}{The number of "peaks" or trait "optima" that will be chosen in the
landscape. Default is 1.}

\item{exponent}{The exponent to which the distances will be raised. Default is 1.
Values larger than 1 have the effect of making distance decay slowly at first, then
drop off more quickly at the end, while values smaller than 1 have the effect
of dropping off quickly and then decreasing slowly.}

\item{cutoff}{Values below which distances from the focal cell will be converted to
zero. This operates after the exponent is applied to the distance matrix, and after the
distances specific to a given focal cell have been scaled to min 0 max 1. The default
cutoff is zero, meaning that all but the most distanct cells are still influenced by
the new optimum of the focal cell. Increasing this number towards 1 has the effect of
minimizing the distance over which the focal cell influences neighboring cells.}
}
\value{
A square matrix of dimensions cells x cells.
}
\description{
This function will simulate 3-dimensional landscapes of varying complexity.
}
\details{
This function forms the guts of a new habitat filtering spatial simulation.
The output from the function is a square matrix with values corresponding, in my mind,
to optimum trait values for a location in 2d space. Alternatively, this might be useful
for simulations of elevational gradients. A good sequence to show how landscapes can be
varied might be (all with cells = 100 and exponent = 1) to change seeds from 1 to 2 to
10 while holding cutoff at 0. Then change cutoff from 0.01 to 0.1 to 0.9 while holding
seeds at 10.
}
\examples{
plotrix::color2D.matplot(varLandscape(10, seeds=1, exponent=1, cutoff=0),
cs1=c(0.2,0.4,0.8), cs2=c(0,0.5,0.8), cs3=c(1,0.5,0), border=NA)
}
\references{
Miller, E. T. 2016. A new dispersal-informed null model for
community ecology shows strong performance. biorxiv.
}

