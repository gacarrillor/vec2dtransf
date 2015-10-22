\name{AffineTransformation}
\alias{AffineTransformation}
\title{
    Create an AffineTransformation object
}
\description{
    Creates objects of class AffineTransformation from control points or 
    directly from parameters
}
\usage{
AffineTransformation(controlPoints = data.frame(), 
    parameters = numeric())
}
\arguments{
  \item{controlPoints}{data.frame containing control point coordinates arranged 
    in four (4) columns: X source, Y source, X target, Y target.}
  \item{parameters}{A vector of six (6) parameters for representing the 
    transformation, namely: a, b, c, d, e and f, where \cr
      x' = ax + by + c \cr
      y' = dx + ey + f}
}
\details{
    Both controlPoints and parameters are optional, but one has to be given. In 
    the case of the latter, the name of the argument has to be specified, e.g., 
    AffineTransformation(parameters=c(1,2,3,4,5,6)) 
}
\value{Object of the class AffineTransformation}
\author{German Carrillo}
\seealso{\code{\link{AffineTransformation-class}}}
\examples{
at <- AffineTransformation(parameters=c(1,2,3,4,5,6))
}
\keyword{ spatial }
