---
layout: post
title:  "¡Bienvenido a mi blog cuader1!"
date:   2020-12-22 17:14:55 +0100
categories: jekyll update

---

Hola. Este blog ha sido creado en diciembre de 2020 utilizando la herramienta [jekyll](https://jekyllrb.com/), que permite la creación de páginas web estáticas de manera fácil y rápida.  Los pasos a seguir para instalar jekyll están descritos [aquí](https://jekyllrb.com/docs/installation/). Además, en el mismo sitio web encontramos un [tutorial](https://jekyllrb.com/docs/step-by-step/01-setup/) paso a paso de como crear un sitio web una vez hemos instalado jekyll.

En caso de que queramos incluir notación matemática en nuestro blog, como es el caso, debemos utilizar algún recurso externo que nos lo permita: mathjax o katex son dos buenas opciones. Para hacer uso de mathjax debemos incluir una directiva de javascript al final del fichero de layout al que queremos que se aplique. Estos ficheros se encuentran en el subdirectorio _layouts de nuestro sitio web. Uno de estos ficheros es 'posts.html', donde se configura el layout de los posts, al final del cual añadiremos la directiva o líneas de código siguientes:

> ```
> <!-- Mathjax Support -->
> <script type="text/javascript" async
>   src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-MML-AM_CHTML">
> </script>
> ```

Una vez hecho esto, el navegador será capaz de interpretar la notación matemática y podremos escribir las siguientes líneas, por ejemplo,

$$ 
\phi(x,y) = \phi \left(\sum_{i=1}^n x_ie_i, \sum_{j=1}^n y_je_j \right)=\\\
 = \sum_{i=1}^n \sum_{j=1}^n x_i yj \phi(e_i, e_j) 
$$

Para que nuestro sitio web funcione como un blog, Jekyll requiere que los ficheros de post sean nombrados de acuerdo al siguiente formato:

`AÑO-MES-DIA-TITULO.MD`

Donde `AÑO` es un número de 4 dígitos,  y `MES` y `DIA` son números de 2 dígitos, y `MD` es la extensión que representa el formato usado en el fichero. 

Jekyll también ofrece soporte para snippets de código:

{% highlight ruby %}
def print_hola(nombre)
  puts "Hola, #{nombre}"
end
print_hola('Moncho')
#=> imprime 'Hola, Moncho' en STDOUT.
{% endhighlight %}

{% highlight ruby %}
bundle exec jekyll serve
#=> inicializa y/o actualiza el sitio web después de cambios
{% endhighlight %}

Para más información chequea la web principal del proyecto [jekyll](https://jekyllrb.com/).
