echo -e "
1)Imprima todas las líneas que contengan un número de teléfono con una extensión (la letra x o X seguida de cuatro dígitos)
"

grep -E 'x[[:digit:]]{4}' grepdata.txt

echo "
2)Imprima todas las líneas que comiencen con tres dígitos seguidos de un espacio en blanco
"

grep -E '^[[:digit:]]{3}[[:space:]]' grepdata.txt

echo "
4)Imprime todas las líneas que contienen una vocal (a, e, i, o o u) seguidas de un solo carácter seguido de la misma vocal nuevamente.
"

grep -i a[[:alpha:]]a grepdata.txt && grep -i e[[:alpha:]]e grepdata.txt && grep -i i[[:alpha:]]i grepdata.txt && grep -i o[[:alpha:]]o grepdata.txt && grep -i u[[:alpha:]]u grepdata.txt

echo "
5)Imprima todas las líneas que no comiencen con una S mayúscula.
"
grep -v ^S grepdata.txt

echo "
6)Imprima todas las lineas que contengan una dirección de correo electrónica.
"
grep @ grepdata.txt
