with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
procedure Main is
   Sumatoria : Integer := 0;
begin
   --Algoritmo que calcula la sumatoria de valores hasta que el usuario
   --introduzca un 0. (BUCLE LOOP)
   --  Put_Line("Ingrese valores. Un 0 para finalizar la carga.");
   --  Put_Line("Se calculará la sumatoria");
   --  loop
   --     Get(Entrada_Datos);
   --     exit when Entrada_Datos = 0;
   --     Sumatoria := Sumatoria + Entrada_Datos;
   --  end loop;
   --  Put_Line("La sumatoria es "& Sumatoria'Image);
   ---------------------------------------------------------------------
   --Mismo ejercicio con el "While"
   --  Entrada_Datos := 1;
   --  Put_Line("Ingrese valores. Un 0 para finalizar la carga.");
   --  Put_Line("Se calculará la sumatoria");
   --  Get(Entrada_Datos); -- Lectura adelantada
   --  while Entrada_Datos /= 0 loop
   --     Sumatoria := Sumatoria + Entrada_Datos;
   --     Get(Entrada_Datos);
   --  end loop;
   --  Put_Line("La sumatoria es "& Sumatoria'Image);
   ----------------------------------------------------------------
   --Ejercicio  de switch case
   --  declare
   --     Edad: Integer;
   --  begin
   --     Put_Line("Ingrese su edad");
   --     Get(Edad);
   --     case Edad is
   --        when 0|1|2 => Put_Line("Es un recién nacido");
   --        when 3..9 => Put_Line("Es un infante");
   --        when 10..18 => Put_Line("Es un joven");
   --        when 19..49 => Put_Line("Es un adulto");
   --        when 50 => Put_Line("Medio siglo de vida.");
   --        when others => Put_Line("Mayor de 50");
   --     end case;
   --  end;
   --------------------------------------------------------
   --Introducción a los String
   --Forma explícita de definir un String
   --  declare
   --     S : String(1..9);
   --  begin
   --     S := "Alejandro";
   --     Put_Line(S);
   --  end;
   ---------------------------------------------------------
   --Forma implicita de definir un String
   --  Put_Line("Ingrese su nombre: ");
   --  declare
   --     Nombre: String := Get_Line;
   --  begin
   --     Put_Line("Hola "& Nombre);
   --  end;
   ----------------------------------------------------------
   --Programa que pregunte valores positivos hasta que ingrese un 0
   -- Utilizar un bloque declare
   --Tiene que mostrar el máximo número ingresado.
   --  declare
   --     Entrada : Integer;
   --     Maximo  : Integer := 0;
   --  begin
   --     Get (Entrada);
   --     while Entrada /= 0 loop
   --        if (Entrada > Maximo) then
   --           Maximo := Entrada;
   --        end if;
   --        Get (Entrada);
   --     end loop;
   --     Put_Line ("El maximo es: " & Maximo'Image);
   --  end;
   ------------------------------------------------------------
   -- Operador ternario
   --  declare
   --     Edad : Integer;
   --  begin
   --     Get (Edad);
   --     Put_Line (if (Edad >= 18) then "Es mayor" else "Es menor");
   --  end;
   -------------------------------------------------------------
   --  declare
   --     Edad : Integer;
   --  begin
   --     Get(Edad);
   --     Put_Line (case Edad is
   --                  when 0 .. 17 => "Es menor de edad",
   --                  when 18 .. 60 => "Es adulto",
   --                  when others => "Es senior");
   --  end;
   -------------------------------------------------------------
   --Ejercicio que cuenta pares e impares y cuenta la cantidad
   --de números que introduces
   --  declare
   --     Entrada : Integer;
   --     Sumatoria_Pares : Integer := 0;
   --     Impares : Integer := 0;
   --     Total : Integer := 0;
   --  begin
   --     Put_Line("Ingrese números y pulsa 0 para finalizar.");
   --     loop
   --        Get(Entrada);
   --        Sumatoria_Pares := Sumatoria_Pares + (if ((Entrada mod 2)= 0) then 1 else 0);
   --        Total := Total + 1;
   --        exit when (Entrada = 0);
   --     end loop;
   --     Put_Line("Total " &  Total'Image & ", Pares "& Sumatoria_Pares'Image & ", Impares "& Impares'Image);
   --  end;
   --------------------------------------------------------------------------------
   --Pequeño minijuego que genera 10 números entre 0.0 y 1.0
   --  declare
   --     G : Generator;
   --     Numero_Al_Azar : Uniformly_Distributed;
   --
   --  begin
   --     Reset(G);
   --     for I in 1..10 loop
   --        Numero_Al_Azar := Random(G);
   --        Put(Numero_Al_Azar, 0, 3, 0);
   --        Put_Line("");
   --     end loop;
   --  end;
   ----------------------------------------------------------------
   --Programa que genera 20 números enteros al azar entre 1.0 y 10.0
   declare
      G: Generator;
      Numero_Al_Azar : Integer;
   begin
      Reset(G);
      for I in 1..20 loop
         --Numero_Al_Azar := Integer(Random(G)* 10.0) + 1;
         Numero_Al_Azar := Integer((Random(G)* 9.0) + 1.0);
         Put_Line(Numero_Al_Azar'Image);
      end loop;

   end;


end Main;
