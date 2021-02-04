---
layout: post
title: "Series climáticas históricas"
date: 2021-01-24 07:00:00 +0100
categories: jekyll update
---

* Do not remove this line (it will not be displayed)
{:toc}

## Introducción
En este artículo se muestran dos series históricas de temperatura media global en superficie, y una serie larga con las temperaturas registradas en la estación antártida de Vostok. Estas son series climáticas de referencia que pueden ayudarnos a entender la evolución del clima en la tierra durante el último medio millón de años, lo cual es también una buena ayuda para entender la evolución que anticipan las proyecciones climáticas hacia el futuro. Las distintas fuentes de datos, a partir de las cuales se han realizado los gráficos, se relacionan en cada apartado o bien al final del artículo, en el apartado de [referencias](#referencias).

<a id="temp_instru"></a>
## Serie instrumental, 1850-2020 
Una serie instrumental de temperaturas es aquella que se ha obtenido mediante registros directos de la temperatura del aire a partir de termómetros. La serie que se muestra a continuación se ha obtenido a partir de datos elaborados por el  [Met Office Hadley Centre](https://www.metoffice.gov.uk/hadobs/hadcrut4/index.html). Muestra la evolución de la temperatura media global en términos de anomalías respecto al periodo de referencia 1961-1990. Puede concultarse el fichero fuente de datos en el siguiente [enlace](https://www.metoffice.gov.uk/hadobs/hadcrut4/data/current/time_series/HadCRUT.4.6.0.0.annual_ns_avg.txt).

[comment]: #![](/img/serie_had_1y10.svg)
							
{% include image.html url="/img/serie_had_1y10.svg" description="Figura 1. Evolución de las temperaturas (anomalías respecto al periodo 1961-1990) entre los años 1850 y 2020. Fuente de los datos: HadCRUT4 near surface temperature data set, Met Office Hadley Centre, UK. Ver referencia [1]." %}

Aunque con altibajos, se aprecia en el gráfico una marcada tendencia al aumento de las temperaturas, al principio más lento y después más rápido, con dos 'acelerones' (aumento de la pendiente de la curva), uno a partir de 1910 y otro a partir de 1980, más o menos. Además, vemos como el rango (diferencia entre el valor máximo y mínimo durante el periodo) de anomalías de la serie alcanza casí los 1.2 ºC de temperatura, un valor que, como comprobaremos más adelante, es bastante superior al que podría explicar la variabilidad natural del clima en una escala temporal tan corta. Señalar también que los periodos [1850-1910] y [1940-1980] no registran una tendencia definida. Es probable que durante estos periodos la variabilidad natural del clima (asociada a variaciones en la actividad solar, erupciones volcánicas y procesos de interacción océano-atmósfera) haya contrarrestado la variabilidad asociada al forzamiento antropogénico (emisiones de gases de efecto invernadero). A partir de 1980, más o menos, vemos que la variabilidad natural no es capaz de contrarestar las tendencias positivas, salvo de forma puntual, asociadas a dichas emisiones.

## Serie de los últimos 2000 años, 200-2020
Si nos movemos más hacia el pasado, más allá de los registros instrumentales, los datos de temperatura que podemos recoger son indirectos. En climatología a este tipo de datos indirectos se les llama datos proxy o indicadores paleoclimáticos. Estos indicadores sirven para reconstruir las condiciones climáticas de momentos pasados de la historia de la tierra. Ejemplos conocidos son los anillos de los árboles, los testigos de hielo (perforaciones profundas en capas de hielo en glaciares o continentes helados), sedimentos marinos, polen, etc... La fiabilidad de estos datos se estima a partir de calibraciones frente a registros instrumentales. En el siguiente gráfico se muestran dos series superpuestas: 
- desde el año 200 hasta 1849: serie reconstruida a partir de datos proxy, publicada en Mann, M.E. and P.D. Jones, 2003
- desde el año 1850 hasta 2020: la serie instrumental del Hadley Center (ver Figura 1)
 
[comment]: # ![](/img/serie_mann.svg)

{% include image.html url="/img/serie_mann_had2.svg" description="Figura 2. Evolución de las anomalías de temperatura (respecto al periodo 1961-1990) entre los años 200 y 2020 DC. Fuente de los datos: ver referencias [1] y [2] para los periodos [1850-2020] y [200-1849] respectivamente" %}

En la figura 2 se aprecia como las temperaturas de los dos últimos milenios han permanecido la mayor parte del periodo por debajo de la media de 1961-1990. Además, la variabilidad de dichas temperaturas antes de la era industrial es bastante menor que la observada después (se ha sombreado en gris la serie instrumental), quedando acotada en unos ± 0.2ºC en torno a un estado de equilibrio bastante por debajo de las temperaturas actuales. Esto es lo que los forzamientos naturales importantes en esta escala temporal (ciclos solares, actividad volcánica, variabilidad asociada a la interacción oceano atmósfera, etc...) han podido modificar la variable temperatura media global del planeta en buena parte de los dos últimos milenios, hasta la llegada de la era industrial. A partir de mediados del siglo XIX el comportamiento oscilante en torno a un estado de equilibrio se rompe, dando paso a una tendencia clara al aumento (*calentamiento global*). Es altamente probable, de acuerdo con las proyecciones climáticas más recientes (ver referencia [7]), que dicho calentamiento global dé paso a un nuevo estado de equilibrio del clima (*cambio climático*), en torno a una temperatura superior, que se alcanzará tanto más pronto cuanto antes se limiten de manera efectiva las emisiones de gases de efecto invernadero.   

## Serie larga, últimos 420.000 años

Para tener una referencia, la edad de esta serie es próxima a la del Homo Sapiens. Los datos se obtuvieron a partir del testigo de hielo de la [base Antartica de Vostok](https://es.wikipedia.org/wiki/Base_Vostok). La serie contiene registros desde hace 417.160 años hasta hace 2.342. En el gráfico se aprecia la fuerte correlación entre la temperatura y la concentración de CO<sub>2</sub> durante todo el periodo. La alternancia de mínimos y máximos se corresponde con la de periodos glaciares e interglaciares,  cuya aparición responde a factores astronómicos, siendo el periodo principal de la serie (lapso temporal entre dos máximos interglaciares) de unos 100.000 años, periodicidad en acuerdo con el ciclo teórico de Milanlovich asociado a la excentricidad de la órbita terrestre (ver referencia [6]).

{% include image.html url="/img/serie_vostok.svg" description="Figura 3. Evolución de las temperaturas (anomalías respecto al valor promedio en Vostok a finales del siglo XX) durante los últimos 420.000 años. Fuente de los datos: ver referencias [3] y [4]" %}

En el gráfico se constata que durante todo el periodo los niveles de CO<sub>2</sub> están claramente por debajo de los valores actuales (superiores a 400 ppm), no superándose en ningún momento la concentración de 300 ppm. Para esta serie, la amplitud de los cambios de temperatura, variación entre periodos glaciares e inter-glaciares, es de unos 12ºC ([-9,3]ºC respecto a la temperatura media en la estación de Vostok, -55ºC , calculada en el momento del estudio, a finales del siglo XX, ver referencia [5]). Este rango de variabilidad, asociado al forzamiento orbital o astronómico del clima (eficiente a escalas naturales de decenas de miles de años), es muy superior (más de un orden de magnitud) al forzamiento natural del clima a escalas temporales menores, como las representadas en la figura 2. Esto también se cumple si hacemos la comparación con el forzamiento antropogénico del clima, al menos hasta ahora, aunque con una diferencia, el forzamiento astronómico es principalmente negativo, es decir, promueve periodos glaciares de muy larga duración, mientras que el antropogénico es positivo, es decir, promueve aumentos de temperatura. Se añade, además, que los cambios asociados al forzamiento antropogénico del clima son extremadamente rápidos, notorios incluso a escala decadal (más de 0.7 ºC en los últimos 40 años), como muestran las figuras 1 y 2. 

<a id="referencias"></a>
## Referencias

[1] Series de datos de temperatura del [Met Office Hadley Centre](https://www.metoffice.gov.uk/hadobs/hadcrut4/index.html)

[2] Mann, M.E. and P.D. Jones, 2003,2000 Year Hemispheric Multi-proxy Temperature Reconstructions,IGBP PAGES/World Data Center for Paleoclimatology. NOAA/NGDC Paleoclimatology Program, Boulder CO, USA.
[Enlace al artículo](https://agupubs.onlinelibrary.wiley.com/doi/full/10.1029/2003GL017814)

[3] J.R. Petit, D. Raynaud, C. Lorius, J. Jouzel and G. Delaygue, N.I. Barkov, V.M. Kotlyakov. Historical Isotopic Temperature Record from the Vostok Ice Core.
[Enlace al artículo](https://cdiac.ess-dive.lbl.gov/trends/temp/vostok/jouz_tem.htm)

[4] J.-M. Barnola, D. Raynaud, C. Lorius, N.I. Barkov. Historical Carbon Dioxide Record from the Vostok Ice Core.
[Enlace al artículo](https://cdiac.ess-dive.lbl.gov/trends/co2/vostok.html)

[5] J.R. Petit, D. Raynaud, C. Lorius, J. Jouzel, y otros. Climate and atmospheric history of the past 420,000 years from the Vostok ice core, Antarctica. [Enlace al artículo](https://swisscows.com/web?query=climate%20past%20420000%20years%20mcmillan%20magazines)

[6] Variaciones orbitales y ciclos de Milankovitch.
[Enlace al artículo](https://es.wikipedia.org/wiki/Variaciones_orbitales)

[7] E. Rodríguez Camino, J.A. Parodi, F. González Rouco, M. Montoya Redondo. Proyecciones climáticas. Física del caos en la predicción meteorológica. Capítulo 29. [Enlace al artículo](http://www.aemet.es/documentos/es/conocermas/recursos_en_linea/publicaciones_y_estudios/publicaciones/Fisica_del_caos_en_la_predicc_meteo/29_Proyecciones_climaticas.pdf)

