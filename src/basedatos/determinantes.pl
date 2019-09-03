% Determinantes

% Estructura de la base de datos:
% arg0 determinante
% arg1 cantidad S:singular y P:plural
% arg2 genero M:masculino y F:femenino

determinante([el|S], S).
determinante([la|S], S).
determinante([lo|S], S).
determinante([los|S], S).

determinante([un|S], S).
determinante([una|S], S).
determinante([unos|S], S).
determinante([unas|S], S).

determinante([mi|S], S).
determinante([mis|S], S).