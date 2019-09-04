% Determinantes
% Referencia LibroPROLOG Proyecto5
% Author GitHub@JoDaniel1412
% Ultimo cambio 03/09/2019 por @JoDaniel1412

% Estructura de la base de datos:
% arg0 cantidad: singular o plural
% arg1 genero: masculino o femenino
% arg2 persona: primera, segunda o tercera
% arg3 determinante
% arg4 resto de la lista

determinante(singular, masculino, tercera, [el|S], S).
determinante(singular, femenino, tercera, [la|S], S).
determinante(plural, masculino, tercera, [los|S], S).
determinante(plural, femenino, tercera, [las|S], S).

determinante(singular, masculino, tercera, [un|S], S).
determinante(singular, femenino, tercera, [una|S], S).
determinante(plural, masculino, tercera, [unos|S], S).
determinante(plural, femenino, tercera, [unas|S], S).