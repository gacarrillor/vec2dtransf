\name{getRMSE}
\alias{getRMSE}
\alias{getRMSE-methods}
\alias{getRMSE,Cartesian2DCoordinateTransformation-method}
\title{Get RMSE}
\description{Retrieves the Root Mean Square Error (RMSE)  if redundant control 
    points were provided when creating the transformation object}
\usage{
getRMSE(object)
}
\arguments{
  \item{object}{Object of the class SimilarityTransformation or 
    AffineTransformation}
}
\details{RMSE is determined only if Least Squares is applied, i.e., if more than
    the required control points were provided. The RMSE is useful when comparing
    two transformations. It measures the general deviation of transformed source
    coordinates with respect to target coordinates of control points. It has the
    same units as the coordinates, usually meters.
}
\value{
    A number representing the RMSE
}
\author{German Carrillo}
\seealso{
    \code{\link{SimilarityTransformation-class}},
    \code{\link{AffineTransformation-class}}
}
\examples{
data(control.points)
at <- AffineTransformation(control.points[2:5])
calculateParameters(at)
getRMSE(at) 
}
\keyword{ regression }
\keyword{ spatial }
