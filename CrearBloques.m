%CREAMOS UN MODELO NUEVO, es decir un .mdl
sys = 'CrearBloquesConMascara'; %Nombre del sistema
new_system(sys)  %Crear modelo del sistema
open_system(sys) % Abrir el Modelo
%Creamos los Bloques
%///////////////////////////////////////////////////////////////////////
%add_block = es para crear Bloques
%Explicacion de sintaxis
%built-in/    siempre debe ir que significa construir, luego va el
%bloque que se desea crear. dentro de corchetes lo que cambia es lo que
%esta dentro de las comillas simples que son el nombre que le queremos
%poner al bloque.
%//////////////////////////////////////////////////////////////////////
offset=60;
posicion=[30 15 60 45];
add_block('built-in/Integrator',[sys '/Int1'],'Position',posicion)
%Estamos creando un bloque de integracion con nombre Int1, este nombre
%se puede cambiar y colocar el que quiera.
%vamos a crear otro bloque pero, debemos darle una posicion diferente,
%ya que sino se creara encima del bloque integrador 
%definimos un vector posicion
posicion=[30+offset 30 60+offset 60];
add_block('built-in/Step',[sys '/Int2'],'Position',posicion)