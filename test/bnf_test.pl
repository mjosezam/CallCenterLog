:-consult('../src/bnf/bnf.pl').
:-consult('../src/basedatos/basedatos.pl').

% Ejectutar "run." en la consola para correr la prueba
% Estructura no definitiva, sera cambiada


prueba_incoherencia() :-
	write("prueba_incoherencia: \n"),
	( not(oracion([el,hombre,correr,la,hombre], [])) -> write("OK \n") ; write("FAIL \n") ),
	( not(oracion([el,hombre,come,el,personas], [])) -> write("OK \n") ; write("FAIL \n") ).

prueba_coherencia() :-
	write("prueba_coherencia: \n"),
	( oracion([la,mujer,usa,el,wifi], []) -> write("OK \n") ; write("FAIL \n") ),
	( oracion([el,hombre,enciende,el,computador], []) -> write("OK \n") ; write("FAIL \n") ).

prueba_pronombre() :-
	write("prueba_pronombre: \n"),
	( oracion([yo,enciendo,la,computadora], []) -> write("OK \n") ; write("FAIL \n") ),
	( oracion([ellos,conectan,la,impresora], []) -> write("OK \n") ; write("FAIL \n") ).

run() :-
	prueba_incoherencia,
	prueba_coherencia,
	prueba_pronombre.