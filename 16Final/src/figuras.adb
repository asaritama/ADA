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
      Altura_Rect : Float;
      Calculo : Float;
   begin
      Base_Rect := Rect.Get_Base;
      Altura_Rect := Rect.Get_Altura;
      Calculo := (Base_Rect * Altura_Rect );
      Put_Line("Área del rectángulo es: " & Calculo'Image);
   end Calcular_Area;
   
   procedure Calcular_Area(This: in Clase_Circulo) is
      Circ : Clase_Circulo;
      Radio_Circ : Float;
      Calculo_C : Float;
   begin
      Radio_Circ := Circ.Get_Radio;
      Calculo_C : Float := (Radio_Circ * (3.14**2));
      Put_Line("Área del circulo es: " & Calculo_C'Image);
   end Calcular_Area;

   function Get_Base(This: in Clase_Rectangulo) return Float is
   begin
      return Float(This.Base);
   end;
   
   function Get_Altura(This: in Clase_Rectangulo) return Float is
   begin
      return Float(This.Altura);
   end;
   
   function Get_Radio(This : in Clase_Circulo) return Float is
   begin
      return Float(This.Radio);
   end;
   
end Figuras;
