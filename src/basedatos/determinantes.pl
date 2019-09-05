% Determinantes
% Referencia LibroPROLOG Proyecto5 [http://mural.uv.es/mijuanlo/PracticasPROLOG.pdf]
% Author GitHub@JoDaniel1412
% Ultimo cambio 03/09/2019 por @JoDaniel1412

% Estructura de la base de datos:
% arg0 cantidad: singular o plural
% arg1 genero: masculino o femenino
% arg2 persona: primera, segunda o tercera
% arg3 determinante
% arg4 resto de la lista

%Articulo determinado
determinante(singular, masculino, tercera, [el|S], S).
determinante(singular, femenino, tercera, [la|S], S).
determinante(plural, masculino, tercera, [los|S], S).
determinante(plural, femenino, tercera, [las|S], S).

%Articulo indeterminado
determinante(singular, masculino, tercera, [un|S], S).
determinante(singular, femenino, tercera, [una|S], S).
determinante(plural, masculino, tercera, [unos|S], S).
determinante(plural, femenino, tercera, [unas|S], S).

%Posesivos
determinante(singular, _, primera, [mi|S], S).

%Demostrativos
determinante(singular, masculino, _, [este|S], S).
determinante(singular, femenino, tercera, [esta|S], S).

%Numerales
determinante(singular, masculino, tercera, [un|S], S).
determinante(singular, femenino, tercera, [una|S], S).
determinante(plural, masculino, tercera, [unos|S], S).
determinante(plural, femenino, tercera, [unas|S], S).

%Indefinidos
determinante(plural, masculino, _, [algunos|S], S).
determinante(plural, masculino, _, [pocos|S], S).
determinante(plural, masculino, _, [varios|S], S).
determinante(singular, masculino, _, [demasiado|S], S).
determinante(singular, femenino, _, [demasiada|S], S).

%Interrogativos
determinante(singular, _, _, [qué|S], S).
determinante(singular, _, _, [cuánto|S], S).
determinante(singular, _, _, [cuánta|S], S).
determinante(singular, _, _, [cómo|S], S).


