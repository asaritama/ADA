with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
  
package Movil is
   
   type PosicionX is new Float range 1..100;
   type PosicionY is new Float range 1..100;
   type VelocidadX is new Float range 0..100;
   type VelocidadY is new Float range 0..100;
   
   type Clase_Movil is tagged private;
   type Vehiculo is access Clase_Movil;
   
   
   function To_String (This : Clase_Movil) return Float;
   
private 
   type Clase_Movil is tagged record
      PosicionX : Float;
      PosicionY : Float;
      Velocidad_Movil_X: VelocidadX : 0.0;
      Velocidad_Movil_Y : VelocidadY : 0.0;
   end record;
   
end Movil;
