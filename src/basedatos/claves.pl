% Palabras claves

bot("CallCenterBot").
usuario("Usuario").

saludo("Buenas, en que le puedo ayudar?").
amable("Le puedo ayudar en algo mas?").
despedida("Gracias, adios").
fallo("No entiendo").
no_problema("No encuentro problema").
no_solucion("No encuentro solucion").
funciono("Funciono? si/no?").
pregunta("si/no?").
fin(fin).

clave(archivo).
clave(computadora).
clave(impresora).
clave(cable).
clave(wifi).
clave(pantalla).
clave(raton).
clave(teclado).
clave(problema).

%COMPUTADORA
%no hay internet, no hay espacio en el disco
solucionador([problema, computadora],
			[
              [[no, enciende],[
                  [compruebe,que,este,conectado]
              ]],
              [[no,le,permite,ingresar],[
                   [asegurese,que,el,usuario,y,la,contrasena,sean,correctos],
                   [si,olvido,su,contrasena,presione,olvide,mi,contrasena,e,intente,de,nuevo]
              ]],
              [[no,tiene,internet],[
                   [verifique,que,su,wifi,este,encendido],
                   [compruebe,que,el,cable,o,el,wifi,esten,conectados,a,una,red],
                   [asegurese,de,ingresar,la,contrasena,correcta]
              ]]
          	]).

%IMPRESORA
solucionador([problema, impresora],
			[
              [[no, enciende],[
                  [compruebe,que,este,conectada]
              ]],
              [[no,imprime],[
                   [compruebe,que,este,conectada],
                   [verifique,que,tenga,suficiente,tinta],
                   [consulte,si,su,computador,tiene,los,drivers,instalados,si,no,descarguelos]                 
              ]],
              [[su,computador,no,detecta,la,impresora],[
                   [verifique,que,la,impresora,este,encendida],
                   [compruebe,que,la,impresora,se,encuentre,encendida],
                   [consulte,si,su,computador,tiene,los,drivers,instalados,si,no,descarguelos]
              ]]
          	]).

%CABLE
solucionador([problema, cable],
			[
              [[esta,danado],[
                  [cambie,de,cable,e,intente,de,nuevo]
              ]],
              [[su,computador,no,lo,detecta],[
                   [compruebe,que,este,conectado,en,el,puerto,correspondiente],
                   [verifique,que,el,dispositivo,este,encendido]
              ]]
          	]).

%WIFI
solucionador([problema, wifi],
			[
              [[no,se,conecta,a,una,red],[
                   [verifique,que,su,wifi,este,encendido],
                   [intente,conectarse,a,alguna,red,disponible],
                   [compruebe,que,tenga,los,drivers,del,wifi,instalados]
              ]],
              [[su,computador,parece,no,tener,wifi],[
                   [compruebe,que,tenga,los,drivers,del,wifi,instalados],
                   [verifique,que,el,dispositivo,este,encendido]
              ]]
          	]).

%PANTALLA
solucionador([problema, pantalla],[
              [[no,muestra,ninguna,imagen],[
                   [verifique,que,la,pantalla,este,conectada],
                   [compruebe,que,esta,este,conectada,al,computador],
                   [encienda,el,computador,y,la,pantalla]
              ]]
          	]).


%RATON
solucionador([problema, raton],
			[
              [[parece,no,funcionar],[
                   [verifique,que,el,raton,este,conectado,al,computador,si,este,es,inalambrico,compruebe,que,el,usb,este,tambien,conectado],
                   [si,este,no,enciende,intente,cambiarlo]
              ]]
          	]).

solucionador([problema, teclado],
			[
              [[parece,no,funcionar],[
                   [verifique,que,el,raton,este,conectado,al,computador],
                   [si,este,no,enciende,intente,cambiarlo]
              ]]
          	]).
