---
layout: post
title: "Geolocalización artesana"
date: 2026-01-10 07:00:00 +0100
categories: jekyll update
---

* Do not remove this line (it will not be displayed)
{:toc}

## Introducción
En este artículo se dan algunas pinceladas de lo que podría llamarse 'geo-ubicación artesana', es decir, la geolocalización sin apoyo del moderno GPS. En realidad, de una u otra forma esto se lleva haciendo desde hace mucho tiempo, principalmente en el contexto de la navegación por mar, utilizando instrumentos como el sextante, la brújula y el reloj.  

¿Es esto útil?. En principio sería útil en una situación en que nos hemos perdido y, por la razón que sea, no disponemos de GPS. Se acabó la batería del móvil, por ejemplo.  

<a id="donde_estoy"></a>

## ¿Donde estoy? 

En el contexto de la tierra la respuesta a esta pregunta se compone de 3 números:
- latitud: se refiere a cuan cerca o lejos estoy, en unidades angulares, del ecuador terrestre
- longitud: se refiere a cuan cerca o lejos estoy, en unidades angulares, del meridiano de Greenwich
- altitud: se refiere a cuan cerca o lejos estoy, en metros medidos en dirección 'vertical', del nivel del mar

si estamos en el mar, obviamente, el tercer valor ya lo tenemos, es 0. Precisamente en alta mar es donde es más relevante saber geolocalizarse, pues allí normalmente no tenemos referencias que nos ayuden. Otros lugares indicados serían un desierto, una selva o una cordillera. 

La filosofía de la geolocalización es: 'para saber donde uno está es necesario saber donde están los demás'. En este caso 'los demás' se refiere a objetos celestes: el sol, la luna, las estrellas. Esto convierte un problema que parecía unicamente geográfico en un problema astronómico. El término técnico, incluso algo poético, es el de Navegación Celeste. 

<a id="donde_estoy"></a>

## ¿Cuál es mi latitud? 

La forma más inmediata de estimar nuestra latitud es mirar al sol justo en el momento del verdadero mediodía. Medir entonces su altitud. Un instrumento bastante preciso para esta tarea es el [sextante](https://es.wikipedia.org/wiki/Sextante), utilizado desde hace tiempo en la navegación por mar. Con menor precisión, podemos idear métodos más caseros basados en la medición de la longitud de la sombra de un objeto o en la inclinación de un objeto que hace que su sombra sea mínima, entre otros métodos posibles, ¿se te ocurre alguno?.  

La altitud de un astro o planeta sobre el horizonte viene dada por la ecuación siguiente:

$$ 
\sin(\alpha) = sin(\delta)sin(\phi)+cos(\delta)cos(\phi)cos(h)
$$

donde $$\alpha$$ es la altitud del astro sobre el horizonte,  $$\delta$$ es la declinación del astro en el momento de la observación (declinación solar en nuestro ejemplo), $$\phi$$ es la latitud del punto desde donde observamos y h el ángulo horario del sol en el momento de la observación. Si observamos justo al mediodía h será cero y eso facilita mucho las cosas. En tal caso (h=0) la ecuación  nos queda:

$$ 
\sin(\alpha) = sin(\delta)sin(\phi)+cos(\delta)cos(\phi)
$$

que nos lleva a la expresión final de la latitud en función de la altitud y declinación de un sol observado a mediodía

$$ 
\phi = \delta+ arcos(sin(\alpha)) 
$$

la declinación solar en el momento de la observación puede estimarse mediante dos métodos  

Método 1. (Más preciso) Consultando un almanaque naútico, por ejemplo: [AlmanacPagesISAPI](http://www.tecepe.com.br/scripts/AlmanacPagesISAPI.dll)  
Método 2. Utilizando alguna fórmula empírica de entre las disponibles en la bibliografía 

$$ 
\delta = arsin(sin(\delta_M)cos(\frac{360}{N_m}(N-1+10+\frac{h_o+h_s}{24})+\frac{360\epsilon}{\pi}\sin(\frac{360}{d_a}(N-1+\frac{h}{24}-2))))
$$ 

donde $$\delta_M$$ es la declinación máxima solar (actualmente 23.44º, en el solsticio de junio), $$N$$ el ordinal del día actual contado desde el 1 de enero (el 10 de febrero sería N=41), $$N_m$$ la duración en días de un año promedio (365.24), $$\epsilon$$ la excentricidad de la órbita terrestre (actualmente 0.0167), $$h_o$$ es la hora de la observación (12 si es al mediodía) y $$h_s$$ la diferencia en horas entre el solsticio de invierno y el día 22 de diciembre a las 12. 



<!-- <a id="f3"></a>
{% include  image.html url="/img/geoloc/sextante_marino.png" description="Figura 1. Esquema básico de un sextante marino. Fuente: ver referencias 3 y 4 " %}

 (~0.4ºC, [ver serie](https://ravapeba.github.io/img/serie_mann_hadley100b.svg)), aún a pesar de los factores de extremas continentalidad y latitud de la estación de Vostok. -->


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























