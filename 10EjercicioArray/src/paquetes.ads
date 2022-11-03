
package paquetes is   
   function Try_Get_Integer
     (Value : out Integer)
      return Boolean ;
   
   function Get_Integer
     (ErrorMessage : String := "No ingreso un numero. Vuelva a introducirlo")
      return Integer;
   

end paquetes;
