with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Main is
begin
   declare
      type Nota is range 0..10 with Default_Value => 7;
      type Numeros is array (Positive range <>) of Integer with
        Default_Component_Value => 10;
      Array_Vacio : Numeros(2..1);
      -- Muchos_Numeros : Numeros (1 .. 10);
      -- Muchos_Numeros : Numeros := (1,2,3,4,5,6,7,8,9,10);
      Muchos_Numeros : Numeros (1..15) := (1=>2, 2|3|4 => 32, others => 5);
      Mi_Nota : Nota;
      Pedacito : Numeros := Muchos_Numeros(1..4); -- Array Slices
      Muchos_Mas_Numeros : Numeros := Muchos_Numeros & Pedacito;
   begin
      --  for I in Muchos_Numeros'Range loop
      --     Put_Line (Muchos_Numeros (I)'Image);
      --  end loop;
      --  for I in Pedacito'Range loop
      --     Put_Line (Pedacito (I)'Image);
      --  end loop;
      for I in Muchos_Mas_Numeros'Range loop
         Put_Line (Muchos_Mas_Numeros(I)'Image);
      end loop;
      Put_Line("Nota"& Mi_Nota'Image);
      Put_Line("El array vacío tiene longitud "& Array_Vacio'Length'Image);
      Put_Line("El array más largo tiene longitud de "& Muchos_Mas_Numeros'Length'Image);

      --  declare
      --     type Componente_Adn is (A,G,C,T);
      --     --  Componente_Adn_As_String : array (Componente_Adn) of Unbounded_String := (To_Unbounded_String("Adenina"),To_Unbounded_String("Citosina"),To_Unbounded_String("Guanina"),To_Unbounded_String("Timina"));
      --     function To_String(Enum: Componente_Adn) return String is
      --     begin
      --        return (Case Enum is
      --                   when A => "Adenina",
      --                   when G => "Guanina",
      --                   when C => "Citosina",
      --               when T => "Timina");
      --     end To_String;
      --     Componente : Componente_Adn := A;
      --  begin
      --     Put_Line(To_String(Componente));
      --  end;
      ------------------------------------------------------------------------------------------------------------------------------------
      declare
         type Fecha  is record
            Dia : Integer range 1..31;
            Mes : Integer range 1..12;
            Año : Integer range 1900..2300;
         end record;
         Nacimiento : Fecha := (20,9,1980);
         Nacimiento : Fecha := (Dia => 20, Mes => 9, Año => 1980);

      begin
         Nacimiento.Dia := 20;
      end;



   end;

end Main;
