% BNF
% Referencia LibroPROLOG Proyecto5
% Author GitHub@JoDaniel1412
% Ultimo cambio 03/09/2019 por @JoDaniel1412


% Estructura de la oracion %
oracion(S0, S) :-
	sintagma_nominal(NUM, _, PERS, S0, S1),
	sintagma_verbal(NUM, _, PERS, S1, S).

oracion(S0, S) :-
	pronombre(NUM, GEN, PERS, S0, S1),
	sintagma_verbal(NUM, GEN, PERS, S1, S).


% Sintagmas Nominales %
sintagma_nominal(NUM, GEN, PERS, S0, S) :-
	determinante(NUM, GEN, PERS, S0, S1),
	sustantivo(NUM, GEN, S1, S).


% Sintagmas Verbales %
sintagma_verbal(NUM, _, PERS, S0, S) :-
	verbo(NUM, PERS, S0, S1),
	sintagma_nominal(_, _, _, S1, S).

sintagma_verbal(NUM, _, PERS, S0, S) :- 
	verbo(NUM, PERS, S0, S).