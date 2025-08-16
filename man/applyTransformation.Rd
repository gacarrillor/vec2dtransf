\name{applyTransformation}
\alias{applyTransformation}
\alias{applyTransformation-methods}
\alias{applyTransformation,Cartesian2DCoordinateTransformation-method}
\alias{transformCoordinates}
\title{Apply the transformation to an sp object}
\description{The main functionality of this package. Applies the transformation 
to an sp object, which can have geometry type point, line or polygon and can 
have an associated data.frame.
}
\usage{
applyTransformation(object, sp.object)
}
\arguments{
  \item{object}{Object of the class SimilarityTransformation or 
        AffineTransformation}
  \item{sp.object}{An object of type: SpatialPoints, SpatialPointsDataFrame, 
        SpatialLines, SpatialLinesDataFrame, SpatialPolygons or 
        SpatialPolygonsDataFrame}
}
\details{ 
    The transformation only affects sp object geometries. Attributes, IDs and 
    other sp object characteristics are preserved.

    The transformation can only be applied either on projected spatial data or 
    on spatial data with unknown projection information. Geographic data cannot 
    be transformed due to the nature of the methods (2D Cartesian).
}
\value{A transformed sp.object}
\references{
    Pebesma, E. and Bivand, R. sp package: \cr
        <URL: http://cran.r-project.org/web/packages/sp/index.html>
}
\author{German Carrillo}
\seealso{
\code{\link[sp]{sp}}, \code{\link{calculateParameters}}, \cr 
\code{\link{SimilarityTransformation-class}}, \cr
\code{\link{AffineTransformation-class}}
}
\examples{
# From the sp examples:
x <- c(1,1,1,2,2,2,3,3,3)
y <- c(1,2,3,1,2,3,1,2,3)
xy <- cbind(x,y)
S <- SpatialPoints(xy)

st=SimilarityTransformation(parameters=c(1,0,0.2,-0.2))
trS <- applyTransformation(st, S)
trS # Transformed sp object, have a look at the coordinates
}
\keyword{ spatial }
