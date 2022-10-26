
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
package body paquetes is

   procedure Mostrar (Personas : Array_Float) is
      begin
         for I in Personas'Range loop
            Put(Arr (I), Exp=>0);
            Put_Line("");
         end loop;
      end Mostrar;

end paquetes;
