% Sustantivos
% Referencia LibroPROLOG Proyecto5 [http://mural.uv.es/mijuanlo/PracticasPROLOG.pdf]
% Author GitHub@JoDaniel1412
% Ultimo cambio 03/09/2019 por @ErickCR12

% Estructura de la base de datos:
% arg0 cantidad: singular o plural
% arg1 genero: masculino o femenino
% arg2 sustantivo
% arg3 resto de la lista

sustantivo(singular, masculino, [archivo|S],S).
sustantivo(singular, femenino, [computadora|S], S).
sustantivo(singular, femenino, [impresora|S], S).
sustantivo(singular, masculino, [cable|S], S).
sustantivo(singular, masculino, [wifi|S], S).
sustantivo(singular, femenino, [pantalla|S], S).
sustantivo(singular, masculino, [raton|S], S).
sustantivo(singular, masculino, [teclado|S], S).
sustantivo(singular, masculino, [office|S], S).
sustantivo(plural, masculino, [drivers|S], S).
sustantivo(singular, feminino, [referencia|S], S).
sustantivo(plural, feminino, [referencias|S], S).
sustantivo(singular, masculino, [problema|S], S).
sustantivo(plural, masculino, [problemas|S], S).
