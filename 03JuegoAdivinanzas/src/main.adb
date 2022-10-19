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
   --  La computadora determina un n�mero al azar entre 1 y 100.
   --  La computadora da 5 oportunidades al usuario para adivinar dicho n�mero.
   --  El usuario arriesga un n�mero y la computadora dice si dicho n�mero es mayor o
   -- menor que el n�mero secreto.
   -- Si adivino antes de las 5 oportunidades gana si no pierde.
   -- Ejercicio hecho por m�
   --  Reset(G);
   --  Numero_Al_Azar := Integer((Random(G)* 99.0)+1.0);
   --  Put_Line(Numero_Al_Azar'Image);
   --  Put_Line("Introduce un n�mero: ");
   --  for I in 1..5 loop
   --     Get(Entrada);
   --     if Entrada < Numero_Al_Azar then
   --        Put_Line("N�mero introducido es menor que n�mero pensado.");
   --     elsif Entrada > Numero_Al_Azar then
   --        Put_Line("N�mero introducido es mayor que n�mero pensado.");
   --        --Put_Line("Tienes " & (I - 1) & " oportunidades ");
   --     elsif Entrada =  Numero_Al_Azar then
   --        Put_Line("Ganaste!!");
   --     end if;
   --  end loop;
   -----------------------------------------------------------------------
   -- Ejercicio hecho en clase.
   Reset(G);
   Put_Line("Juego de Adivina el n�mero secreto ");
   Numero_Al_Azar := Integer((Random(G)* 99.0)+1.0);
   loop
      Put_Line("Adivine el n�mero secreto");
      Get(Entrada);
      if(Entrada > Numero_Al_Azar) then
         Put_Line("El n�mero ingresado es mayor al n�mero secreto");
      elsif(Entrada < Numero_Al_Azar) then
         Put_Line("El n�mero ingresado es menor al n�mero secreto");
      else
         Victoria:= true;
      end if;
      Oportunidad_Actual:= Oportunidad_Actual + 1;
      exit when (Oportunidad_Actual>Max_Oportunidades) or (Victoria);
   end loop;

   Put_Line(if Victoria then "Ganaste" else "Perdiste, el n�mero que pens� es el" & Numero_Al_Azar'Image);

end Main;
