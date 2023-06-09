package body Hash_lista is
   
   procedure Get_Vec (X: out Tipolista) is
   begin
      null;
   end Get_Vec;
   
   procedure put_vec (X: in Tipolista) is 
   begin
      null;
   end Put_Vec;
      
      procedure Ins_Tabla (Vec: in out Thash; Elemento: in Tipoelemento) is
      Posicion: indice;
   begin
      Posicion:=Hash(Elemento);
      Insertar(Vec.Tabla(Posicion), Elemento);
   end Ins_Tabla;
   
   end hash_lista;

