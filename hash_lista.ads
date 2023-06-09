with vector,listaordenada;
generic
   type Tipoelemento is private;
   type indice is (<>);
   
   with function "=" (X,Y : in Tipoelemento) return Boolean;
   with function ">" (X,Y: in Tipoelemento) return Boolean;
   with function "<" (X,Y: in Tipoelemento) return Boolean;
   with function Hash (Elemento: in tipoelemento) return indice;

   package Hash_Lista is
      
      type Thash is private;
      procedure Ins_Tabla(Vec: in out Thash; Elemento: in Tipoelemento);
      
      private
      
      package Listaordenadainc is new Listaordenada(Tipoelemento,"=","<",">");
      use Listaordenadainc;
      
      procedure put_vec(X: in tipolista);
      procedure Get_Vec(X: out Tipolista);
      
      package Vec_Lista is new Vector(Tipolista,Indice,Put_Vec,Get_Vec);
      use Vec_Lista;
      
      type Thash is record
         Tabla:Tipovec;
         end record;

   end Hash_Lista;
   
--   subtype Indice is Integer range 0..8; --9 posiciones
--   
--   function "=" (X, Y: in integer) return Boolean is
--   begin
--      return X=Y;
--   end "=";
--   
--   function ">" (X, Y: in integer) return Boolean is
--   begin
--      return X > Y;
--   end ">";
--   
--   function "<" (X, Y: in integer) return Boolean is 
--   begin
--      return X < Y;
--   end "<";
--   
--   function Hash (X: in integer) return Indice is
--   begin
--      return X rem 9;
--   end Hash;
--   
--   package Hashinc is new hash_lista(Integer,Indice,"=", ">", "<",Hash);
--   use Hashinc;
--   
--   tabla:thash;
