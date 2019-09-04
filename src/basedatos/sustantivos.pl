% Sustantivos
% Referencia LibroPROLOG Proyecto5
% Author GitHub@JoDaniel1412
% Ultimo cambio 03/09/2019 por @JoDaniel1412

% Estructura de la base de datos:
% arg0 cantidad: singular o plural
% arg1 genero: masculino o femenino
% arg3 sustantivo
% arg4 resto de la lista

sustantivo(singular, masculino, [hombre|S], S).
sustantivo(plural, masculino, [hombres|S], S).
sustantivo(singular, femenino, [mujer|S], S).
sustantivo(plural, femenino, [mujeres|S], S).
sustantivo(singular, femenino, [persona|S], S).
sustantivo(plural, femenino, [personas|S], S).

sustantivo(singular, femenino, [manzana|S], S).
sustantivo(singular, femenino, [fruta|S], S).

sustantivo(singular, masculino, [computador|S], S).
sustantivo(singular, femenino, [computadora|S], S).
sustantivo(singular, femenino, [impresora|S], S).
sustantivo(singular, masculino, [cable|S], S).
sustantivo(singular, masculino, [wifi|S], S).