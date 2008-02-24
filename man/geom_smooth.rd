\name{GeomSmooth}
\alias{geom_smooth}
\alias{GeomSmooth}
\title{geom_smooth}
\description{Add a smoothed condition mean.}
\details{
This page describes \code{\link{geom_smooth}}, see \code{\link{layer}} and \code{\link{qplot}} for how to create a complete plot from individual components.
}
\section{Aesthetics}{
The following aesthetics can be used with geom_smooth.  Aesthetics are mapped to variables in the data with the \code{\link{aes}} function: \code{geom_smooth(\code{\link{aes}}(x = var))}
\itemize{
  \item \code{x}: x position (\strong{required}) 
  \item \code{y}: y position (\strong{required}) 
  \item \code{colour}: border colour 
  \item \code{fill}: internal colour 
  \item \code{size}: size 
  \item \code{linetype}: line type 
  \item \code{weight}: observation weight used in statistical transformation 
}
}
\usage{geom_smooth(mapping=NULL, data=NULL, stat="smooth", position="identity", ...)}
\arguments{
 \item{mapping}{mapping between variables and aesthetics generated by aes}
 \item{data}{dataset used in this layer, if not specified uses plot dataset}
 \item{stat}{statistic used by this layer}
 \item{position}{position adjustment used by this layer}
 \item{...}{ignored }
}
\seealso{\itemize{
  \item \url{http://had.co.nz/ggplot/geom_smooth.html}
}}
\value{A \code{\link{layer}}}
\examples{\dontrun{
    # See stat_smooth for examples
}}
\author{Hadley Wickham, \url{http://had.co.nz/}}
\keyword{hplot}
