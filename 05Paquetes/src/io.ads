package IO is

   function Get_NotEmpty_Line
     (ErrorMessage : String := "Entrada vac�a. Vuelva a ingresar")
      return String;

   function Try_Get_Integer (Value : out Integer) return Boolean;

   function Get_Integer
     (ErrorMessage : String := "No ingres� un n�mero. Ingres� una letra")
      return Integer;

end IO;
