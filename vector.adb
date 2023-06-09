--Cuerpo de un paquete generico - parte oculta
With Ada.Text_Io; use ada.Text_IO;
package body Vector is -- body, especificacion e implementacion
   
   procedure Leer (Vec: out Tipovec) is
   
   begin
      
   for i in vec'range loop
      
	  new_line;
	  Put("Ingrese el elemento " & Integer'image(indice'pos(i)) & " del vector:");
         new_line;
	  Get (Vec (I));
      new_line;
      end loop;
      
   end Leer;

procedure Imprimir (Vec: in Tipovec) is

begin
  
   for I in vec'range loop
	  Put (Vec (I));
   end loop;
      new_line;
end Imprimir;
 
end vector;
