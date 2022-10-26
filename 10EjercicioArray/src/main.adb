with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with paquetes; use paquetes;

procedure Main is

   type Persona  is record
         Nombre : Unbounded_String;
         Apellido : Unbounded_String;
         Edad : Integer range 1..100;
   end record;


   Longitud_Ingresada : Integer;
begin
   Put_Line ("¿Cuantos personas desea ingresar?");
   Longitud_Ingresada := Integer'Value (Get_Line);
   for I in 1..Longitud_Ingresada'Range loop

   end loop;



end Main;
