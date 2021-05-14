
alias grep='grep.exe --color=auto'


echo "
 1)Imprimir todas las líneas que contengan un número de teléfono con una extensión (la letra x o X seguida de cuatro dígitos)
"

grep -E 'x[[:digit:]]{4}' grepdata.txt

echo "
2)Imprimir todas las líneas que comiencen con tres dígitos seguidos de un espacio en blanco
"

grep -E '^[[:digit:]]{3}[[:space:]]' grepdata.txt

echo "
3)Imprimir todas las líneas que contienen una fecha.
"

grep -E '[[:alpha:]]{3}.[[:space:]][[:digit:]]' grepdata.txt | grep -E '2[[:digit:]]{3}'

echo "
4)Imprimir todas las líneas que contienen una vocal (a, e, i, o o u) seguidas de un solo carácter seguido de la misma vocal nuevamente.
"

grep -i a[[:alpha:]]a grepdata.txt

grep -i e[[:alpha:]]e grepdata.txt

grep -i i[[:alpha:]]i grepdata.txt

grep -i o[[:alpha:]]o grepdata.txt

grep -i u[[:alpha:]]u grepdata.txt

echo "
5)Imprimir todas las líneas que no comiencen con una S mayúscula.
"
grep -v ^S grepdata.txt

echo "
6)Imprimir todas las lineas que contengan una dirección de correo electrónica.
"
grep @ grepdata.txt
