---
layout: post
title: "Geolocalización artesana"
date: 2026-01-10 07:00:00 +0100
categories: jekyll update
---

* Do not remove this line (it will not be displayed)
{:toc}

## Introducción
En este artículo se describen algunos métodos o técnicas de **geolocalización sin apoyo del GPS**. En realidad, de una u otra forma este tipo de técnicas se llevan aplicando desde hace mucho tiempo, principalmente en el contexto de la navegación por mar, utilizando instrumentos como el sextante, la brújula y el reloj, combinados con la tablas de los almanaques naúticos. Herramientas todas habituales, incluso hoy en día, a bordo de buena parte de las embarcaciones que salen a alta mar.

¿Es útil la información que se presenta en éste artículo?. En principio podría ser útil en una situación en la que nos hemos perdido y, por la razón que sea, no disponemos de GPS. Se acabó la batería del móvil, por ejemplo.  

<a id="donde_estoy"></a>

## 1. ¿Donde estoy? 

En el contexto de la tierra la respuesta a esta pregunta se compone de 3 números:
- latitud: se refiere a cuan cerca o lejos estoy, en unidades angulares, del ecuador terrestre
- longitud: se refiere a cuan cerca o lejos estoy, en unidades angulares, del meridiano de Greenwich
- altitud: se refiere a cuan cerca o lejos estoy, en metros medidos en dirección 'vertical', del nivel medio del mar

si estamos en el mar, obviamente, el tercer valor ya lo tenemos, es 0. Precisamente en alta mar es donde es más relevante saber geolocalizarse, pues allí normalmente no tenemos referencias que nos ayuden. Otros lugares indicados serían un desierto, una selva o una cordillera. 

La filosofía de la geolocalización es: 'para saber donde uno está es necesario saber donde están los demás'. En este caso 'los demás' se refiere a objetos celestes: el sol, la luna, las estrellas. De ahí el nombre elegido habitualmente para referirse a este tipo de geolocalizacion:  [navegación astronómica o celeste](https://en.wikipedia.org/wiki/Celestial_navigation). 

<a id="donde_estoy"></a>

## 2. Estimación de la latitud

La forma más inmediata de estimar nuestra latitud es mirar al sol justo en el momento del verdadero mediodía. Medir entonces su altitud. Un instrumento bastante preciso para esta tarea es el [sextante](https://es.wikipedia.org/wiki/Sextante), utilizado desde hace tiempo en la navegación por mar. Con menor precisión, podemos idear métodos más caseros basados en la medición de la longitud de la sombra de un objeto o en la inclinación de un objeto que hace que su sombra sea mínima, entre otros métodos posibles, ¿se te ocurre algún otro?.  

La altitud de un astro o planeta sobre el horizonte viene dada por la ecuación siguiente:

$$ 
\sin(\alpha) = sin(\delta)sin(\phi)+\\   cos(\delta)cos(\phi)cos(h) \quad \small \textbf{[2.1]}
$$ 

donde $$\alpha$$ es la altitud del astro sobre el horizonte,  $$\delta$$ es la declinación del astro en el momento de la observación (declinación solar en nuestro ejemplo), $$\phi$$ es la latitud del punto desde donde observamos y h el ángulo horario del sol en el momento de la observación respecto al punto de observación (ángulo horario local). Si observamos justo al mediodía h será cero y eso facilita mucho las cosas. En tal caso (h=0) la ecuación  nos queda:

$$ 
\sin(\alpha) = sin(\delta)sin(\phi)+\\  
cos(\delta)cos(\phi)  \quad \small \textbf{[2.2]}
$$ 

que nos lleva a la expresión final de la latitud en función de la altitud y declinación de un sol observado a mediodía

$$ 
\phi = \delta+ arcos(sin(\alpha)) \quad \small \textbf{[2.3]}   
$$ 

la declinación solar en el momento de la observación puede estimarse mediante dos métodos  

1. (Más preciso) Consultando un almanaque naútico, por ejemplo: 
[The Nautical Almanac|ref1](https://thenauticalalmanac.com/)  
2. Utilizando alguna fórmula empírica de entre las disponibles, por ejemplo: 
[Position of the sun|ref3](https://en.wikipedia.org/wiki/Position_of_the_Sun#Calculations)  

$$
\delta = arsin(sin(\delta_M)\\   
cos(\frac{360}{N_m} 
(N+9+\frac{h_o+h_s}{24})+\\ 
\frac{360\epsilon}{\pi} 
\sin(\frac{360}{N_m}(N+\frac{h}{24}-3)))) \quad \small \textbf{[2.4]}
$$ 

donde $$\delta_M$$ es la declinación máxima solar (actualmente 23.44º, en el solsticio de junio), $$N$$ el ordinal del día contado desde el 1 de enero (el 10 de febrero sería N=41), $$N_m$$ la duración en días de un año promedio (365.24), $$\epsilon$$ la excentricidad de la órbita terrestre (actualmente 0.0167), $$h_o$$ es la hora de la observación (12 si es al mediodía) y $$h_s$$ la diferencia en horas entre el solsticio de invierno del año anterior y el día 22 de diciembre de tal año a las 12.  

Para un año n cualquiera: $$\delta_M=23.439 - 0.0000004n $$  

Las [fechas del solsticio de invierno|ref4](https://es.wikipedia.org/wiki/Solsticio) para los próxinos años son:   

| :-------: | :------: | :------: | :------: | :------: | :------: | :------: | :------: | 
| Fecha  	| 2025     | 2026     | 2027     | 2028     | 2032     | 2036     | 2040     |
| Día  		| 21/12/   | 21/12    | 22/12    | 21/12    | 21/12    | 21/12    | 21/12    |
| Hora(UTC) | 15:03:01 | 20:50:09 | 02:42:04 | 08:19:33 | 07:55:48 | 07:12:42 | 06:32:38 |

nótese que hay algo menos de 6 horas de diferencia de año en año, reseteándose la cuenta unas 18 horas hacia atrás cada año bisiesto. Para cálculos más precisos de la declinación pueden consultarse las **refs 3 y 11**.

**[Ejemplo práctico 2.1]**  
Desde un punto de tu pueblo o ciudad, en mi caso Valladolid, estimar la latitud el día 10 de febrero de 2026 al mediodía. (¡Ojo!, el verdadero mediodía raramente coincide con las 12 locales $$\pm$$ corrección gubernamental). 

<div align="center">
   <a id="f21"></a>
	{% include  image.html url="/img/geoloc/sombra3.png" description="Figura 2.1. Esquema para la estimación de la altitud solar" %}
</div>
  
Para realizar la tarea lo primero será hacer una medición lo más precisa posible de la altitud del sol al mediodía, y para esto es necesario que esté despejado y que sepamos valorar cuando el sol ha alcanzado su meridiano, osea, el sur geográfico, osea, su punto de máxima elevación ese día.  Supongamos que las condiciones son buenas y medimos, por el procedimiento de la sombra o con un sextante (más preciso) un angulo de elevación solar 

$$\alpha=34.3^\circ$$  

Anotamos también la hora de la observación, por ejemplo, las 13.30 en nuestro caso en Valladolid, es decir, las 12.30 UTC. Después, consultando en las tablas del almanaque naútico para el día  [10 de febrero de 2026]https://thenauticalalmanac.com/SunRegular/2026_Sun_only.pdf), vemos que la declinación solar a las 12.30 UTC es 

$$\delta=-14.24833^\circ $$

por tanto, de acuerdo con la **ecuación 2.3**, nuestra latitud estimada sería

$$ 
\phi =  \delta + arcos(sin(\alpha)) = \\-14.24833^\circ+arcos(sin(34.3^\circ) = \\= 41.45^\circ
$$ 

La latitud oficial de Valladolid (centro geográfico de la ciudad) es de unos $$41.65^\circ$$, con lo cual el error cometido en nuestra estimación, suponiendo que la hemos hecho en el mismísimo centro geográfico de la ciudad, sería de 2 décimas de grado, es decir, 12 minutos de latitud. Este valor, traducido a distancia sobre el terreno, equivale a unos 22 km en dirección sur. El error puede parecer muy grande, dado que estamos acostumbrados a la exactitud del GPS. No obstante, si estuvieramos en un barco en el mar y con buena visibilidad es un error muy asumible, pues la vista que alcanzamos lo suple sobradamente. Si estuvieramos en un desierto amplio, como el del Sahara, por ejemplo, sigue siendo un valor útil, que nos posicionaría en nuestro mapa de papel y nos indicaría la mejor dirección para seguir una ruta hacia un punto habitado, si es el caso.  

Veremos en el siguiente apartado que esta estimación es mejorable si hacemos dos mediciones en lugar de una. Por ejemplo, si además de medir la altitud solar hacemos una medición de la altitud de la luna en el mismo momento, caso de que este disponible. O bien si hacemos dos mediciones de la altitud solar en momentos diferentes.

## 3. Estimación de la longitud 

La longitud de un lugar sobre la superficie terrestre, como se definió anteriormente, es la distancia angular respecto al meridiano de Greenwich. Si el punto de observación, O, está al oeste del dicho meridiano, por convenio, se considera negativa. Si al este, positiva.  En la **figura 3.1** vemos un esquema con medio globo terrestre y varios meridianos pintados sobre él.  
Una primera aproximación al valor de la longitud en nuestro punto de observación puede obteberse si somo capaces de hacer una buena estimación, en UTC,  del momento exacto del mediodía (verdadero mediodía). En ese caso, basta aplicar la siguiente ecuación, 

$$
\lambda=\frac{EoT- (difZ_{noon}))}{4} \quad \small \textbf{[3.1]}
$$

donde $$difZ_{noon}$$ es la diferencia en minutos entre el mediodía local, en UTC, y las 12 UTC y $$EoT$$ es la ecuación (corrección astronómica) del tiempo, es decir, la diferencia en minutos entre el tiempo solar medio (reloj) y el tiempo solar verdadero (reloj de sol). A partir de la **figura 3.1**, **ref 8**, puede obtenerse una buena estimación del valor de ET para cualquier día del año. ¡Ojo!, aunque la variación es lenta habría que actualizar la figura cada pocos años (**ref 9**). 

<div align="center">
   <a id="f31"></a>
	{% include  image.html url="/img/geoloc/et2.png" description="Figura 3.1. Evolución anual de la ecuación del tiempo, en minutos." %}
</div>

De forma aproximada, (**ref 10**), puede calcularse a partir de la siguiente expresión  

$$
EoT = -9.87\sin(2\frac{360}{365}(d-81))+  \\ 7.67\sin(\frac{360}{365}(d-81) + 78.7) \qquad \small \textbf{[3.2]}
$$

donde **d** es el día del año contado desde el 1 de enero. Para cálculos más precisos de la $$EoT$$ pueden consultarse las **refs 3 y 11**.


**[Ejemplo práctico 3.1]**  
 
Supongamos que hemos registrado la hora UTC en que tiene lugar el mediodía del 1 de febrero de 2026 en nuestro punto de observación, de nuevo el centro de Valladolid en nuestro caso. El resultado ha sido las 12 horas y 32 minutos. Aplicando la **ecuación 3.1**, estimar la longitud de dicho punto de observación. 

Calculamos primero la ecuación del tiempo para el día 1 de febrero, día 32.5 (sumamos 0.5 por ser mediodía)  

$$
EoT = -9.87\sin(2\frac{360}{365}(32.5-81))+ \\7.67\sin(\frac{360}{365}(32.5-81) + 78.7)=13.756'
$$

y después llevamos ese valor a la **ecuación 3.1**  

$$
\lambda=\frac{13.756 - 32}{4}=-4.56^\circ
$$

el error cometido en este caso sería $$-4.56-(-4.72)=0.16^\circ$$, es decir, unos 9.6 minutos, es decir, unos 18 km al este del punto de observación.



 Se denota con la letra G el punto ecuatorial del meridiano de Greenwich; con la O el meridiano del observador, y con las letras GP el meridiano correspondiente al punto subsolar. Estos tres meridianos definen tres ángulos que nos van a servir para la tarea de estimar nuestra longitud. LHA es el ángulo horario local (h en la **ecuación 2.1**), que marca nuestra distancia angular con el astro que observamos, en este caso el sol. GHA es el ángulo horario de Greenwich, que marca la distancia angular del meridiano G con el meridiano del astro a observar.  Entre estos ángulos y la longitud geográfica, $$\lambda$$, como evidencia el gráfico, existe la siguiente relación sencilla:

$$
LHA=GHA+\lambda \quad \small \textbf{[3.3]}
$$ 

donde $$\lambda$$ incluye el signo, de modo que en el caso de la figura, el miembro de la derecha sería una resta de dos números positivos, pues la longitud del observador es negativa en el ejemplo. El valor del ángulo horario de Greenwich, GHA, depende unicamente de la hora UTC y se encuentra tabulado en los almanaques naúticos, como el de la referencia 1. Ambos ángulos se toman como positivos y se miden hacia el oeste del meridiano de Greenwich. Es decir, si el sol estuviera $$10^\circ$$ al este de G, su GHA sería $$355^\circ$$, casi una vuelta completa ($$360^\circ$$), salvo $$10^\circ$$.  En el ejemplo mostrado lo números en juego bien podrían ser, a groso modo,
 
$$
\begin{align}
 LHA=  12^\circ \\GHA = 30^\circ \\  \lambda=LHA-GHA=-18^\circ
\end{align}
$$

**[Ejemplo práctico 3.2]**   

Estimación de la longitud. Desde un punto de observación vamos a tomar dos medidas de la altitud solar en dos momentos diferentes del día, en este ejemplo es el día 20 de febrero de 2026 y el lugar es Valladolid. Obtener una estimación de la longitud a partir de las mismas, con la ayuda de las tablas naúticas y la **ecuación 2.1**.  

Hechas las medidas y consultadas las tablas en el [almanaque|ref1](https://thenauticalalmanac.com/SunRegular/2026_Sun_only.pdf) de la **ref 1**,  obtenemos 

| :---: | :------: | :------: | :------: | :------: |
|       |  hora    |  alt     |  dec     |  GHA     |
| Obs 1 | 11 UTC   |  33.4    | -10.83   | 341.58   |
| Obs 2 | 16 UTC   |  19.3    | -10.753  | 56.585   |

donde alt y dec son la altitud y declinación solares $$(\alpha,\delta)$$. Aplicando la **ecuación 2.1** a cada observación obtenemos el siguiente sistema de ecuaciones:

		
$$ 
\begin{align} [obs1] \quad sin(33.4) = sin(-10.83)sin(\phi)+\\   cos(-10.83)cos(\phi)cos(341.58+\lambda)   \\ \\ 
[obs2] \quad\sin(19.3) = sin(-10.753)sin(\phi)+\\   cos(-10.753)cos(\phi)cos(56.585+\lambda) \end{align}
$$ 

donde se ha tenido en cuenta la **ecuación 3.3** para sustituir el ángulo horario local, h en la ecuación original. La solución a este sistema puede obtenerse usando una calculadora científica. En nuestro caso el resultado ha sido

$$
\lambda= -4.78^\circ\\
\phi= 41.59^\circ 
$$

vemos que los errores, tanto en latitud como en longitud, se han reducido: en concreto, el error en latitud en este caso sería de $$41.59-41.65=-0.06^\circ$$, que suponen en distancia norte-sur un error de unos 7 km, la tercera parte del error cometido en la estimación del **ejemplo 2.1**. En cuanto al error en longitud, sería de $$-4.78-(-4.72)=0.06^\circ$$, que en el caso de la longitud corresponden a una distancia este-oeste de unos 5 km, la tercera parte del error cometido en la estimación del **ejemplo 3.1**.
  
<!-- <a id="f3"></a>
{% include  image.html url="/img/geoloc/sextante_marino.png" description="Figura 1. Esquema básico de un sextante marino. Fuente: ver referencias 3 y 4 " %}

 (~0.4ºC, [ver serie](https://ravapeba.github.io/img/serie_mann_hadley100b.svg)), aún a pesar de los factores de extremas continentalidad y latitud de la estación de Vostok. -->


<a id="referencias"></a>
## Referencias

<a id="1"></a>
[1]  The Nautical Almanac, [https://thenauticalalmanac.com/](https://thenauticalalmanac.com/)

<a id="2"></a>
[2] Editor de ecuaciones en línea, [https://latexeditor.lagrida.com/](https://latexeditor.lagrida.com/)

<a id="3"></a>
[3] Position of the sun (wikipedia), [https://en.wikipedia.org/wiki/Position_of_the_Sun#Calculations](https://en.wikipedia.org/wiki/Position_of_the_Sun#Calculations)

<a id="4"></a>
[4] Solsticio (wikipedia), [https://es.wikipedia.org/wiki/Solsticio](https://es.wikipedia.org/wiki/Solsticio)

<a id="5"></a>
[5] Sextante (wikipedia), [https://es.wikipedia.org/wiki/Sextante](https://es.wikipedia.org/wiki/Sextante)

<a id="6"></a>
[6] Navegación astronómica o celeste, (wikipedia),
[https://en.wikipedia.org/wiki/Celestial_navigation](https://en.wikipedia.org/wiki/Celestial_navigation)

<a id="7"></a>
[7] Tablas de parámetros solares por fecha y lugar,  [https://salidaypuestadelsol.com/sun](https://salidaypuestadelsol.com/sun/valladolid_(spain))

<a id="8"></a>
[8] Kepler. Grupo docente de astronomía, Fuenlabrada,  [https://curso.auladeastronomiadefuenlabrada.com/tema-7-relojes-de-sol/7-9-ecuacion-de-tiempo/](https://curso.auladeastronomiadefuenlabrada.com/tema-7-relojes-de-sol/7-9-ecuacion-de-tiempo/)

<a id="9"></a>
[9] Calculadora de la ecuación del tiempo,  [https://planetcalc.com/9198/](https://planetcalc.com/9198/) 

<a id="10"></a>
[10] Calculadora de la ecuación del tiempo,  [https://academia-lab.com/enciclopedia/ecuacion-de-tiempo/](https://academia-lab.com/enciclopedia/ecuacion-de-tiempo/) 

<a id="11"></a>
[11] Sola position calculations, [https://gml.noaa.gov/grad/solcalc/solareqns.PDF](https://gml.noaa.gov/grad/solcalc/solareqns.PDF) 
























