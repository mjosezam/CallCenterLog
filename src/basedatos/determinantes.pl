% Determinantes

% Estructura de la base de datos:
% arg0 determinante
% arg1 cantidad S:singular y P:plural
% arg2 genero M:masculino y F:femenino

determinante(el, S, M).
determinante(la, S, F).
determinante(lo, S, N).
determinante(los, P, N).

determinante(un, S, M).
determinante(una, S, F).
determinante(unos, P, M).
determinante(unas, P, F).

determinante(mi, S, N).
determinante(mis, P, N).