package body Personaje is

   function Create (Nombre : String) return Campeon is
      Result : Campeon;

   begin
      Result := new Clase_Campeon;

      Result.Nombre := To_Unbounded_String(Nombre);
      Result.Nivel := 1;
      Result.Xp := 0;

      return Result;
   end Create;

   function Get_Nombre(This:Clase_Campeon) return String is
   begin
      return To_String(This.Nombre);
   end;

   function Get_Nivel(This:Clase_Campeon) return Niveles is
   begin
      return This.Nivel;
   end;



   function To_String (This : Clase_Campeon) return String is
   begin
      return
        "Soy el campeón " & To_String (This.Nombre) & " (HP: " &
        This.Hp'Image & "," & "Nivel : " & This.Nivel'Image & ")";
   end To_String;
end Personaje;
