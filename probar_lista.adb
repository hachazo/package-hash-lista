with Ada.Integer_Text_Io,Ada.Text_Io,hash_lista;
use Ada.Integer_Text_Io,Ada.Text_Io;

procedure Probar_Lista is
   subtype Indice is Integer range 0..8; --9 posiciones
   
   function "=" (X, Y: in integer) return Boolean is
   begin
      return X=Y;
   end "=";
   
   function ">" (X, Y: in integer) return Boolean is
   begin
      return X > Y;
   end ">";
   
   function "<" (X, Y: in integer) return Boolean is 
   begin
      return X < Y;
   end "<";
   
   function Hash (X: in integer) return integer is
   begin
      return X mod 9;
   end Hash;
   package Hashinc is new hash_lista(Integer,Indice,"=", ">", "<",Hash);
   use Hashinc;
   tabla:thash;
   Ingresar: Integer;
   
    begin
   
   -- inserta los elementos
      for I in 1..9 loop 
         get(Ingresar);
         ins_tabla(tabla,ingresar);
       end loop;
       if Buscar(Tabla,11) then
          put_line("fGFGHFH");
          end if;
   end probar_lista;
