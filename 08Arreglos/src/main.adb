with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Strings.Unbounded;     use Ada.Strings.Unbounded;

procedure Main is
   type Indice_Diez_Numeros is range 1 .. 10;
   --Declaración de un array con rango.
   type Arreglo_Diez_Numeros is array (Indice_Diez_Numeros) of Integer;
   --  Diez_Numeros : Arreglo_Diez_Numeros;
   --G : Generator;
begin
   --Cargo el arreglo de 10 números.
   --  for I in Indice_Diez_Numeros loop
   --     --Diez_Numeros(i) := Integer(I);
   --     Diez_Numeros(I) := Integer(Random(G) * Float(Integer'Last));
   --  end loop;

   --  Diez_Numeros := (1,2,3,4,5,6,7,8,9,10);
   --
   --  for I in Indice_Diez_Numeros'First..Arreglo_Diez_Numeros'Last loop
   --     Put_Line(Diez_Numeros(i)'Image);
   --  end loop;
   ---------------------------------------------------------------------------------
   -- Array de días de la semana
   --  declare
   --     type Dia is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   --     Dias_En_Ingles : array (Dia) of Unbounded_String :=
   --       (To_Unbounded_String ("Monday"), To_Unbounded_String ("Tuesday"),
--        To_Unbounded_String ("Wednesday"), To_Unbounded_String ("Thursday"),
   --        To_Unbounded_String ("Friday"), To_Unbounded_String ("Saturday"),
   --        To_Unbounded_String ("Sunday"));
   --     --  Un_Dia : Dia;
   --  begin
   --     --Un_Dia := Miercoles;
   --     --Put_Line(To_String(Dias_En_Ingles(Un_Dia)));
   --     for Un_Dia in Dias_En_Ingles'Range loop
   --        Put_Line (To_String (Dias_En_Ingles (Un_Dia)));
   --     end loop;
   --  end;
   ----------------------------------------------------------------------------------

   --  declare
   --     -- Declarar un type para un arreglo de 5 numeros
   --     -- Declarar una funcion que devuelve un arreglo del tipo anterior cargado
   --     -- con numeros al azar
   --     type Indice_Cinco_Numeros is range 1 .. 5;
--     type Arreglo_Cinco_Numeros is array (Indice_Cinco_Numeros) of Integer;
   --     --Cinco_Numeros : Arreglo_Cinco_Numeros;
   --
   --     function Array_Cinco_Numeros_Al_Azar return Arreglo_Cinco_Numeros is
   --        G      : Generator;
   --        Result : Arreglo_Cinco_Numeros;
   --     begin
   --        for I in Indice_Cinco_Numeros loop
   --           Result (I) := Integer (Random (G) * Float (Integer'Last));
   --        end loop;
   --        return Result;
   --     end Array_Cinco_Numeros_Al_Azar;
   --
   --     Cinco_Al_Azar : Arreglo_Cinco_Numeros := Array_Cinco_Numeros_Al_Azar;
   --
   --  begin
   --     for I in Cinco_Al_Azar'Range loop
   --        Put_Line (Cinco_Al_Azar (I)'Image);
   --     end loop;
   --
   --  end;
   ------------------------------------------------------------------------------------
--  declare
--     -- type Array_Cinco_Numeros is array (1..5) of Positive;
--     type Rango_Maximo is range 1..50;
--     type Array_Numeros is array (Rango_Maximo range <>) of Positive;
--     Diez_Numeros : Array_Numeros(1..10);
--  begin
--        --Diez_Numeros := (1,2,3,4,5,6,7,8,9,10);
--        -- En posición 1,5 y 7 , se indica que va el 1,5 y 7, en el caso
--        -- de las demás posiciones habrá un 100.
--     Diez_Numeros := (1=>1, 5=>5, 7=>7, others => 100);
--     Put_Line("El Array tiene "& Diez_Numeros'Length'Image & " elementos");
--     for I in Diez_Numeros'Range loop
--        Put_Line(Diez_Numeros(I)'Image);
--     end loop;
--  end;
---------------------------------------------------------------------------------------
-- Ejercicio en el que determinas el tamaño del array por teclado e ingresas la cantidad
-- de números indicados y devuelve el número mayor de todos los ingresados.

   declare
      type Array_Numeros is
        array
          (Integer range <>) of Integer; -- range <> quiere decir que tiene un tamaño variable (Array de tipo dinamico)
      function Maximo_En_Array (Array_N : Array_Numeros) return Integer is
         Maximo : Integer := 0;
      begin
         for I in Array_N'Range loop
            if Array_N (I) > Maximo then
               Maximo := Array_N (I);
            end if;
         end loop;
         return Maximo;
      end Maximo_En_Array;
      Longitud_Ingresada : Integer;
   begin
      Put_Line ("¿Cuantos elementos desea ingresar?");
      Longitud_Ingresada := Integer'Value (Get_Line);
      declare
         Numeros : Array_Numeros (1 .. Longitud_Ingresada);
      begin
         for I in Numeros'Range loop
            Put_Line ("Ingrese el número " & I'Image);
            Numeros (I) := Integer'Value (Get_Line);
         end loop;
         Put_Line ("El maximo es " & Maximo_En_Array (Numeros)'Image);
      end;
   end;

end Main;
