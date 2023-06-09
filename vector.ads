--Especificacion de un paquete generico
--parte visibl=- \
generic
   type Tipoelemento is private;
   type Indice is (<>); -- Lo defino la dimension en el programa principal
   with procedure Put (X: in tipoelemento); -- with define que se va a usar en el paquete
   with procedure Get (X: out tipoelemento); -- en este caso un procedimiento
   package Vector is
      type Tipovec is array (indice) of tipoelemento; --definimos lo que va a tener la parte oculta
      procedure Leer (Vec: out Tipovec); -- definimos los modulos que tiene la parte oculta
      procedure Imprimir (Vec: in Tipovec);
   end vector;
-- procedure putInteger (x: in integer) is //leer vector
-- begin
-- Put (X);
--end Putinteger;
--procedure Getinteger (X: out Integer) is //Imprimir vector
--begin
--Get(X);
--end Getinteger;

--package Vecint is new Vecgenerico(integer,Rango, putInteger, getInteger,Raiz,">","+",0,elemento);
--   use vecInt;
--   V,E:Tipovec;  