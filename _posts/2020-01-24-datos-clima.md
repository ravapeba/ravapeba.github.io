---
layout: post
title: "Series climáticas históricas"
date: 2021-01-24 07:00:00 +0100
categories: jekyll update
---

* Do not remove this line (it will not be displayed)
{:toc}

## Introducción
En este artículo se muestran tres series históricas de temperatura media global en superficie, que es un buen parámetro para una primera aproximación a la evolución del clima en la tierra. Las distintas fuentes de estos datos se relacionan en cada apartado o bien al final del artículo, en el último apartado sobre [detalles técnicos](#detalles).

<a id="temp_instru"></a>
## Serie instrumental 1850-2020 

Una serie instrumental de temperaturas es aquella que se ha obtenido mediante registros directos de la temperatura del aire a partir de termómetros. La serie que se muestra a continuación se ha obtenido a partir de datos elaborados por el  [Met Office Hadley Centre](https://www.metoffice.gov.uk/hadobs/hadcrut4/index.html). Muestra la evolución de la temperatura media global en términos de anomalías respecto al periodo de referencia 1961-1990. Puede concultarse el fichero fuente de datos en el siguiente [enlace](https://www.metoffice.gov.uk/hadobs/hadcrut4/data/current/time_series/HadCRUT.4.6.0.0.annual_ns_avg.txt).

![](/img/serie_had.svg)

Aunque con altibajos, se aprecia en el gráfico una tendencia continuada al aumento de las temperaturas, al principio más lento y después más rápido, con dos 'acelerones' (aumento de la pendiente de la curva), uno a partir de 1910 y otro a partir de 1980, más o menos. Además, vemos como el rango (diferencia entre el valor máximo y mínimo durante el periodo) de anomalías de la serie alcanza casí los 1.4 ºC de temperatura, un valor que, como comprobaremos más adelante, es bastante superior al que podría explicar la variabilidad natural del clima en una escala temporal tan corta.

## Serie de los dos últimos milenios (200-1980 DC)
Si nos movemos más hacia el pasado, más allá de los registros instrumentales, los datos de temperatura que podemos recoger son indirectos. En climatología a este tipo de datos indirectos se les llama datos proxy o indicadores paleoclimáticos. Estos indicadores sirven para reconstruir las condiciones climáticas de momentos pasados de la historia de la tierra. Ejemplos conocidos son los anillos de los árboles, los testigos de hielo (perforaciones profundas en capas de hielo en glaciares o continentes helados), sedimentos marinos, polen, etc... La fiabilidad de estos datos se estima a partir de calibraciones frente a registros instrumentales. Una reconstrucción a partir de datos proxy de diferentes fuentes para los dos últimos milenios (priodo 200-1980) se muestra en el siguiente gráfico. 

%![](/img/serie_mann.svg)
*Figura 2. Evolución de las temperaturas (anomalía respecto al periodo 1961-1990) entre los años 200DC y 1980DC. Fuente: Mann, M.E. and P.D. Jones, 2003, 2000 Year Hemispheric Multi-proxy Temperature Reconstructions,IGBP PAGES/World Data Center for Paleoclimatology. NOAA/NGDC Paleoclimatology Program, Boulder CO, USA.*

{% include image.html url="/img/serie_mann.svg" description="Figura 2. Evolución de las temperaturas (anomalía respecto al periodo 1961-1990) entre los años 200DC y 1980DC. Fuente: Mann, M.E. and P.D. Jones, 2003, 2000 Year Hemispheric Multi-proxy Temperature Reconstructions,IGBP PAGES/World Data Center for Paleoclimatology. NOAA/NGDC Paleoclimatology Program, Boulder CO, USA." %}


En la figura se aprecia como las temperaturas de los dos últimos milenios han permanecido la mayor parte del periodo por debajo de la media de 1961-1990. Además, la variabilidad de dichas temperaturas es bastante menor que la observada en la figura con el registro instrumental más arriba. Si admitimos, cosa razonable, que los forzamientos del clima asociados a las emisiones antropogénicas de gases de efecto invernadero son despreciables en la época pre-industrial, podemos sacar una sencilla conclusión a la vista del gráfico: la variabilidad natural del clima en los dos últimos milenios ha estado acotada en unos 0.4 ºC. Esto es lo que los forzamientos naturales importantes en esta escala temporal (ciclos solares, actividad volcánica, variabilidad asociada a la interacción oceano atmósfera, etc...) han podido hacer con la variable temperatura media global del planeta. Sin embargo, si nos fijamos en la figura 
## Serie larga de temperaturas y concentración de CO<sub>2</sub>

Los datos de la serie que se muestra a continuación se obtuvieron a partir del testigo de hielo de la [base Antartica de Vostok](https://es.wikipedia.org/wiki/Base_Vostok). La serie contiene registros de hace 417.160 años hasta hace 2.342 años. En el gráfico se aprecia la fuerte correlación entre la temperatura y la concentración de CO<sub>2</sub>. La alternancia de mínimos y máximos  se corresponde con la de periodos glaciares e interglaciares, siendo el periodo principal de la serie (lapso temporal entre dos máximos interglaciares) de unos 100.000 años.

![](/img/vostok_serie.png)

Además se constata que durante todo el periodo los niveles de CO<sub>2</sub> están claramente por debajo de los valores actuales (ver serie de CO<sub>2</sub> en el [siguiente](#carbon) apartado), no superándose en ningún momento del periodo la concentración de 300 ppm.

<a id="carbon"></a>
## Serie de CO<sub>2</sub> últimas décadas 
En el siguiente gráfico se muestra la evolución de las concentraciones de CO<sub>2</sub>, en partes por millón (ppm), registradas en el [observatorio de referencia de Mauna Loa](https://en.wikipedia.org/wiki/Mauna_Loa_Observatory), Hawai, durante las últimas décadas. La curva mostrada se conoce como [Curva de Keeling](https://es.wikipedia.org/wiki/Curva_de_Keeling#Mediciones_en_Mauna_Loa), en honor a Charles David Keeling.

![](/img/carbon.png)

<a id="detalles"></a>
## Detalles técnicos 

Para la visualización de los datos en las gráficas de este artículo se ha empleado el  paquete de R 'hockeystick', obtenido en  el repositorio de github  [GitHub - cortinah/hockeystick: Download and Visualize Essential Climate Change Data in R](https://github.com/cortinah/hockeystick). Las funciones definidas e este paquete permiten descargar datos climáticos desde distintas url's de reconocido prestigio y plotearlos a partir de distintas funciones que se definen en él.

Las principales funciones para la obtención de datos son las siguientes:
> get_carbon(), get_temp(), get_sea_level(), get_seaice(), get_paleo()

Las principales funciones para el ploteo de dichos datos son las siguientes:
> plot_carbon(), plot_temp(), warming_stripes(), plot_sea_level(), plot_seaice(), plot_paleo()

Por ejemplo, la función get_temp() recoge los datos en [https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv](https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv)., y a partir de estos datos la función plot_temp() genera el gráfico mostrado en la [serie instrumental](#temp_instru). 

```r
library(hockeystick)
anomaly <- get_temp()
plot_temp(anomaly)
```

[https://data.giss.nasa.gov/gistemp/](https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv)