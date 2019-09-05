
:-consult('bnf/bnf.pl').
:-consult('basedatos/basedatos.pl').
:-consult('bnf/analizador.pl').


iniciar() :-
	saludar(),
	conversar().


saludar() :-
	imprimir_nombre(bot),
	saludo(S),
	write(S), nl().


conversar() :-
	repeat(),

	imprimir_nombre(usuario),
	read(M), nl(),

	analizar_respuesta(M, R),
	imprimir_nombre(bot),
	write(R), nl(),

	(M \= fin -> fail ; !).