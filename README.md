[![](https://www.r-pkg.org/badges/version/vec2dtransf?color=green)](https://cran.r-project.org/package=vec2dtransf)
[![CRAN checks](https://badges.cranchecks.info/summary/vec2dtransf.svg)](https://cran.r-project.org/web/checks/check_results_vec2dtransf.html)
[![](https://cranlogs.r-pkg.org/badges/grand-total/vec2dtransf?color=green)](https://cran.r-project.org/package=vec2dtransf)
[![](https://cranlogs.r-pkg.org/badges/last-month/vec2dtransf?color=green)](https://cran.r-project.org/package=vec2dtransf)
[![](https://cranlogs.r-pkg.org/badges/last-week/vec2dtransf?color=green)](https://cran.r-project.org/package=vec2dtransf)
[![](https://img.shields.io/github/languages/code-size/gacarrillor/vec2dtransf.svg)](https://github.com/gacarrillor/vec2dtransf)

# vec2dtransf
2D Cartesian Coordinate Transformation

Applies affine and similarity transformations on vector spatial data (sp objects). Transformations can be defined from control points or directly from parameters. If redundant control points are provided Least Squares is applied allowing to obtain residuals and RMSE.

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
