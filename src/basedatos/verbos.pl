% Verbos
% Referencia LibroPROLOG Proyecto5
% Author GitHub@JoDaniel1412
% Ultimo cambio 03/09/2019 por @JoDaniel1412

% Estructura de la base de datos:
% arg0 cantidad: singular o plural
% arg1 persona: primera, segunda o tercera
% arg3 verbo
% arg4 resto de la lista

verbo(singular, primera, [como|S], S).
verbo(plural, primera, [comemos|S], S).
verbo(singular, segunda, [comes|S], S).
verbo(singular, tercera, [come|S], S).
verbo(plural, tercera, [comen|S], S).

