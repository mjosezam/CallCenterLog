:-consult('../basedatos/claves.pl').
:-consult('../util/list.pl').


% Concluye una respuesta al mensaje
% arg0 mensaje
% arg1 respuesta
analizar_respuesta(M, R) :-
	convertir_lista(M, LIST),
	(oracion(LIST, []) ->
		(buscar_clave(LIST, KEY) -> 
			tipo_problema(LIST, TYPE),
			solucionador([TYPE, KEY], PROBLEM),
			analizar_problema(PROBLEM, R)
			; fallo(R))
		; fallo(R)).
	

% Itera atraves de los posibles problemas
analizar_problema([], R) :- no_problema(R).
analizar_problema([P0|P], R) :-
	(problema_coincide(P0, S) -> 
		first(S, S0),
		analizar_solucion(S0, R)
		; analizar_problema(P, R)).


problema_coincide([P|S], S) :-
	convertir_lista(STR, P),
	imprimir_nombre(bot),
	write(STR), write(?), nl,

	pregunta(X),
	write(X), nl,

	read(Y),
	Y == si.


% Itera atraves de las posibles soluciones
analizar_solucion([], R) :- no_solucion(R).
analizar_solucion([S0|S1], R) :-
	(solucion_coincide(S0) -> 
		imprimir_nombre(bot),
		amable(R)
		; analizar_solucion(S1, R)).


solucion_coincide(S0) :-
	convertir_lista(STR, S0),
	imprimir_nombre(bot),
	write(STR), nl,

	funciono(X),
	write(X), nl,

	read(Y),
	Y == si.


% Busca si la lista tiene palabras claves
% arg0 oracion en forma lista
% arg1 resultado
buscar_clave([R|_], R) :- clave(R).
buscar_clave([_|T], R) :- buscar_clave(T, R).


% Convierte de string a lista
% arg0 string a convertir
% arg1 lista resultante
convertir_lista(S, L) :- atomic_list_concat(L, ' ', S).


tipo_problema(L, R) :- 
	(es_referencia(L) -> R = referencia ; R = problema),
	(es_problema(L) -> R = problema ; R = problema).

es_problema(L) :- member(problema, L).
es_referencia(L) :- member(referencia, L).


imprimir_nombre(bot) :-
	bot(N), write(N), write(": ").

imprimir_nombre(usuario) :-
	usuario(N), write(N), write(": ").
