---
layout: post
title: "Datos climáticos básicos"
date: 2020-12-24 07:00:00 +0100
categories: jekyll updat
---

En este artículo se muestran algunos gráficos con datos fundamentales sobre la evolución del clima en la tierra. Para la visualización de estos datos se ha empleado un paquete de R obtenido en  el repositorio de github  [GitHub - cortinah/hockeystick: Download and Visualize Essential Climate Change Data in R](https://github.com/cortinah/hockeystick). El nombre de este paquete es 'hockeystick', y permite descargar datos climáticos desde distintas url's de reconocido prestigio y plotearlos a partir de distintas funciones que se definen en él.

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

## Serie de CO<sub>2</sub> últimas décadas
En el siguiente gráfico se muestra la evolución de las concentraciones de CO<sub>2</sub>, en partes por millón (ppm), registradas en el observatorio de referencia situado en Mauna Loa, Hawai, durante las últimas décadas. La curva mostrada se conoce como [Curva de Keeling](https://es.wikipedia.org/wiki/Curva_de_Keeling#Mediciones_en_Mauna_Loa), en honor a Charles David Keeling.

![](/img/carbon.png)

## Serie larga de temperaturas y concentración de CO<sub>2</sub>

Los datos de la serie que se muestra a continuación se obtuvieron a partir del testigo de hielo de la base Antartica de Vostok. La serie contiene registros de hace 417.160 años hasta hace 2.342 años. En el gráfico se aprecia la fuerte correlación entre la temperatura y la concentración de CO2. Además se constata que durante todo el periodo los niveles de CO2 están claramente por debajo de los valores actuales (ver serie de CO2 en el segundo apartado), no superándose en ningún momento del periodo la concentración de 300 ppm.

![](/img/vostok_serie.png)