\name{getParameters}
\alias{getParameters}
\alias{getParameters-methods}
\alias{getParameters,Cartesian2DCoordinateTransformation-method}
\title{Get tranformation parameters}
\description{Retrieves the transformation parameters}
\usage{
getParameters(object)
}
\arguments{
  \item{object}{Object of the class SimilarityTransformation or 
    AffineTransformation}
}
\details{
    If the transformation object was initialized with control points, parameters 
    can be retreived only after calling the method 'calculateParameters'.
}
\value{A numeric vector with the transformation parameters.}
\references{
    Iliffe, J. and Lott, R. Datums and map projections: For remote sensing, 
        GIS and surveying. Section 4.9.3-4. pp.135-137, 2008.
}
\author{German Carrillo}
\seealso{
\code{\link{SimilarityTransformation-class}}
\code{\link{AffineTransformation-class}}
}
\examples{
# From parameters, similarity transformation
st <- SimilarityTransformation(parameters=c(1,2,3,4))
getParameters(st)

# From parameters, affine transformation
at <- AffineTransformation(parameters=c(1,2,3,4,5,6))
getParameters(at)

# From control points, affine transformation
data(control.points)
at2 <- AffineTransformation(control.points[2:5])
getParameters(at2) # Still unknown parameters
calculateParameters(at2)
getParameters(at2) 
}
\keyword{ spatial }
