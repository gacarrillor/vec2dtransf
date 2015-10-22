# vec2dtransf
2D Cartesian Coordinate Transformation

A package for applying affine and similarity transformations on vector spatial data (sp objects). Transformations can be defined from control points or directly from parameters. If redundant control points are provided Least Squares is applied allowing to obtain residuals and RMSE.

Visit vec2dtransf in CRAN: https://cran.r-project.org/web/packages/vec2dtransf/index.html 

### Installation
Run in R:
```R
install.packages("vec2dtransf")
```

### Usage 

Turn this (displaced spatial data): 

![Original scenario][1]

Into this (alligned spatial data): 

![Ideal scenario][2]

See my blog post describing a full example at: http://geotux.tuxfamily.org/index.php/en/component/k2/item/302-affine-and-similarity-transformations-in-r 

For complete documentation of the package, see: https://cran.r-project.org/web/packages/vec2dtransf/vec2dtransf.pdf

[1]: http://downloads.tuxfamily.org/tuxgis/geoblogs/vec2dtransf/imgs/08_vec2dtransf.png
[2]: http://downloads.tuxfamily.org/tuxgis/geoblogs/vec2dtransf/imgs/07_vec2dtransf.png
