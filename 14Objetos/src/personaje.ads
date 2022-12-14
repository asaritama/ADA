with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Personaje is

   type Vida is new Integer range 0 .. 1000;
   type Niveles is new Integer range 1 .. 20;
   type Puntos_Experiencia is new Integer range 0 .. 2000;


   type Clase_Campeon is tagged private;
   type Campeon is access Clase_Campeon;
   
   
   function Get_Nombre(This:Clase_Campeon) return String;
   function Get_Nivel(This:Clase_Campeon) return Niveles;
   
   function Create (Nombre : String) return Campeon ;
   function To_String (This : Clase_Campeon) return String;
   
private 
   type Clase_Campeon is tagged record
      Nombre : Unbounded_String;
      Hp     : Vida               := 1000;
      Nivel  : Niveles;
      Xp     : Puntos_Experiencia := 0;
   end record;

end Personaje;
