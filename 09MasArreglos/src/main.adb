with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Float_Text_IO;         use Ada.Float_Text_IO;
with Float_Array; use Float_Array;
procedure Main is
   type Dinero is digits 2;
   --Empieza en la posición 1
   type Montos is array (Positive range <>) of Dinero;
   --Empieza en la posición 0
   type Array_Natural is array (Natural range <>) of Dinero;
   --Empieza en la posición Integer'First
   type Array_Integer is array (Integer range <>) of Dinero;

   Ventas               : Montos        := (10.0, 2.3, 6.7);
   Ventas_Natural_Range : Array_Natural := (4.5, 3.4);
   Ventas_Integer_Range : Array_Integer := (6.7, 2.3);

begin
   Put_Line ("Primera posición (Positive range <>) " & Ventas'First'Image);
   Put_Line
     ("Primera posición (Natural range <>) " &
      Ventas_Natural_Range'First'Image);
   Put_Line
     ("Primera posición (Integer range <>) " &
      Ventas_Integer_Range'First'Image);
   declare
      --Declarar un tipo de Arreglo de Float (1..N)
      type Array_Float is array (Positive range <>) of Float;
      ---------------------------------------------------------------------------------------
      --Declarar una función que recibe un número y me inicializa y devuelve un
      --arreglo de N números al azar de N posiciones.
      function Arreglo_N_Azar (Maximo : Integer) return Array_Float is
         G      : Generator;
         Result : Array_Float (1 .. Maximo);
      begin
         for I in Result'Range loop
            Result (I) := Float ((Random (G) * 10.0) + 1.0);
         end loop;
         return Result;
      end Arreglo_N_Azar;
      ---------------------------------------------------------------------------------------
      Numeros : Array_Float := Arreglo_N_Azar (10);
      ---------------------------------------------------------------------------------------
      --Declarar una función que recibe un arreglo de ese tipo y me devuelve la sumatoria
      function Sumatoria (Entrada : Array_Float) return Float is
         Result : Float := 0.0;
      begin
         for I in Entrada'Range loop
            Result := Result + Entrada (I);
         end loop;
         return Result;
      end Sumatoria;
      ---------------------------------------------------------------------------------------
      --Declarar una función que recibe un arreglo de ese tipo y me devuelve el promedio.
      function Promedio_Arreglo (Arreglo_Media : in Array_Float) return Float
      is
      begin
         return Sumatoria (Arreglo_Media) / Float (Arreglo_Media'Length);
      end Promedio_Arreglo;
      ---------------------------------------------------------------------------------------
      --Un procedimiento que muestra el arreglo por pantalla
      procedure Mostrar (Arr : Array_Float) is
      begin
         for I in Arr'Range loop
            Put (Arr (I), Exp => 0);
            Put_Line ("");
         end loop;
      end Mostrar;
      ----------------------------------------------------------------------------------------
      --Una función que reciba array y un valor
      --Devuelve otro array con los valores mayores al parámetro.
      function Mayores
        (Arreglo : Array_Float; Valor : Float) return Array_Float
      is
         Result : Array_Float (1 .. 0); -- Un array vacío
         Aux    : Array_Float :=
           Arreglo; --Copio el arreglo para que tenga la misma lonigtud.
         subtype Tipo_Indice is Integer range Arreglo'Range;
         Indice : Integer := Arreglo'First;
      begin
         for I in Arreglo'Range loop
            if Arreglo (I) > Valor then
               Aux (Indice) := Arreglo (I);
               Indice       := Indice + 1;
            end if;
         end loop;

         declare
            Result : Array_Float (Arreglo'First .. Indice - 1);
         begin
            Result := Aux (Arreglo'First .. Indice - 1); -- Slice
            return Result;
         end;
      end Mayores;

      ----------------------------------------------------------------------------------------
   begin
      for I in reverse Numeros'Range loop
         Put (Numeros (I), Exp => 0);
         Put_Line ("");
      end loop;
      Put_Line ("");
      Put_Line ("La sumatoria es: ");
      Put (Sumatoria (Numeros), Exp => 0);
      Put_Line ("");
      Put_Line ("La media es: ");
      Put (Promedio_Arreglo (Numeros), Exp => 0);
      ---------------------------------------------------------------------------------------
      declare
         Mayores_A_5 : Array_Float := Mayores (Numeros, 5.0);
      begin
         Put_Line ("");
         Put_Line ("Los mayores a 5 son: ");
         Mostrar (Mayores_A_5);
      end;

   end;

end Main;
