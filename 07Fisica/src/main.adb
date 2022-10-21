with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
--Crear una librería que se llama Física
   --Definir  los siguientes tipos de datos de esa librería.
   --Distancia
   --Velocidad
   --Tiempo
   --Aceleración
   --Agregar un metodo  que calcula la posición velocidad de un movil
   --despues de x tiempo.
   -- Xf = X0 + Vinicial * t   + 1/2 * a * t^2
   --function Posicion_Final(Distancia, Velocidad_Inicial, Tiempo_Transcurrido) returns Distancia;
procedure Main is
   type Distancias is new Float;
   type Velocidades is new Float;
   type Tiempos is new Float;
   type Aceleraciones is new Float;
   type Posicion_Final is new Float;
   subtype Distancia_Final is Distancias;


   function Formula(Distancia_Inicial : Distancias; Velocidad_Movil : Velocidades; Tiempo_Transcurrido : Tiempos; Aceleracion : Aceleraciones) return Distancia_Final is
   begin
     return Distancia_Final(Float(Distancia_Inicial)+ Float(Velocidad_Movil) * Float(Tiempo_Transcurrido) + 1.0/2.0 * Float(Aceleracion) * Float(Tiempo_Transcurrido**2));
   end Formula;

begin
   declare
      D: Distancias := 2.0;
      V: Velocidades := 3.2;
      T: Tiempos := 5.0;
      A: Aceleraciones := 3.0;
      Resultado : Distancia_Final;
   begin
       Resultado := Formula(D,V,T,A);
      Put(Float(Resultado), Exp =>0);
   end;


end Main;
