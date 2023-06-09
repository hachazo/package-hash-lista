generic
   
   type Tipoelemento is private;
   
   package Lista is
      
      type Tipolista is private;
         
         function Vacia(Lista: Tipolista) return Boolean;
         function Esta(Lista: Tipolista; Elem: Tipoelemento) return Boolean;
		 
         procedure Crear (Lista: out TipoLista);
         procedure Insertar(Lista: in out Tipolista; Elem: in Tipoelemento); --Se ingresa el elemento por el frente
         procedure Insertarfinal(Lista:in out Tipolista; Elem: in Tipoelemento);  -- Se ingresa el elemento por el final
         procedure Suprimir(Lista: in out Tipolista; Elem: Tipoelemento);
         procedure suprimirfrente(Lista: in out tipolista; elem: out tipoelemento); 
         procedure Limpiar(Lista: in out Tipolista);
         
         function Info(Lista: Tipolista) return Tipoelemento; -- Retorna el elemento de la lista segun fue ingresado.
         function Sig(Lista: Tipolista) return Tipolista; -- Retorna la lista siguiente.
         
         Listavacia: exception;
         
         private
            
         type tiponodo;
         type Tipolista is access Tiponodo;
         
         type Tiponodo is record
            Info: Tipoelemento;
            Sig: Tipolista;
         end record;
         
      end lista;