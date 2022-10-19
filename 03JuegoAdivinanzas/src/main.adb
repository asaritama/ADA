with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Main is
   G: Generator;
   Numero_Al_Azar : Integer;
   Entrada: Integer;
   Victoria : Boolean := false;
   Oportunidad_Actual : Integer := 1;
   Max_Oportunidades: constant Integer := 5;
begin
   --  La computadora determina un número al azar entre 1 y 100.
   --  La computadora da 5 oportunidades al usuario para adivinar dicho número.
   --  El usuario arriesga un número y la computadora dice si dicho número es mayor o
   -- menor que el número secreto.
   -- Si adivino antes de las 5 oportunidades gana si no pierde.
   -- Ejercicio hecho por mí
   --  Reset(G);
   --  Numero_Al_Azar := Integer((Random(G)* 99.0)+1.0);
   --  Put_Line(Numero_Al_Azar'Image);
   --  Put_Line("Introduce un número: ");
   --  for I in 1..5 loop
   --     Get(Entrada);
   --     if Entrada < Numero_Al_Azar then
   --        Put_Line("Número introducido es menor que número pensado.");
   --     elsif Entrada > Numero_Al_Azar then
   --        Put_Line("Número introducido es mayor que número pensado.");
   --        --Put_Line("Tienes " & (I - 1) & " oportunidades ");
   --     elsif Entrada =  Numero_Al_Azar then
   --        Put_Line("Ganaste!!");
   --     end if;
   --  end loop;
   -----------------------------------------------------------------------
   -- Ejercicio hecho en clase.
   Reset(G);
   Put_Line("Juego de Adivina el número secreto ");
   Numero_Al_Azar := Integer((Random(G)* 99.0)+1.0);
   loop
      Put_Line("Adivine el número secreto");
      Get(Entrada);
      if(Entrada > Numero_Al_Azar) then
         Put_Line("El número ingresado es mayor al número secreto");
      elsif(Entrada < Numero_Al_Azar) then
         Put_Line("El número ingresado es menor al número secreto");
      else
         Victoria:= true;
      end if;
      Oportunidad_Actual:= Oportunidad_Actual + 1;
      exit when (Oportunidad_Actual>Max_Oportunidades) or (Victoria);
   end loop;

   Put_Line(if Victoria then "Ganaste" else "Perdiste, el número que pensé es el" & Numero_Al_Azar'Image);

end Main;
