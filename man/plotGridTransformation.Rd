\name{plotGridTransformation}
\alias{plotGridTransformation}
\alias{plotGridTransformation-methods}
\alias{plotGridTransformation,Cartesian2DCoordinateTransformation-method}
\title{Plot grid transformation}
\description{Plots a grid transformed to visualize the effects of the 
transformation on a given extent}
\usage{
plotGridTransformation(object, bbox, numberOfPoints)
}
\arguments{
  \item{object}{Object of the class SimilarityTransformation or 
    AffineTransformation}
  \item{bbox}{An SP bbox object, i.e. a 2x2 matrix with coordinates}
  \item{numberOfPoints}{Number of points to represent the grid, perfect squares
    are recommended.}
}
\details{The grid is made out of points over the extent defined by bbox. If 
    numberOfPoints has not an integer square root the grid will contain less 
    points.

    The grid is transformed using the transformation parameters and displayed 
    over the source grid to see the effects of the transformation. 

    The source grid is drawn in red whereas the transformed one is green.

    This code is based on "Case Study: Fixing Bad TIGER Line data with R and 
    PostGIS" (See References).
}
\references{
    UC Davis Soil Resource Laboratory. Case Study: Fixing Bad TIGER Line data 
    with R and PostGIS. 
        <URL: http://casoilresource.lawr.ucdavis.edu/drupal/node/433>
}
\author{German Carrillo}
\seealso{\code{\link{applyTransformation}}}
\examples{
# From the sp examples:
x <- c(1,1,1,2,2,2,3,3,3)
y <- c(1,2,3,1,2,3,1,2,3)
xy <- cbind(x,y)
S <- SpatialPoints(xy)

st=SimilarityTransformation(parameters=c(1,0,0.2,-0.2))
plotGridTransformation(st, bbox(S), 25)
}
\keyword{ spatial }
