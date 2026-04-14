---
layout: post
title: "Geolocalización sin GPS"
date: 2026-01-10 07:00:00 +0100
categories: jekyll update
---

* Do not remove this line (it will not be displayed)
{:toc}

## Introducción
En este artículo se describen o proponen algunos métodos o técnicas de **geolocalización sin apoyo del GPS**. En realidad, de una u otra forma este tipo de técnicas se llevan aplicando desde hace mucho tiempo, principalmente en el contexto de la navegación por mar, utilizando instrumentos como el sextante, la brújula y el reloj, combinados con la tablas de los almanaques naúticos. Herramientas todas habituales, incluso hoy en día, a bordo de buena parte de las embarcaciones que salen a alta mar.

¿Es útil la información que se presenta en éste artículo?. En principio podría ser útil en una situación en la que nos hemos perdido y, por la razón que sea, no disponemos de GPS. O simplemente como punto de partida en la aproximación al problema de la geolocalización. 


<a id="donde_estoy"></a>



## 1. Posición del sol y del observador

En el contexto de la tierra la **posición de un observador** sobre su superficie se puede definir mediante las llamadas coordenadas geográficas, [figura 1.1](#f11): 

- latitud, $$\large \varphi$$: se refiere a cuan cerca o lejos estoy, en unidades angulares, del ecuador terrestre. Varía en un rango de $$[-90^\circ,90^\circ]$$, siendo $$\pm90^\circ$$ en los polos y $$0^\circ$$ en el ecuador (negativa al sur del mismo).
- longitud, $$\large \lambda$$: se refiere a cuan cerca o lejos estoy, en unidades angulares, del meridiano de Greenwich. Varía en un rango de $$[-180^\circ,180^\circ]$$, siendo $$0^\circ$$ en el meridiano de Greenwich y negativa hacia el oeste del mismo. 
- altitud: se refiere a cuan cerca o lejos estoy, en metros medidos en dirección 'vertical', del nivel medio del mar

si estamos en el mar, obviamente, el tercer valor ya lo tenemos, es 0. Precisamente en alta mar es donde es más relevante saber geolocalizarse, pues allí normalmente no tenemos referencias que nos ayuden. Otros lugares indicados serían un desierto, una selva o una cordillera. 

<!-- XXXXXXXXXXX 
$$\frac{\sin\left(x\right)}{\sqrt{1 - a^{2} \cos^{2}\left(x\right)}}$$
$$-\frac{\arcsin\left(a \cos\left(x\right)\right)}{a}$$ -->


En cuanto a la **posición del sol respecto al centro de la tierra**, las coordenadas son las mismas para cualquier observador en un instante dado, [figura 1.1](#f11):  

- declinación, $$\large \delta$$: ángulo formado por la línea de posición del sol, $$\overline{CGP}$$, y el plano del ecuador. Coincide con la latitud del punto subsolar, GP. Varía en el rango $$[-23.44^\circ,23.44^\circ]$$.
- ángulo horario de Greenwich, $$GHA$$: ángulo entre el meridiano del sol, $$\overline{ZGP}$$, y el meridiano de Greenwich, $$\overline{ZG}$$. Varía en el rango  $$[0^\circ,360^\circ]$$.

La declinación del sol alcanza valores extremos en los solsticios (negativo en el de invierno) y pasa por el valor $$0^\circ$$ en los equinocios. En cuanto al ángulo horario de Greenwich, aumenta hacia el oeste desde valores próximos a $$0^\circ$$ en puntos cercanos al meridiano de Greenwich y valores próximos a $$360^\circ$$  en puntos cercanos y hacia el este de dicho meridiano.

<div align="center">
   <a id="f11"></a>
	{% include  image.html url="/img/geoloc/sol_yobs4.png" description="Figura 1.1. Variables de posición del sol, GP, y del observador O." %}
</div>  

Por último, la **posición del sol respecto a un observador** en un instante dado, puede definirse mediante dos ángulos:
- ángulo horario local, $$LHA$$ ó $$\large h$$: ángulo formado entre el meridiano del sol, $$\overline{ZGP}$$ y el del observador, , $$\overline{ZO}$$. Su rango de valores es $$[-180^\circ,180^\circ]$$. 
- ángulo de elevación del sol sobre el horizonte del observador, $$\large \alpha$$: también llamado altitud. Toma valores en el rango $$[-90^\circ,90^\circ]$$. 

Valores negativos del $$LHA$$ indican que el sol se está acercando al meridiano y positivos que el sol se está alejando del meridiano. El valor $$0^\circ$$ indica que el sol está sobre el meridiano del observador (mediodía verdadero).  En cuanto a la altitud, $$\alpha$$, es próxima a $$0^\circ$$ en el amanecer y en el ocaso, pudiendo alcanzar en determinados momentos del año valores de hasta $$90^\circ$$ al mediodía en latitudes intertropicales. Los valores negativos son valores nocturnos, es decir, corresponden a momentos en que el sol está por debajo del horizonte del observador.

Entre los ángulos $$GHA$$, $$LHA$$ y la longitud geográfica, $$\lambda$$, como evidencia el esquema de la [figura 1.1](#f11), existe la siguiente relación sencilla:

<a id="ec11"></a>

$$
LHA=GHA+\lambda \quad \small \textbf{[1.1]}
$$ 

donde $$\lambda$$ incluye el signo, de modo que en el caso representado el miembro de la derecha sería una resta de dos números positivos, pues la longitud del observador es negativa en el ejemplo. El valor del ángulo horario de Greenwich, GHA, depende unicamente de la hora UTC y se encuentra tabulado en los almanaques naúticos, como el de la referencia 1. En el ejemplo de la [Figura 1.1](#f11) los números en juego bien podrían ser, a 'grosso modo',
 
$$
\begin{align}
 LHA=  12^\circ \\GHA = 30^\circ \\  \lambda=LHA-GHA=-18^\circ
\end{align}
$$


En la [figura 1.2](#f12) se muestra un esquema, más a pie de tierra, que describe las coordenadas de posición del sol respecto a un observador dado, $$O$$. La línea $$HH'$$ representa el horizonte y S la dirección del meridiano, el sur, del observador. En el ejemplo mostrado, el ángulo horario, $$h=LHA$$, sería positivo, pues el sol queda al oeste del observador. La altitud también es positiva, pues el sol se encuentra por encima del horizonte. En cuanto a la longitud, $$\lambda$$, por vonvenio, al estar situado el observador al oeste del meridiano de Greenwich, sería negativa. 

<!-- XXXXXXXXXXX -->
<div align="center">
   <a id="f12"></a>
	{% include  image.html url="/img/geoloc/sol_pos_obs4.png" description="Figura 1.2. Variables de posición del sol respecto a un observador, O, en un instante dado. Escala distorsionada para poder incluir el punto del meridiano de Greenwich y el propio sol" %}
</div>  

Entre las coordenadas de posición del sol respecto a la tierra, $$(\delta,GHA)$$, y respecto al observador, $$(\alpha,h)$$, existe una relación relativamente sencilla, no del todo intuitiva a partir del gráfico de la [figura 1.1](#f11):  


<a id="ec12"></a>

$$
\sin(\alpha) = sin(\delta)sin(\varphi)+\\   cos(\delta)cos(\varphi)cos(h) \quad \textbf{[1.2]}
$$


que también puede escribirse
<a id="ec13"></a>  

$$
\sin(\alpha) = sin(\delta)sin(\varphi)+\\   cos(\delta)cos(\varphi)cos(GHA+\lambda) \quad \textbf{[1.3]}
$$

y que utilizaremos en los siguientes apartados para estimar nuestras coordenadas geográficas, $$(\varphi,\lambda)$$.  

La filosofía de la geolocalización es: 'para saber donde uno está es necesario saber donde están los demás'. En este caso 'los demás' se refiere a objetos celestes: el sol, la luna, las estrellas. De ahí el nombre elegido habitualmente para referirse a este tipo de geolocalizacion:  [navegación astronómica o celeste](https://en.wikipedia.org/wiki/Celestial_navigation). 



<a id="latitud"></a>

## 2. Estimación de la latitud

La forma más inmediata de estimar nuestra latitud es mirar al sol justo en el momento del verdadero mediodía. Medir entonces su altitud. Un instrumento bastante preciso para esta tarea es el [sextante::ref5](https://es.wikipedia.org/wiki/Sextante), utilizado desde hace tiempo en la navegación por mar. Con menor precisión, podemos idear métodos más caseros basados en la medición de la longitud de la sombra de un objeto o en la inclinación de un objeto que hace que su sombra sea mínima, entre otros métodos posibles, ¿se te ocurre algún otro?.  

Si observamos justo al mediodía (verdadero), el águlo horario local, h, será cero y eso facilita mucho las cuentas. En tal caso (h=0) la  [ecuación 1.1](#ec11) nos queda:

<a id="ec21"></a>

$$ 
\sin(\alpha) = sin(\delta)sin(\phi)+\\  
cos(\delta)cos(\phi)  \quad \small \textbf{[2.1]}
$$ 

que nos lleva a la expresión final de la latitud en función de la altitud y declinación de un sol observado a mediodía

<a id="ec22"></a>

$$ 
\phi = \delta+ arcos(sin(\alpha)) \quad \small \textbf{[2.2]}   
$$ 

La declinación solar, $$\delta$$, en el momento de la observación, puede estimarse mediante dos métodos  

1. (Más preciso) Consultando un almanaque naútico, por ejemplo: [Ref 13](#13) o [Ref 1](#1)
2. Utilizando alguna fórmula empírica de entre las disponibles, por ejemplo, [ver Ref 3](#3),


<a id="ec23"></a>

$$
\delta = arsin(sin(\delta_M)\\   
cos(\frac{360}{N_m} 
(N+9+\frac{h_o+h_s}{24})+\\ 
\frac{360\epsilon}{\pi} 
\sin(\frac{360}{N_m}(N+\frac{h}{24}-3)))) \quad \small \textbf{[2.3]}
$$ 

donde $$\delta_M$$ es la declinación máxima solar (actualmente 23.44º, en el solsticio de junio), $$N$$ el ordinal del día contado desde el 1 de enero (el 10 de febrero sería N=41), $$N_m$$ la duración en días de un año promedio (365.24), $$\epsilon$$ la excentricidad de la órbita terrestre (actualmente 0.0167), $$h_o$$ es la hora de la observación (12 si es al mediodía) y $$h_s$$ la diferencia en horas entre el solsticio de invierno del año anterior y el día 22 de diciembre de tal año a las 12.  

Para un año n cualquiera: $$\delta_M=23.439 - 0.0000004n $$  

Las [fechas del solsticio de invierno](https://es.wikipedia.org/wiki/Solsticio), [Ref 4](#4) para los próxinos años son:   

| :-------: | :------: | :------: | :------: | :------: | :------: | :------: | :------: | 
| Fecha  	| 2025     | 2026     | 2027     | 2028     | 2032     | 2036     | 2040     |
| Día  		| 21/12/   | 21/12    | 22/12    | 21/12    | 21/12    | 21/12    | 21/12    |
| Hora(UTC) | 15:03:01 | 20:50:09 | 02:42:04 | 08:19:33 | 07:55:48 | 07:12:42 | 06:32:38 |

nótese que hay algo menos de 6 horas de diferencia de año en año, reseteándose la cuenta unas 18 horas hacia atrás cada año bisiesto. Para cálculos más precisos de la declinación pueden consultarse las [Ref 3](#3) y [Ref 11](#11).

<a id="ej21"></a>   
**[Ejemplo práctico 2.1]**  
Desde un punto de tu pueblo o ciudad, en mi caso Valladolid, estimar la latitud el día 10 de febrero de 2026 al mediodía. (¡Ojo!, el verdadero mediodía raramente coincide con las 12 locales $$\pm$$ corrección gubernamental). 

<!-- XXXXXXXXXXX -->
<div align="center">
   <a id="f21"></a>
	{% include  image.html url="/img/geoloc/sombra3.png" description="Figura 2.1. Esquema para la estimación de la altitud solar" %}
</div>
  
Para realizar la tarea lo primero será hacer una medición lo más precisa posible de la altitud del sol al mediodía, y para esto es necesario que esté despejado y que sepamos valorar cuando el sol ha alcanzado su meridiano, osea, el sur geográfico, osea, su punto de máxima elevación ese día.  Supongamos que las condiciones son buenas y medimos, por el procedimiento de la sombra esquematizado en la [figura 2.1](#f21), o bien con un sextante (más preciso), un angulo de elevación solar 

$$\alpha=34.3^\circ$$  

Anotamos también la hora de la observación, por ejemplo, las 13.30 en nuestro caso en Valladolid, es decir, las 12.30 UTC. Después, consultando en las tablas del almanaque naútico para el día  [10 de febrero de 2026]https://thenauticalalmanac.com/SunRegular/2026_Sun_only.pdf), vemos que la declinación solar a las 12.30 UTC es 

$$\delta=-14.24833^\circ $$

por tanto, de acuerdo con la [ecuación 2.3](#ec23), nuestra latitud estimada sería

$$ 
\phi =  \delta + arcos(sin(\alpha)) = \\-14.24833^\circ+arcos(sin(34.3^\circ) = \\= 41.45^\circ
$$ 

La latitud oficial de Valladolid (centro geográfico de la ciudad) es de unos $$41.65^\circ$$, con lo cual el error cometido en nuestra estimación, suponiendo que la hemos hecho en el mismísimo centro geográfico de la ciudad, sería de 2 décimas de grado, es decir, 12 minutos de latitud. Este valor, traducido a distancia sobre el terreno, equivale a unos 22 km en dirección sur. El error puede parecer muy grande, dado que estamos acostumbrados a la exactitud del GPS. No obstante, si estuvieramos en un barco en el mar y con buena visibilidad es un error muy asumible, pues la vista que alcanzamos lo suple sobradamente. Si estuvieramos en un desierto amplio, como el del Sahara, por ejemplo, sigue siendo un valor útil, que nos posicionaría en nuestro mapa de papel y nos indicaría la mejor dirección para seguir una ruta hacia un punto habitado, si es el caso.  

Veremos en el siguiente apartado que esta estimación es mejorable si hacemos dos mediciones en lugar de una. Por ejemplo, si además de medir la altitud solar hacemos una medición de la altitud de la luna en el mismo momento, caso de que este disponible. O bien si hacemos dos mediciones de la altitud solar en momentos diferentes.

<a id="longitud"></a>
## 3. Estimación de la longitud 

La longitud de un lugar sobre la superficie terrestre, como se definió anteriormente, es la distancia angular respecto al meridiano de Greenwich. Si el punto de observación, O, está al oeste de dicho meridiano, por convenio, se considera negativa. Si al este, positiva. Una primera aproximación al valor de la longitud en nuestro punto de observación puede obteberse si somo capaces de hacer una buena estimación  del momento exacto del mediodía (mediodía verdadero, [ver Anexo I](#anex1) ). En ese caso, basta aplicar la siguiente ecuación, 

<a id="ec31"></a>

$$
\lambda=\frac{-EoT- (difZ_{noon}))}{4} \quad \small \textbf{[3.1]}
$$

donde $$difZ_{noon}$$ es la diferencia en minutos entre el mediodía verdadero y el mediodía promedio de nuestra zona horaria, $$\overline{Zm}=12-ZH$$, ambos en hora UTC. Es decir,  $$difZ_{noon}= Zmv - \overline{Zm}$$. Para España $$ZH=0$$, para Canarias $$ZH=-1$$, para Italia $$ZH=1$$, etc. EoT es la ecuación (corrección astronómica) del tiempo, es decir, la diferencia en minutos entre el tiempo solar medio (reloj) y el tiempo solar verdadero (reloj de sol).

EoT puede calcularse, [Ref 10](#10), con error inferior a 1 minuto , a partir de la siguiente expresión  

<a id="ec32"></a> 

$$
EoT =-7.659\sin[6.24004077 + \\0.01720197(365.24(y-2000) + d)] + \\
9.863sin[2(6.24004077 + \\ 0.01720197(365.24(y-2000) + d)) + 3.5932]\qquad \small \textbf{[3.2]}
$$

donde **d** es el día del año **y**, contado desde el 1 de enero . Para cálculos más precisos de la $$EoT$$ pueden consultarse las [Ref 3](#3) y [Ref 11](#11). En la [figura 3.1](#f31) se representa graficamente la [ecuación 3.2](#ec32) para los años 1826, 2026 y 2226. Esta representación nos permite hacernos una idea de lo pequeña que es la variación interanual, incluso interdecadal, de la Ecuación del tiempo. 

<div align="center">
   <a id="f31"></a>
	{% include  image.html url="/img/geoloc/eot.svg" description="Figura 3.1. Evolución anual de la Ecuación del Tiempo durante los años 1826, 2026 y 2226." %}
</div>


<a id="ej31"></a>  
**[Ejemplo práctico 3.1]**  
 
Supongamos que hemos registrado la hora UTC en que tiene lugar el mediodía verdadero del 1 de febrero de 2026 en nuestro punto de observación, de nuevo el centro de Valladolid en nuestro caso. El resultado ha sido las 12 horas y 32 minutos. Aplicando la [ecuación 3.1](#ec31), estimar la longitud de dicho punto de observación. 

Calculamos primero la ecuación del tiempo para el día 1 de febrero, día 32, a partir de la [ecuación 3.2](#ec32),

$$
EoT(d=32,y=2026) = -13.45'
$$

y después llevamos ese valor a la [ecuación 3.1](#ec31)  

$$
\lambda=\frac{13.45 - 32}{4}=-4.637^\circ
$$

el error cometido en este caso sería $$-4.637-(-4.72)=0.083^\circ$$, es decir, unos 4 minutos, es decir, unos 7 km al este del punto de observación.

<a id="ej32"></a>  
**[Ejemplo práctico 3.2]**   

Estimación de la longitud. Desde un punto de observación vamos a tomar dos medidas de la altitud solar en dos momentos diferentes del día, en este ejemplo es el día 20 de febrero de 2026 y el lugar es Valladolid. Obtener una estimación de la longitud a partir de las mismas, con la ayuda de las tablas naúticas y la [ecuación 1.3](#ec13).  

Hechas las medidas y consultadas las tablas en el [almanaque](https://thenauticalalmanac.com/SunRegular/2026_Sun_only.pdf) de la [Ref 1](#1),  obtenemos 

| :---: | :------: | :------: | :------: | :------: |
|       |  hora    |  alt     |  dec     |  GHA     |
| Obs 1 | 11 UTC   |  33.4    | -10.83   | 341.58   |
| Obs 2 | 16 UTC   |  19.3    | -10.753  | 56.585   |

donde alt y dec son la altitud y declinación solares $$(\alpha,\delta)$$. Aplicando la [ecuación 1.3](#ec13) a cada observación obtenemos el siguiente sistema de ecuaciones:

		
$$ 
\begin{align} [obs1] \quad sin(33.4) = sin(-10.83)sin(\phi)+\\   cos(-10.83)cos(\phi)cos(341.58+\lambda)   \\ \\ 
[obs2] \quad\sin(19.3) = sin(-10.753)sin(\phi)+\\   cos(-10.753)cos(\phi)cos(56.585+\lambda) \end{align}
$$ 

donde se ha tenido en cuenta la [ecuación 1.1](#ec11) para sustituir el ángulo horario local, h en la ecuación original. La solución a este sistema puede obtenerse usando una calculadora científica. En nuestro caso el resultado ha sido

$$
\lambda= -4.78^\circ\\
\phi= 41.59^\circ 
$$

vemos que los errores, tanto en latitud como en longitud, se han reducido: en concreto, el error en latitud en este caso sería de $$41.59-41.65=-0.06^\circ$$, que suponen en distancia norte-sur un error de unos 7 km, la tercera parte del error cometido en la estimación del [ejemplo 2.1](#ej21). En cuanto al error en longitud, sería de $$-4.78-(-4.72)=0.06^\circ$$, que en el caso de la longitud corresponden a una distancia este-oeste de unos 5 km, que también, en menor grado, mejora el error cometido en la estimación del [ejemplo 3.1](#ej31).
  
<!-- <a id="f3"></a>
{% include  image.html url="/img/geoloc/sextante_marino.png" description="Figura 1. Esquema básico de un sextante marino. Fuente: ver referencias 3 y 4 " %}

 (~0.4ºC, [ver serie](https://ravapeba.github.io/img/serie_mann_hadley100b.svg)), aún a pesar de los factores de extremas continentalidad y latitud de la estación de Vostok. -->

<a id="anex1"></a>
## Anexo I: El mediodía verdadero

**Si conocemos nuestra longitud, $$\lambda$$**, el momento del  mediodía verdadero puede calcularse a partir de la [ecuación 3.1](#ec31), sin más que despejar el término $$difZ_{noon}$$ (diferencia minutal entre el mediodía promedio y el verdadero) y sumar dicha corrección al valor del mediodía promedio, $$12-ZH$$ en la zona horaria $$ZH$$ (ver [apartado 3](#3-estimación-de-la-longitud)),


<a id="anex1_ec1"></a>

$$
Z_{mv} = 12-ZH+difZ_{noon} =\\ 12 -ZH + EoT -4\lambda \quad \small \textbf{[AI.1]}
$$

así obtendremos la hora Z (UTC) del mediodía verdadero. Si queremos el resultado en hora local habrá que añadir al valor calculado, $$Z_{mv}$$, la corrección gubernamental vigente. 

**Si no conocemos nuestra longitud, $$\lambda$$**,  el momento del  mediodía verdadero puede estimarse a partir de uno de los siguientes dos métodos, entre otros que pudieran idearse,

*1. Método de la salida del sol:*  

Si estamos en terreno llano o con amplio horizonte visual, el instante en que tiene lugar la salida del sol es relativamente fácil de apreciar a simple vista.  Al contrario que muchas otras medidas de parámetros solares, la salida del sol ocurre cuando su limbo superior, no su centro, toca el horizonte. En dicho momento el ángulo de elevación solar no es cero exactamente, debido al efecto de la refracción de los rayos de luz al atravesar la atmósfera. Aunque su valor depende en parte de las condiciones meteorológicas, que influyen en el índice de refracción del aire, un valor promedio bastante aceptado, [Ref 1](#1), es $$ \alpha\simeq -0.83^{\circ}$$. LLevando este valor a la [ecuación 1.2](#ec12), y despejando h, obtenemos

$$
h_{\small AMA}=\arccos(\frac{\sin(-0.83) - sin(\delta)sin(\varphi)}{ cos(\delta)cos(\varphi)}) 
$$

donde $$h_{\small AMA}$$ es el ángulo horario del sol al amanecer. Si llamamos $$Z_{\small AMA}$$ a la parte minutal de la hora Z del amanecer,

$$
difZ_{noon}=Mod(Z_{\small AMA}+\\60\times parteDecimal(\frac{h_{\small AMA}}{15}),60) \quad \small (minutos) \quad \small \textbf{[AI.1]}
$$

donde $$Mod(x,60)$$ es el resto de la división por 60 de cierta variable x. Obtenemos así la parte minutal del mediodía verdadero, lo que llamamos $$difZ_{noon}$$ en el [apartado 3](#longitud). Este método presenta un error pequeño, siempre que la estimación del momento del amanecer sea precisa. De igual modo se podría haber aplicado (restando en lugar de sumando) a partir de una observación del momento del ocaso. Podríamos haber aplicado este método en un instante intermedio entre el amanecer y el mediodía, aunque en este caso necesitremos una medida previa del ángulo de elevación solar, $$\alpha$$. 


*2. Método del movimiento de la sombra:*

Este método se basa en la medida de la variación de la longitud de la sombra de un objeto de extensión vertical  $$l$$ en un intervalo pequeño de tiempo. De acuerdo con la [figura 2.1](#f21) la longitud de la sombra de tal objeto vendrá dada por la expresión

<a id="anex1_ec2"></a>

$$
x_s=\frac{l}{\tan\alpha} \quad \small \textbf{[AI.2]}
$$


aplicando esta expresión entre dos instantes entre los cuales el sol se desplaza de la altitud $$\alpha_1$$ a $$\alpha_2$$

<a id="anex1_ec3"></a>

$$
xs_2-xs_1=\frac{l}{\tan\alpha_2}-\frac{l}{\tan\alpha_1}=\\
l\left(\frac{\sqrt{1-[\sin\alpha(\varphi,\delta,h_2)]^2}}{\sin\alpha(\varphi,\delta,h_2)}- 
\frac{\sqrt{1-[\sin\alpha(\varphi,\delta,h_1)]^2}}{\sin\alpha(\varphi,\delta,h_1)} \right) \quad \small \textbf{[AI.3]}
$$
 
donde hemos utilizado la [ecuación 1.2](#ec12) y la expresión abreviada del miembro de la derecha de la misma, simbolizado como $$ \sin\alpha(\varphi,\delta,h)$$


Una vez estimado el valor de $$xs_2-xs_1$$, por medición directa de acuerdo con la [figura A1.1](#fanex1), y dados $$\varphi$$ y $$\delta$$, podemos obtener h a partir de la última ecuación utilizando una calculadora. 

<div align="center">
   <a id="fanex1"></a>
	{% include  image.html url="/img/geoloc/2sombras2.png" description="Figura A1.1. Esquema para la estimación del ángulo horario en un instante dado (1, 2 o el instante intermedio)." %}
</div> 

El error cometido dependerá de la precisión de la medida (milimétrica a ser posible) y del error que arrastremos en la latitud y la declinación, $$\varphi$$ y $$\delta$$, así como de la longitud, $$l$$, del objeto que proyecta la sombra (menor error cuanto mayor longitud). 

<a id="eja1"></a>   
**[Ejemplo práctico A.1]**

Elegir un momento no muy cercano al mediodía de tu localidad, por ejemplo unas 2 o 3 horas antes, digamos las 09:00Z del día 6 de abril de 2026, en Valladolid en mi caso. Medir la longitud de la sombra de un objeto alargado en tal momento y 8 minutos después (equivale a 2 grados de ángulo horario). Usando la [ecuación AI.2](#anex1_ec2) hacer una estimación del ángulo horario a las 09.04 Z y a partir de ella obtener el valor del mediodía verdadero.

Vamos a hacer dos observaciones para medir la longitud de la sombra de un objeto de longitud, en nuestro caso,$$l=210 mm$$. La primera a las 09:00 y la segunda a las 09:08Z (11:08 locales) y anotarlas en la tabla siguiente,

| :---: | :------:  | :------: | :------: | :-------: |
|       |  hora     |  dec     |  lat     |  Xs (mm)  |
| Obs 1 | 09:00 Z   |  6.540   | 41.625   | 319.2     |
| Obs 2 | 09:08 Z   |  6.577   | 41.625   | 302.4     |

en nuestro caso tendremos, de acuerdo con la tabla,

$$
v_s=\frac{\Delta x_{s}}{\Delta t}=\frac{319.2-302.4}{8}=2.1\quad mm/min
$$

llevando este valor, junto con las observaciones de la tabla a la [ecuación A.I.2](#anex1_ec2), y despejando h, obtenemos 

$$
h=50.609^{\circ}
$$  



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
[10] Equation_of_time, [https://en.wikipedia.org/wiki/Equation_of_time](https://en.wikipedia.org/wiki/Equation_of_time#Final_calculation) 

<a id="11"></a>
[11] Solar position calculations, [https://gml.noaa.gov/grad/solcalc/solareqns.PDF](https://gml.noaa.gov/grad/solcalc/solareqns.PDF) 

<a id="12"></a>
[12] Ecuación del tiempo, [https://academia-lab.com/enciclopedia/ecuacion-de-tiempo/F](https://academia-lab.com/enciclopedia/ecuacion-de-tiempo/F)

<a id="13"></a>
[13] Long-term almanac for sun, moon, and polaris, v1.12, [https://www.celnav.de/longterm.htm](https://www.celnav.de/longterm.htm)

<a id="14"></a>
[14] Sunrise, [https://en.wikipedia.org/wiki/Sunrise#Angle_with_respect_to_horizon](https://en.wikipedia.org/wiki/Sunrise#Angle_with_respect_to_horizon)
























