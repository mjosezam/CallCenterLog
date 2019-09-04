% Sustantivos
% Referencia LibroPROLOG Proyecto5
% Author GitHub@JoDaniel1412
% Ultimo cambio 03/09/2019 por @JoDaniel1412

% Estructura de la base de datos:
% arg0 cantidad: singular o plural
% arg1 genero: masculino o femenino
% arg2 persona: primera, segunda o tercera
% arg3 pronombre
% arg4 resto de la lista

pronombre(singular, _, primera, [yo|S], S).
pronombre(singular,_,segunda,[tu|S],S).
pronombre(singular,masculino,tercera,[el|S],S).
pronombre(singular,femenino,tercera,[ella|S],S).
pronombre(plural,masculino,tercera,[ellos|S],S).
pronombre(plural,femenino,tercera,[ellas|S],S).
pronombre(plural,masculino,primera,[nosotros|S],S).
pronombre(plural,femenino,primera,[nosotras|S],S).