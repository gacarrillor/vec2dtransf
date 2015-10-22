\name{AffineTransformation-class}
\Rdversion{1.1}
\docType{class}
\alias{AffineTransformation-class}
\title{Class "AffineTransformation"}
\description{Class to define affine transformations to be applied on sp objects. 
    Affine transformations can rotate, shift, scale (even applying different 
    factors on each axis) and skew geometries.}
\section{Objects from the Class}{
Objects can be created by calls to the function \link{AffineTransformation}.
}
\section{Slots}{
  \describe{
    \item{\code{controlPoints}:}{Object of class \code{"data.frame"} containing 
        control point coordinates arranged in four (4) columns: X source, 
        Y source, X target, Y target. }
    \item{\code{parameters}:}{Object of class \code{"numeric"}. A vector of six 
        (6) parameters for representing the transformation, namely: a, b, c, d, 
        e and f, where \cr
              x' = ax + by + c \cr
              y' = dx + ey + f }
    \item{\code{residuals}:}{Object of class \code{"matrix"}. Only set if Least 
        Squares is applied, i.e., if more than three (3) control points were 
        provided. Residuals are the difference between transformed source 
        coordinates and target coordinates of control points. }
    \item{\code{rmse}:}{Object of class \code{"numericOrNULL"}. Only set if 
        Least Squares is applied, i.e., if more than three (3) control points 
        were provided. Root Mean Square Error, useful when comparing two 
        transformations. It measures the general deviation of transformed source
        coordinates with respect to target coordinates of control points. It has
        the same units as the coordinates, usually meters.}
  }
}
\section{Extends}{
Class \code{"\linkS4class{Cartesian2DCoordinateTransformation}"}, directly.
}
\section{Methods}{
\describe{
  \item{calculateParameters}{\code{signature(object = "AffineTransformation")}:\cr 
    Calculate transformation parameters from control points.}
}
}
\references{
    Iliffe, J. and Lott, R. Datums and map projections: For remote sensing, 
        GIS and surveying. Section 4.5.4. pp.115-117, 2008.
}
\author{German Carrillo}
\seealso{\code{\link{AffineTransformation}}}
\examples{
showClass("AffineTransformation")
}
\keyword{classes}
\keyword{spatial}
