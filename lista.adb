with Ada.Unchecked_Deallocation;
package body Lista is
   
   procedure Free is new Ada.Unchecked_Deallocation(Tiponodo, Tipolista);
      
   --Crea lista
   procedure Crear (Lista: out tipolista) is
   begin 
      Lista:= null;
   end Crear;
   
   
   -- Limpia la lista
   procedure Limpiar(Lista: in out Tipolista) is
      
      Temp:Tipolista:=Lista;
   begin
      while Lista/=null loop
         Temp:=Lista;
         Lista:=Lista.Sig;
         free(temp);
      end loop;
      
   end Limpiar;
   
   -- Lista vacia
   function Vacia(Lista:Tipolista) return Boolean is
   begin
      return Lista=null;
   end Vacia;
   
   function Info(Lista: Tipolista) return Tipoelemento is
   begin
      if Lista/=null then return Lista.Info;
      else raise Listavacia;
      end if;
   end Info;
   
   function Esta(Lista: Tipolista; Elem: Tipoelemento) return Boolean is
      Ptr: Tipolista:=Lista;
   begin
      if Vacia(Lista) then return False;
      else while Ptr/=null loop
            if Ptr.Info=Elem then return True;
            end if;
            Ptr:=Ptr.Sig;
         end loop;
      end if;
      return False;
   end Esta;
   
   procedure Insertar(Lista: in out Tipolista; Elem: Tipoelemento) is
      Nuevonodo:Tipolista:=new Tiponodo'(Elem, null); -- Se crea una variable tipolista y se asigna la direccion de memoria a un puntero y se guarda en esa direccion un nodo.
   begin
      if Vacia(Lista) then Lista:=Nuevonodo;
      else Nuevonodo.Sig:=Lista;
         Lista:=Nuevonodo;
      end if;
   end Insertar; -- Se le asigna al primer puntero que apunta a null (vacio) o al siguiente nuevonodo. 
   
     procedure Insertarfinal(Lista:in out Tipolista; Elem: in Tipoelemento) is
      Nuevonodo:Tipolista:=new Tiponodo;
      Ant, Ptr:Tipolista;
   begin
      Nuevonodo.Info:=Elem;
      Nuevonodo.Sig:=null;
      if Vacia(Lista) then Lista:=Nuevonodo;
      else
         Ptr:=Lista;
         Ant:=null;
         while Ptr/=null loop
            Ant:=Ptr;
            Ptr:=Ptr.Sig;
         end loop;
         ptr:= ant; 
         ptr.sig:= nuevonodo;        
      end if;      
   end Insertarfinal;
   
   function Sig(Lista: Tipolista) return Tipolista is
   begin
      if Vacia(Lista) then raise Listavacia;
      else return Lista.Sig;
      end if;
   end Sig;
   
      procedure Suprimir(Lista: in out Tipolista; Elem: in Tipoelemento) is
         Actual:Tipolista:=Lista;
         Ant:Tipolista:=null;
      begin
         if Vacia(Lista) then raise Listavacia;
         else while Actual /=null and then Actual.Info /= Elem loop
               Ant:=Actual;
               Actual:=Actual.Sig;
            end loop;
            If Ant=null then Lista:= Lista.Sig;
         else Ant.Sig:=Actual.Sig;
         end if;
         Free(Actual);
      end if;
      end Suprimir;
      
      procedure Suprimirfrente (Lista: in out Tipolista; Elem: out Tipoelemento) is
         Ptr: Tipolista:= Lista; 
      begin  
         if not Vacia (Lista) then
            Elem:= Lista.Info;          
            Lista:= Lista.Sig;           
            Free (Ptr);    
         else raise Listavacia;  
         end if;        
      end Suprimirfrente;
      

   End lista;
