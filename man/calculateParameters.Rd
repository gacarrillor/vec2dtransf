\name{calculateParameters}
\alias{calculateParameters}
\alias{calculateParameters-methods}
\alias{calculateParameters,AffineTransformation-method}
\alias{calculateParameters,SimilarityTransformation-method}
\title{Calculate parameters}
\description{Calculates transformation parameters from control points}
\usage{
calculateParameters(object)
}
\arguments{
  \item{object}{Object of the class SimilarityTransformation or 
    AffineTransformation}
}
\details{
    If control points are provided, the 'calculateParameters' method must be 
    used in order to calculate the transformation parameters. If there are more 
    control points than required (2 for similarity and 3 for affine) Least 
    Squares is applied and therefore residuals as well as Root Mean Square Error
    (RMSE) are available via 'getResiduals' and 'getRMSE' methods. Parameters 
    can always be accessed via 'getParameters' method.
}
\value{Modifies the original object}
\references{
    Iliffe, J. and Lott, R. Datums and map projections: For remote sensing, 
        GIS and surveying. Section 4.5. pp.109-117, 2008.

    UC Davis Soil Resource Laboratory. Case Study: Fixing Bad TIGER Line data 
        with R and PostGIS. 
        <URL: http://casoilresource.lawr.ucdavis.edu/drupal/node/433>
}
\author{German Carrillo}
\seealso{
\code{\link{SimilarityTransformation}}, \code{\link{AffineTransformation}}, 
    \code{\link{getResiduals}}, \code{\link{getRMSE}}, 
    \code{\link{getParameters}}
}
\examples{
data(control.points)
at <- AffineTransformation(control.points[2:5])
getParameters(at) # Still unknown 
calculateParameters(at)
getParameters(at) # Now there are parameters!
}
\keyword{ regression }
\keyword{ spatial }
