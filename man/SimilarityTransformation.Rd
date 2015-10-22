\name{SimilarityTransformation}
\alias{SimilarityTransformation}
\title{
Create an SimilarityTransformation object
}
\description{
    Creates objects of class SimilarityTransformation from control points or 
    directly from parameters
}
\usage{
SimilarityTransformation(controlPoints = data.frame(), 
parameters = numeric())
}
\arguments{
  \item{controlPoints}{data.frame containing control point coordinates arranged 
    in four (4) columns: X source, Y source, X target, Y target.}   
  \item{parameters}{A vector of four (4) parameters for representing the 
    transformation, namely: a, b, c and d, where\cr
      x' = ax + by + c\cr
      y' = ay - bx + d}
}
\details{
    Both controlPoints and parameters are optional, but one has to be given. In 
    the case of the latter, the name of the argument has to be specified, e.g., 
    SimilarityTransformation(parameters=c(1,2,3,4)) 
}
\value{Object of the class SimilarityTransformation}
\author{German Carrillo}
\seealso{
\code{\link{SimilarityTransformation-class}}}
\examples{
st <- SimilarityTransformation(parameters=c(1,2,3,4))
}
\keyword{ spatial }
