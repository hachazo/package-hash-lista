
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
      Posicion: integer;
   begin
      Posicion:=Hash(Elemento);
      Insertar(Vec.Tabla(indice'val(Posicion)), Elemento);
   end Ins_Tabla;

   function Buscar(Vec: in Thash; elemen: in Tipoelemento) return Boolean is
    begin
      return esta(vec.tabla(indice'val(hash(elemen))),elemen);
         
   end buscar;
      
   end hash_lista;

