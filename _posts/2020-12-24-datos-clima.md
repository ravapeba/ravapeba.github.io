---
layout: post
title: "Datos climáticos visualizados con R"
date: 2020-12-24 07:00:00 +0100
categories: jekyll updat
---

Este artículo está basado en  el repositorio de github  [GitHub - cortinah/hockeystick: Download and Visualize Essential Climate Change Data in R](https://github.com/cortinah/hockeystick). En el se puede descargar el paquete de R 'hockeystick', que permite descargar datos climáticos desde distintas url's y plotearlos a partir de distintas funciones que se definen en él.

Las principales funciones para la obtención de datos son las siguientes:
> get_carbon(), get_temp(), get_sea_level(), get_seaice(), get_paleo()

Las principales funciones para el ploteo de dichos datos son las siguientes:
> plot_carbon(), plot_temp(), warming_stripes(), plot_sea_level(), plot_seaice(), plot_paleo(), 


## Evolución de las temperaturas desde 1878

La función get_temp() recoge los datos en [https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv](https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv).

A partir de estos datos la función plot_temp() genera el gráfico que se muestra a continuación, con la evolución de las temperaturas, en términos de anomalías respecto al periodo de referencia 1951-1980, durante el periodo instrumental , es decir, periodo durante el cual se tienen registros directos a partir de termómetros.

```r
library(hockeystick)
anomaly <- get_temp()
plot_temp(anomaly)
```
![](/img/temp_avg_global.png)

