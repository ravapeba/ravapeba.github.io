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
## Serie instrumental, 1850-2020 
Una serie instrumental de temperaturas es aquella que se ha obtenido mediante registros directos de la temperatura del aire a partir de termómetros. La serie que se muestra a continuación se ha obtenido a partir de datos elaborados por el  [Met Office Hadley Centre](https://www.metoffice.gov.uk/hadobs/hadcrut4/index.html). Muestra la evolución de la temperatura media global en términos de anomalías respecto al periodo de referencia 1961-1990. Puede concultarse el fichero fuente de datos en el siguiente [enlace](https://www.metoffice.gov.uk/hadobs/hadcrut4/data/current/time_series/HadCRUT.4.6.0.0.annual_ns_avg.txt).

[comment]: #![](/img/serie_had_1y10.svg)
							
{% include image.html url="/img/serie_had_1y10.svg" description="Figura 1. Evolución de las temperaturas (anomalías respecto al periodo 1961-1990) entre los años 1850 y 2020. Fuente: HadCRUT4 near surface temperature data set, Met Office Hadley Centre, UK" %}

Aunque con altibajos, se aprecia en el gráfico una marcada tendencia al aumento de las temperaturas, al principio más lento y después más rápido, con dos 'acelerones' (aumento de la pendiente de la curva), uno a partir de 1910 y otro a partir de 1980, más o menos. Además, vemos como el rango (diferencia entre el valor máximo y mínimo durante el periodo) de anomalías de la serie alcanza casí los 1.2 ºC de temperatura, un valor que, como comprobaremos más adelante, es bastante superior al que podría explicar la variabilidad natural del clima en una escala temporal tan corta. Señalar también que los periodos [1850-1910] y [1940-1980] no registran una tendencia definida. Es probable que durante estos periodos la variabilidad natural del clima (asociada a variaciones en la actividad solar, erupciones volcánicas y procesos de interacción océano-atmósfera) haya contrarrestado la variabilidad asociada al forzamiento antropogénico (emisiones de gases de efecto invernadero). A partir de 1980, más o menos, vemos que la variabilidad natural no es capaz de contrarestar las tendencias positivas, salvo de forma puntual, asociadas a dichas emisiones.

## Serie de los dos últimos milenios, 200-2020
Si nos movemos más hacia el pasado, más allá de los registros instrumentales, los datos de temperatura que podemos recoger son indirectos. En climatología a este tipo de datos indirectos se les llama datos proxy o indicadores paleoclimáticos. Estos indicadores sirven para reconstruir las condiciones climáticas de momentos pasados de la historia de la tierra. Ejemplos conocidos son los anillos de los árboles, los testigos de hielo (perforaciones profundas en capas de hielo en glaciares o continentes helados), sedimentos marinos, polen, etc... La fiabilidad de estos datos se estima a partir de calibraciones frente a registros instrumentales. En el siguiente gráfico se muestran dos series superpuestas: 
- desde el año 200 hasta 1849: serie reconstruida a partir de datos proxy, publicada en Mann, M.E. and P.D. Jones, 2003
- desde el año 1850 hasta 2020: la serie instrumental del Hadley Center (ver Figura 1)
 
[comment]: # ![](/img/serie_mann.svg)

{% include image.html url="/img/serie_mann_had.svg" description="Figura 2. Evolución de las temperaturas (anomalía respecto al periodo 1961-1990) entre los años 200 y 2020. Fuentes: (hasta 1849) Mann, M.E. and P.D. Jones, 2003,2000 Year Hemispheric Multi-proxy Temperature Reconstructions,IGBP PAGES/World Data Center for Paleoclimatology. NOAA/NGDC Paleoclimatology Program, Boulder CO, USA.(desde 1850) HadCRUT4 near surface temperature data set, Met Office Hadley Centre, UK" %}

En la figura 2 se aprecia como las temperaturas de los dos últimos milenios han permanecido la mayor parte del periodo por debajo de la media de 1961-1990. Además, la variabilidad de dichas temperaturas durante la mayor parte del periodo es bastante menor que la observada durante el periodo instrumental, ver figura 1. Si admitimos, cosa razonable, que los forzamientos del clima asociados a las emisiones antropogénicas de gases de efecto invernadero son despreciables en la época pre-industrial, podemos sacar una sencilla conclusión a la vista del gráfico: la variabilidad natural (amplitud de los cambios de temperatura) del clima durante los dos últimos milenios, antes de la era industrial, ha estado acotada en unos 0.4 ºC (± 0.2ºC). Esto es lo que los forzamientos naturales importantes en esta escala temporal (ciclos solares, actividad volcánica, variabilidad asociada a la interacción oceano atmósfera, etc...) han podido hacer con la variable temperatura media global del planeta en buena parte de los dos últimos milenios, hasta la llegada de la era industrial. A partir de mediados del siglo XIX el comportamiento oscilante en torno a un estado de equilibrio se rompe, dando paso a una tendencia clara al aumento (*calentamiento global*). Dicha tendencia, como confirman las proyecciones climáticas, dará paso a un nuevo estado de equilibrio del clima (*cambio climático*) , en torno a una temperatura superior, que se alcanzará tanto más pronto cuanto antes se limiten de manera efectiva las emisiones de gases de efecto invernadero.  

## Serie larga de temperaturas y concentración de CO<sub>2</sub>

Los datos de la serie que se muestra a continuación se obtuvieron a partir del testigo de hielo de la [base Antartica de Vostok](https://es.wikipedia.org/wiki/Base_Vostok). La serie contiene registros de hace 417.160 años hasta hace 2.342 años. En el gráfico se aprecia la fuerte correlación entre la temperatura y la concentración de CO<sub>2</sub>. La alternancia de mínimos y máximos se corresponde con la de periodos glaciares e interglaciares,  cuya aparición responde en estas escalas temporales a factores astronómicos, siendo el periodo principal de la serie (lapso temporal entre dos máximos interglaciares) de unos 100.000 años, periodicidad en acuerdo con el ciclo teórico de Milanlovich asociado a la excentricidad de la órbita terrestre (ver referencia [3] donde se describen los factores astronómicos que dan lugar a los ciclos glaciares)

![](/img/vostok_serie.png)

Además se constata que durante todo el periodo los niveles de CO<sub>2</sub> están claramente por debajo de los valores actuales (ver serie de CO<sub>2</sub> en el [siguiente](#carbon) apartado), no superándose en ningún momento del periodo la concentración de 300 ppm. Para esta serie, la amplitud de los cambios de temperatura, entre periodos glaciares e inter-glaciares, es de unos 12ºC ([-9,3]ºC respecto a la temperatura 'presente', -55ºC, en la estación de Vostok). Esta variabilidad es muy superior a la de los últimos milenios, lo que nos deja claro que el forzamiento orbital o astronómico del clima (eficiente a escalas naturales de decenas de miles de años) es más de un orden de magnitud superior al forzamiento natural a escalas temporales menores, ver figura [2]. Esto también se cumple si hacemos la comparación con el forzamiento antropogénico del clima, al menos hasta ahora, aunque con una diferencia, el forzamiento astronómico es principalmente negativo, es decir, promueve principalmente periodos glaciares de muy larga duración, mientras que el antropogénico es positivo, es decir, promueve aumentos de temperatura, muy rápidos, ver figura 1. 

<a id="carbon"></a>
## Serie de CO<sub>2</sub> últimas décadas 
En el siguiente gráfico se muestra la evolución de las concentraciones de CO<sub>2</sub>, en partes por millón (ppm), registradas en el [observatorio de referencia de Mauna Loa](https://en.wikipedia.org/wiki/Mauna_Loa_Observatory), Hawai, durante las últimas décadas. La curva mostrada se conoce como [Curva de Keeling](https://es.wikipedia.org/wiki/Curva_de_Keeling#Mediciones_en_Mauna_Loa), en honor a Charles David Keeling.

![](/img/carbon.png)

<a id="detalles"></a>


## Referencias

[1] Series de datos de temperatura del [Met Office Hadley Centre](https://www.metoffice.gov.uk/hadobs/hadcrut4/index.html)

[2] Mann, M.E. and P.D. Jones, 2003,2000 Year Hemispheric Multi-proxy Temperature Reconstructions,IGBP PAGES/World Data Center for Paleoclimatology. NOAA/NGDC Paleoclimatology Program, Boulder CO, USA.
[Enlace al artículo](https://agupubs.onlinelibrary.wiley.com/doi/full/10.1029/2003GL017814)

[3] J.R. Petit, D. Raynaud, C. Lorius, J. Jouzel and G. Delaygue, N.I. Barkov, V.M. Kotlyakov. Historical Isotopic Temperature Record from the Vostok Ice Core
[Enlace al artículo](https://cdiac.ess-dive.lbl.gov/trends/temp/vostok/jouz_tem.htm)

[4] J.-M. Barnola, D. Raynaud, C. Lorius, N.I. Barkov. Historical Carbon Dioxide Record from the Vostok Ice Core
[Enlace al artículo](https://cdiac.ess-dive.lbl.gov/trends/co2/vostok.html)

[5] Variaciones orbitales y ciclos de Milankovitch.
[Enlace al artículo](https://es.wikipedia.org/wiki/Variaciones_orbitales)
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
