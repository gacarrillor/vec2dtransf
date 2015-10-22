\name{vec2dtransf-package}
\alias{vec2dtransf}
\alias{show}
\docType{package}
\title{2D Cartesian Coordinate Transformation}
\description{This package provides classes for defining and applying both 
    affine and similarity transformations on vector spatial data (sp objects). 
    Transformations can be defined from control points or directly from
    parameters. If redundant control points are provided Least Squares is
    applied allowing to obtain residuals and RMSE.
}
\details{
\tabular{ll}{
Package: \tab vec2dtransf\cr
Type: \tab Package\cr
Version: \tab 1.1\cr
Date: \tab 2012-04-09\cr
License: \tab GPL (>= 2)\cr
Depends: \tab sp\cr
}
This package helps to define a transformation object (either similarity or 
affine) from control points or directly from parameters. Similarity 
transformations can rotate, shift and scale geometries whereas affine 
transformations can rotate, shift, scale (even applying different factors on 
each axis) and skew geometries.

If control points are provided, the 'calculateParameters' method must be used in
order to calculate the transformation parameters. If there are more control 
points than required (2 for similarity and 3 for affine) Least Squares is 
applied and therefore residuals as well as Root Mean Square Error (RMSE) are 
available via 'getResiduals' and 'getRMSE' methods. Parameters can always be 
accessed via 'getParameters' method.

Once parameters are known, sp objects can be transformed by usign the 
'applyTransformation' method. Supported sp objects are SpatialPoints, 
SpatialPointsDataFrame, SpatialLines, SpatialLinesDataFrame, SpatialPolygons and
SpatialPolygonsDataFrame.

Additionally, the method 'plotGridTransformation' can plot a grid of points to 
see the effect of the transformation on a given extent. 
}
\author{
German Carrillo (\url{http://geotux.tuxfamily.org}) \cr
Maintainer: German Carrillo <geotux_tuxman@linuxmail.org>
}
\references{
    Iliffe, J. and Lott, R. Datums and map projections: For remote sensing, 
        GIS and surveying. Section 4.5. pp.109-117,135-137, 2008. \cr

    UC Davis Soil Resource Laboratory. Case Study: Fixing Bad TIGER Line data 
        with R and PostGIS. 
        <URL: http://casoilresource.lawr.ucdavis.edu/drupal/node/433> \cr

    Knippers, R. 2D Cartesian coordinate transformations. 2009.\cr
    <URL: http://kartoweb.itc.nl/geometrics/Coordinate\%20transformations/coordtrans.html>\cr

    Pebesma, E. and Bivand, R. sp package: \cr
        <URL: http://cran.r-project.org/web/packages/sp/index.html>
}
\keyword{ package }
\keyword{ spatial }
