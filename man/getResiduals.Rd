\name{getResiduals}
\alias{getResiduals}
\alias{getResiduals-methods}
\alias{getResiduals,Cartesian2DCoordinateTransformation-method}
\title{Get residuals}
\description{Retrieves the residuals if redundant control points were provided 
    when creating the transformation object}
\usage{
getResiduals(object)
}
\arguments{
  \item{object}{Object of the class SimilarityTransformation or 
    AffineTransformation}
}
\details{Residuals are determined only if Least Squares is applied, i.e., if 
    more than the required control points were provided. Residuals are the 
    difference between transformed source coordinates and target coordinates of 
    control points.
}
\value{2-column matrix with coordinate differences}
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
data(control.points)
at <- AffineTransformation(control.points[2:5])
calculateParameters(at)
getResiduals(at) 
}
\keyword{ regression }
\keyword{ spatial }
