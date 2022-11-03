with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO;           use Ada.Text_IO;
with Personaje;             use Personaje;

procedure Main is

   Khazix : Campeon;
begin
   Khazix := Create("Khazix");
   --  Khazix.Nivel := 5;
   --  Khazix.Nombre := To_Unbounded_String ("Khazix");
   --  Khazix.Nivel  := 1;
   --  Khazix.Xp     := 0;
   Put_Line (Khazix.To_String);
   Put_Line ("...Probando los Getters y Setters...");
   Put_Line ("Nombre: "& Khazix.Get_Nombre);
   Put_Line ("Nivel: "& Khazix.Get_Nivel'Image);

   null;

end Main;
