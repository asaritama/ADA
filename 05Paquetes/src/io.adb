with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Strings.Fixed;   use Ada.Strings.Fixed;
with Ada.Strings;         use Ada.Strings;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body IO is

   function Get_NotEmpty_Line
     (ErrorMessage : String := "Entrada vacía. Vuelva a ingresar")
      return String
   is
   begin
      loop
         declare
            Entrada : String := Get_Line;
         begin
            declare
               Entrada_Sin_Espacios : String := Trim (Entrada, Both);
            begin
               --Trim quita los espacios del principio y del final.
               --Trim (Entrada, Both);
               --Atributo lenght devuelve la longitud del String.
               if (Entrada_Sin_Espacios'Length > 0) then
                  return Entrada_Sin_Espacios;
               end if;
            end;
         end;
         Put_Line (ErrorMessage);
      end loop;
   end Get_NotEmpty_Line;
   ----------------------------------------------------------------------------------------
   function Try_Get_Integer (Value : out Integer) return Boolean is
   begin
      Value := Integer'Value (Get_Line);
      return True;
   exception
      when others =>
         return False;
   end Try_Get_Integer;
   ----------------------------------------------------------------------------------------
   function Get_Integer
     (ErrorMessage : String := "No ingresó un número. Ingresó una letra")
      return Integer
   is
      EntradaCorrecta : Boolean := False;
      Value           : Integer;
   begin
      while not (EntradaCorrecta) loop
         EntradaCorrecta := Try_Get_Integer (Value);
         Put_Line (ErrorMessage);
      end loop;
      return Value;
   end Get_Integer;

end IO;
