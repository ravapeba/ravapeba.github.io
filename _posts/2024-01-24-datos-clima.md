---
layout: post
title: "Series climáticas históricas"
date: 2021-01-24 07:00:00 +0100
categories: jekyll update
---

* Do not remove this line (it will not be displayed)
{:toc}

## Introducción
En este artículo se muestran dos series históricas de temperatura media global en superficie, y una serie local larga, prehistórica, con las temperaturas registradas en la estación antártica de Vostok. Estas son series climáticas de referencia que pueden ayudarnos a entender la evolución del clima en la tierra durante el último medio millón de años, lo cual puede servirnos de gran ayuda para entender la evolución futura que anticipan las proyecciones climáticas (ver referencia [7](#7)). Las distintas fuentes de datos, a partir de las cuales se han realizado los gráficos, se relacionan al final del artículo, en el apartado de [referencias](#referencias). 

<a id="temp_instru"></a>
## Serie instrumental, 1850-2025 
Una serie instrumental de temperaturas es aquella que se ha obtenido mediante registros directos de la temperatura del aire a partir de termómetros. La serie que se muestra a continuación se ha obtenido a partir de datos elaborados por el [Met Office Hadley Centre](https://www.metoffice.gov.uk/hadobs/hadcrut5/index.html). Muestra la evolución de la temperatura media global en términos de anomalías respecto a las temperaturas del periodo de referencia 1961-1990. Puede consultarse el fichero .csv fuente de los datos en el siguiente enlace: [Summary_Series: Global: Annual](https://www.metoffice.gov.uk/hadobs/hadcrut5/data/HadCRUT.5.0.2.0/download.html).

<a id="f1"></a>
{% include image.html url="/img/serie_hadley.svg" description="Fig 1. Evolución de la temperatura en superficie (valor medio global / anomalías respecto a 1961-1990) entre los años 1850 y 2025. Fuente: HadCRUT5 near surface temperature data set, Met Office Hadley Centre (referencia 1)." %}

Aunque con altibajos, se aprecia en el gráfico una tendencia general al aumento de las temperaturas, al principio más lento y después más rápido, con dos 'acelerones' (aumento de la pendiente de la curva), uno a partir de 1910 y otro a partir de 1965, más o menos. Además, vemos como el rango (diferencia entre el valor máximo y mínimo durante el periodo) de anomalías de la serie es casi de 1.8 ºC de temperatura, un valor que, como comprobaremos más adelante, es bastante superior al que podría explicar la variabilidad natural del clima en una escala temporal tan corta. Señalar también que los periodos [1850-1910] y [1940-1980] no registran una tendencia definida. Es probable que durante estos periodos la variabilidad natural del clima (asociada a procesos de interacción océano-atmósfera,  variaciones en la actividad solar, erupciones volcánicas, etc... ) haya contrarrestado la variabilidad asociada al forzamiento antropogénico (emisiones de gases de efecto invernadero). A partir de 1965, más o menos, parece que la variabilidad natural no es capaz de contrarrestar las tendencias positivas, salvo de forma puntual, asociadas a dichas emisiones.

<a id="temp_milenio"></a>
## Serie de los últimos 2000 años, 200-2025
Si nos movemos más hacia el pasado, más allá de los registros instrumentales, los datos de temperatura que podemos recoger son indirectos. En climatología a este tipo de datos indirectos se les llama datos proxy o indicadores paleoclimáticos. Estos indicadores sirven para reconstruir las condiciones climáticas de momentos pasados de la historia de la tierra. Ejemplos conocidos son los anillos de los árboles, los testigos de hielo (perforaciones profundas en capas de hielo en glaciares o continentes helados), sedimentos marinos, polen, etc. La fiabilidad de estos datos se estima a partir de calibraciones frente a registros instrumentales. En el siguiente gráfico se muestran dos series superpuestas: 
- desde el año 200 hasta 1849: serie global de temprtaturas reconstruida a partir de datos multi-proxy obtenidos en distintas regiones del planeta. Publicada en Mann, M.E. and P.D. Jones, 2003. Ver referencia [2](#2)
- desde el año 1850 hasta 2025: la serie instrumental del Hadley Center (ver figura [1](#f1))
 
<a id="f2"></a>
{% include  image.html url="/img/serie_mann_hadley10.svg" description="Fig 2. Evolución de la temperatura media global decadal (anomalías respecto al periodo 1961-1990), entre los años 200 y 2025. Fuente: ver referencias 1 y 2." %}
En la figura [2](#f2) se aprecia como las temperaturas globales de los dos últimos milenios han permanecido la mayor parte del periodo por debajo de la media de 1961-1990 (periodo a su vez relativamente frío respecto al tramo temporal siguiente, 1991-2020). Además, la variabilidad de dichas temperaturas antes de la era industrial es bastante menor que la observada después de dicho periodo, quedando acotada en unos ± 0.2ºC en torno a un estado de equilibrio bastante por debajo de las temperaturas actuales. Esto es lo que los forzamientos naturales del clima importantes en esta escala temporal (ciclos solares, actividad volcánica, variabilidad asociada a la interacción océano-atmósfera, etc.) han podido modificar la variable temperatura media global del planeta en buena parte de los dos últimos milenios, hasta la llegada de la era industrial. A partir del inicio del siglo XX el comportamiento oscilante en torno a un estado de equilibrio se rompe, dando paso a una tendencia clara al aumento (*calentamiento global*). El consenso y literatura científicas en cuanto a que la causa de este calentamiento es la emisión de gases de efecto invernadero (dióxido de casrbono, metano, etc...) son amplios y hay poca discusión posible a día de hoy. Es altamente probable, además, de acuerdo con las proyecciones climáticas más recientes (ver referencia [7](#7)), que dicho calentamiento global esté dando paso a un nuevo estado de equilibrio del clima (*cambio climático*), en torno a una temperatura superior, que se alcanzaría tanto más pronto cuanto antes se limitaran de manera efectiva las emisiones de gases de efecto invernadero. Esta limitación en las emisiones tiene poca pinta de ocurrir, a pesar de los esfuerzos del [Panel Intergubernamental para el Cambio Climático, IPCC](https://www.ipcc.ch/languages-2/spanish/) , para asesorar a los políticos. Lo esperable, por tanto, a corto plazo (decenios) es que la tendencia al aumento de las temperaturas no solo se mantenga, sino que se acelere, como ha ocurrido en los dos últimos decenios (incrementos en la temperatura global de unos 0.35ºC/decenio). Este ritmo de aumento no tiene precedentes en la historia climática reciente del planeta.   

## Serie de Vostok, últimos 420.000 años

Para tener una referencia temporal, la edad de esta serie (figura [3](#f3)) es unos 100 milenios mayor que la del [Homo Sapiens](https://es.wikipedia.org/wiki/Homo_sapiens). Los datos se obtuvieron a partir del testigo de hielo del lago Vostok, próximo a la [base Antártica de Vostok](https://es.wikipedia.org/wiki/Base_Vostok), y es, a diferencia de las dos series anteriores de temperaturas globales, una serie de temperaturas locales. La serie se ha elaborado a partir de registros de concentraciones de diferentes gases atrapados en el hielo desde hace unos 420 milenios (ver referencia [5](#5)). Comparando las dos series mostradas en la figura [3](#f3) se aprecia la fuerte correlación entre la temperatura y la concentración de CO<sub>2</sub> durante casi todo el periodo, exceptuando algún intervalo temporal (por ejemplo, el periodo entre el sexto y segundo milenio pasados: es compatible un periodo de descenso local de la temperatura con un ascenso de la temperatura global y por tanto del CO<sub>2</sub>). La alternancia de mínimos y máximos se corresponde con la de periodos glaciales e interglaciales,  cuya aparición responde fundamentalmente a factores astronómicos, aunque no solo, siendo el periodo principal de la serie (lapso temporal entre dos máximos interglaciales) de unos 100.000 años. Este valor está en buen acuerdo con el ciclo teórico de Milanlovich asociado a la excentricidad de la órbita terrestre (ver referencia [6](#6)). Aunque más difíciles de apreciar sin un análisis espectral, están presentes en el gráfico periodicidades de menor escala (ver referencia [5](#5)), correspondientes a los ciclos orbitales de oblicuidad (~ 41.000 años) y precesión (23.000 años).

<a id="f3"></a>
{% include  image.html url="/img/serie_vostok1.svg" description="Figura 3. Arriba: temperatura media centenal (anomalías respecto al promedio del último siglo). Abajo: concentración de CO<sub>2</sub> en partes por millón (ppm).  Datos obtenidos a partir del testigo de hielo de Vostok, últimos 420.000 años. Fuente: ver referencias 3 y 4 " %}

En el gráfico inferior de la figura [3](#f3) se constata que durante todo el periodo los niveles promedio de CO<sub>2</sub> están claramente por debajo del promedio del último siglo (320 ppm), no superándose en ningún momento la concentración media de 300 ppm. Para esta serie, la máxima amplitud de los cambios de temperatura media centenal se da en las transiciones desde un  periodos glacial al siguiente inter-glacial, y es de unos 11 ºC, con rango  [-8,3] ºC respecto a la temperatura media del último siglo en la estación de Vostok (-54.35ºC), según su registro instrumental (ver referencia [5](#5)) combinado con datos del testigo de hielo. Hay que tener en cuenta que Vostok es una estación con elevadas continentalidad y latitud, factores que llevan al extremo la variabilidad térmica. El rango de variabilidad comentado, asociado al forzamiento orbital o astronómico del clima (eficiente a escalas de miles de años), es muy superior al rango de anomalías globales (figura [2](#f2)) derivadas del forzamiento natural del clima (asociado a cambios en la actividad solar y volcánica, procesos de interacción océano atmósfera, etc.), a escalas temporales menores. No obstante, la comparación, aunque tentadora, no es justa, pues la serie de Vostok es una serie de temperaturas locales y la de Mann es una serie de temperaturas medias globales. Además, las variaciones de gran amplitud en la serie de Vostok ocurren en escalas temporales de milenios, mientras que en la serie de la figura [2](#f2), en su parte final, se aprecian variaciones importantes en una escala temporal de decenios. Las pendientes máximas de la curva de temperaturas de Vostok son del orden de unos 11 ºC en 10 milenios (ritmo promedio de ~0.1 ºC cada 100 años). Este ritmo de cambio es muy inferior al de la temperatura global promedio del último siglo (~0.4ºC, [ver serie](https://ravapeba.github.io/img/serie_mann_hadley100b.svg)), aún a pesar de los factores de extremas continentalidad y latitud de la estación de Vostok.

Destacar finalmente la corta duración (unos pocos milenios) de los periodos cálidos o interglaciales, excepto, curiosamente, el periodo interglacial  presente (óptimo climático del Holoceno), que lleva manteniéndose durante unos 11 milenios.  

<a id="referencias"></a>
## Referencias

<a id="1"></a>
[1] Met Office Hadley Centre observations datasets. [Met Office Hadley Centre](https://www.metoffice.gov.uk/hadobs/hadcrut5/index.html)

<a id="2"></a>
[2] Mann, M.E. and P.D. Jones, 2003,2000 Year Hemispheric Multi-proxy Temperature Reconstructions, IGBP PAGES/World Data Center for Paleoclimatology. NOAA/NGDC Paleoclimatology Program, Boulder CO, USA.
[Enlace al artículo](http://stephenschneider.stanford.edu/Publications/PDF_Papers/Mann_Jones1.pdf)

<a id="3"></a>
[3] J.R. Petit, D. Raynaud, C. Lorius, J. Jouzel and G. Delaygue, N.I. Barkov, V.M. Kotlyakov. Historical Isotopic Temperature Record from the Vostok Ice Core.
[Enlace a artículo y datos](https://cdiac.ess-dive.lbl.gov/trends/temp/vostok/jouz_tem.htm)

<a id="4"></a>
[4] J.-M. Barnola, D. Raynaud, C. Lorius, N.I. Barkov. Historical Carbon Dioxide Record from the Vostok Ice Core.
[Enlace a artículo y datos](https://cdiac.ess-dive.lbl.gov/trends/co2/vostok.html)

<a id="5"></a>
[5] J.R. Petit, D. Raynaud, C. Lorius, J. Jouzel, y otros. Climate and atmospheric history of the past 420,000 years from the Vostok ice core, Antarctica. [Enlace al artículo](http://2018.icrps.org/wp-content/uploads/sites/4/2018/06/Article-3-Climate-and-atmospheric-history-of-the-past-4202c000-years-from-the-Vostok-ice-core2c-Antarctica-1.pdf)

<a id="6"></a>
[6] Variaciones orbitales y ciclos de Milankovitch.
[Enlace al artículo](https://es.wikipedia.org/wiki/Variaciones_orbitales)

<a id="7"></a>
[7] E. Rodríguez Camino, J.A. Parodi, F. González Rouco, M. Montoya Redondo. Proyecciones climáticas. Física del caos en la predicción meteorológica. Capítulo 29. [Enlace al artículo](http://www.aemet.es/documentos/es/conocermas/recursos_en_linea/publicaciones_y_estudios/publicaciones/Fisica_del_caos_en_la_predicc_meteo/29_Proyecciones_climaticas.pdf)

<a id="8"></a>
[8] Serie instrumental de temperaturas en la  [estación antártica de Vostok](http://www.nerc-bas.ac.uk/icd/gjma/vostok.temps.html)























