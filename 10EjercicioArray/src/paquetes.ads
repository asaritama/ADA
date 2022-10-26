
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package paquetes is
   type Array_Personas is private;
   
   procedure Mostrar_Lista (Personas : Array_Personas);

   private 
   type Array_Personas is array (String range <>) of Strings;

end paquetes;
