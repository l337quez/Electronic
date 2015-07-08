%CREAMOS UN MODELO NUEVO, es decir un .mdl
sys = 'CrearBloquesConMascara'; %Nombre del sistema
new_system(sys)  %Crear modelo del sistema
open_system(sys) % Abrir el Modelo


% add_block('built-in/Integrator',[sys '/Int2'])

%//////////////////////////////////////////////////////////////////////
%set_param = es para editar los parametros del bloque 
%ejemplo de set_param  http://www.mathworks.com/help/simulink/slref/set_param.html
%Sintaxis de set_param
%Primero se coloca [sys '/nombre_para_el_bloque']
%luego entre comillas se coloca el parametro, seguido de una coma y entre
%comillas seimples se coloca el valor que se quiere evaluar  del parametro
%Parametro MaskDisplay es equivalente a Icon Drawing Command
%puedes colocar cuaquier cosa en ese campo, es usado para plotear la mascara
%hay unos parametros para dibujar, mirar el siguiente link 
%http://www-rohan.sdsu.edu/doc/matlab/toolbox/simulink/slref/icon_drawing_cmds_pref.html
%Parametro Position es usado para ubicar el bloque en la pantalla de simulink
% Parametro MaskIconFrame es poner visible o invisible el cuadro que trae 
%el bloque por defecto
%Parametro SimulationCommand se puede usar para comenzar a correr la
%simualacion, evaluando en el parametro el valor 'start'
%Para conocer los parametros de la Mascara ver el siguiente link.
% http://www-rohan.sdsu.edu/doc/matlab/toolbox/simulink/slref/parameters5.html
%los puntos suspensivos dentro de set_param es para poder varias lineas y
%no tener todo en una linea larga
%//////////////////////////////////////////////////////////////////////



add_block('built-in/Integrator',[sys '/Int']) 
set_param([sys '/Int'],'MaskDisplay','patch([0 10 20 30 30 0], [10 30 20 25 10 10],[1 0 0])',...
    'MaskIconFrame','off','Position', '[10 150 40 180 ]')



%//////////////////////////////////////////////////////////////////////  
%Parametros de los bloques
%http://www.mathworks.com/help/simulink/slref/common-block-parameters.html   
%http://dali.feld.cvut.cz/ucebna/matlab/toolbox/simulink/c03_cr64.html
%//////////////////////////////////////////////////////////////////////

%save_system(sys) 
% Guardar Modelo, se guardara en el mismo directorio donde
%este CrearBloqueConMascara.m


