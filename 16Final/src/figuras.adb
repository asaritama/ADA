package body Figuras is
   
   function Get_Nombre(This: in Clase_Figura) return String is
   begin
      return To_String(This.Nombre);
   end;
   
   function Create_Rectangulo(Un_Nombre : String) return Figura is
     Result : Figura := new Clase_Rectangulo;
   begin
      Result.Nombre := To_Unbounded_String(Un_Nombre);
      return Result;
   end Create_Rectangulo;
   
   
   function Create_Circulo(Un_Nombre : String) return Figura is
     Result : Figura := new Clase_Circulo;
   begin
      Result.Nombre := To_Unbounded_String(Un_Nombre);
      return Result;
   end Create_Circulo;
   
   procedure Calcular_Area(This: in Clase_Rectangulo) is
      Rect : Clase_Rectangulo;
   begin
      Base_Rect : Float := Rect.Get_Base;
      Altura_Rect : Float := Rect.Get_Altura;
      Calculo : Float:= (Base_Rect * Altura_Rect )
      Put_Line("Área del rectángulo es: " & Calculo'Image);
   end Calcular_Area;
   
   procedure Calcular_Area(This: in Clase_Circulo) is
   begin
      Put_Line("Área del circulo es: ");
   end Calcular_Area;

   function Get_Base(This: in Clase_Rectangulo) return Float;
   function Get_Altura(This: in Clase_Rectangulo) return Float;
   function Get_Radio(This : in Clase_Circulo) return Float;

end Figuras;
