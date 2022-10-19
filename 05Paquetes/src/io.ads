package IO is

   function Get_NotEmpty_Line
     (ErrorMessage : String := "Entrada vacía. Vuelva a ingresar")
      return String;

   function Try_Get_Integer (Value : out Integer) return Boolean;

   function Get_Integer
     (ErrorMessage : String := "No ingresó un número. Ingresó una letra")
      return Integer;

end IO;
