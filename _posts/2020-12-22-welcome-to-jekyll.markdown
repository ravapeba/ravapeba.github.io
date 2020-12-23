---
layout: post
title:  "Bienvenido a Bloggy Mono!"
date:   2020-12-22 17:14:55 +0100
categories: jekyll update

---

`

Hola. Encontrarás este post en tu directorio `_posts` . Edita y reconstruye el sitio para ver los cambios. Puedes reconstruir el sitio de muchas maneras, pero la más común es ejecutar `jekyll serve`, que lanza un servidor web y autoregenera tu sitio cuando un fichero es actualizado.

Para dar soporte a notación matemática debemos incluir estas lineas al final del fichero de layout al que queremos que se aplique. Estos ficheros se encuentran en *C:\Ruby27\lib\ruby\gems\2.7.0\gems\minima-2.5.1\\_layouts*, si estoy usando el tema 'minima', y si no en la carpeta del tema que este usando 

> ```
> <!-- Mathjax Support -->
> <script type="text/javascript" async
>   src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-MML-AM_CHTML">
> </script>
> ```

$$
\phi(x,y) = \phi \left(\sum_{i=1}^n x_ie_i, \sum_{j=1}^n y_je_j \right)
  = \sum_{i=1}^n \sum_{j=1}^n x_i yj \phi(e_i, e_j) = \\

$$

Jekyll requirere que los ficheros de post sean nombrados de acuerdo al siguiente formato:

`YEAR-MONTH-DAY-title.MARKUP`

Where `YEAR` is a four-digit number, `MONTH` and `DAY` are both two-digit numbers, y `MARKUP`es la extensión que representa el formato usado en el fichero. Después, incluir la front matter necesaria. Echa un vistazo a la fuente de este post  para hacerte una idea de como funciona.

$$ 
\phi(x,y) = \phi \left(\sum_{i=1}^n x_ie_i, \sum_{j=1}^n y_je_j \right)
 = \sum_{i=1}^n \sum_{j=1}^n x_i yj \phi(e_i, e_j) 
$$

Jekyll también ofrece un poderoso soporte para  snippets de código:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

Chequea [Jekyll docs][jekyll-docs] para más info sobre como obtener el máximo aprovechamiento de jekyll. Guarda los bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
