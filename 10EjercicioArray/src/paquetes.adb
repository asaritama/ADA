with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Float_Text_IO;         use Ada.Float_Text_IO;
with Ada.Strings.Unbounded;     use Ada.Strings.Unbounded;
with Ada.Strings.Fixed;         use Ada.Strings.Fixed;
with Ada.Strings;               use Ada.Strings;
with Ada.Integer_Text_IO;       use Ada.Integer_Text_IO;

package body paquetes is

   function get_NotEmpty_Line
     (ErrorMessage : String := "Entrada vacia. Vuelve a ingresar")
      return String
   is
   begin
      loop
         declare

            Entrada : String := Get_Line;
         begin

            Trim (Entrada, Both);

            declare
               Entrada_sin_espacios : String := Trim (Entrada, Both);

            begin
               if Entrada_sin_espacios'Length > 0 then
                  return Entrada_sin_espacios;
               end if;

            end;

         end;
         Put_Line (ErrorMessage);

      end loop;

   end get_NotEmpty_Line;

   function Get_Integer
     (ErrorMessage : String := "No ingreso un numero. Vuelva a introducirlo")
      return Integer
   is
   begin
      loop
         declare
            Numero : Integer;
         begin
            loop

               if (Try_Get_Integer (Numero)) then
                  Put_Line ("");
                  return Numero;

               end if;
               Put_Line ("No ingresaste un numero");

            end loop;

         end;
      end loop;
   end Get_Integer;

end paquetes;
