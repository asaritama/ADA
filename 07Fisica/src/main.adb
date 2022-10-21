
procedure Main is

   function Posicion_Final(Distancia : Integer; Velocidad_Inicial : Integer; Tiempo_Transcurrido : Integer) returns Distancia is
      Posicion_Inicial : Integer;
   begin
      Posicion_Inicial := Distancia + (Velocidad_Inicial * Tiempo_Transcurrido);
   end Posicion_Final;

begin
   --Crear una librería que se llama Física
   --Definir  los siguientes tipos de datos de esa librería.
   --Distancia
   --Tiempo
   --Aceleración
   --Agregar un metodo  que calcula la posición velocidad de un movil
   --despues de x tiempo.
   --vf = vinicial + 1/2 * a * t^2
   --function Posicion_Final(Distancia, Velocidad_Inicial, Tiempo_Transcurrido) returns Distancia;

   Valor_Distancia : Integer;
   Valor_Velocidad : Integer;
   Valor_Tiempo : Integer;
   Resultado : Integer;
   begin
      Valor_Distancia := 8;
      Valor_Velocidad := 7;
      Resultado := Posicion_Inicial (Valor_Distancia, Valor_Velocidad, Velocidad_Tiempo);
      Put_Line("La posición inicial es igual a " & Resultado'Image);

   end;


end Main;
