with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Integer_Text_IO;   use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with paquetes;              use paquetes;

procedure Main is

   type Persona is record
      Nombre   : Unbounded_String;
      Apellido : Unbounded_String;
      Edad     : Integer range 1 .. 100;
   end record;

   type Array_Personas is array (Positive range <>) of Persona;

   Longitud_Ingresada : Integer;

begin
   Put_Line ("¿Cuantos personas desea ingresar?");
   Longitud_Ingresada := Get_Integer;
   declare
      Personas : Array_Personas (1 .. Longitud_Ingresada);

   begin
      for I in Personas'Range loop
         Put_Line ("Persona " & I'Image);
         Put_Line ("Ingrese Nombre: ");
         Personas (I).Nombre := To_Unbounded_String (Get_Line);
         Put_Line ("Ingrese Apellido: ");
         Personas (I).Apellido := To_Unbounded_String (Get_Line);
         Put_Line ("Ingrese Edad: ");
         Personas (I).Edad := Get_Integer;
      end loop;

      for index in Personas'Range loop
         Put_Line ("");
         Put (To_String (Personas (index).Nombre));
         Put (" " & To_String (Personas (index).Apellido));
         Put (Personas (index).Edad'Image);
      end loop;
   end;

end Main;
