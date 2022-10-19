--CLASE 04, FUNCIONES Y PROCEDIMIENTOS
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;

procedure Main is
   --  Función que devuelve la suma de dos valores.
   --  function Sumar (N1 : Integer; N2 : Integer) return Integer is
   --  begin
   --     return N1 + N2;
   --  end Sumar;
   --------------------------------------------------------------------------
   -- Función que calcula con exponentes.
   function Exponente (Base : Integer; Exp : Integer := 2) return Float is
      Resultado : Float;
   begin
      if (Exp = 0) then
         return 1.0;
      end if;

      if (Exp = 1) then
         return Float (Base);
      end if;

      Resultado := Float (Base); -- Casteo de Base.
      for I in 2 .. Exp loop
         Resultado := Resultado * Float (Base);
      end loop;

      if (Exp < 0) then
         return 1.0 / Resultado;
      end if;

      return Resultado;
   end Exponente;

   --Función que realiza una resta y con el boolean se comprueba si el
   --resultado es negativo o no.
   function Resta
     (Izquierda : in Integer; Derecha : in Integer; Negativo : out Boolean)
      return Integer
   is
      Resultado : Integer;
   begin
      Resultado := Izquierda - Derecha;
      Negativo  := (Resultado < 0);
      return Resultado;
   end Resta;

   --Sobrecarga del método.
   function Resta (Izquierda : in Integer; Derecha : in Integer) return Integer
   is
   begin
      return Izquierda - Derecha;
   end Resta;

-----------------------------------------------------------------------------
   --Procedimiento que muestra un valor Float.
   procedure Show_Float (Value : Float) is
      use Ada.Text_IO;
   begin
      Ada.Float_Text_IO.Put (Value, Exp => 0, Fore => 0);
      Ada.Text_IO.Put_Line ("");

   end Show_Float;

   --Renombramiento del procedimiento.
   procedure Put_Line (Value : Float) renames Show_Float;

   -- In out permite modificar el valor una vez ya le has asignado el valor a una variable.
   procedure Swap_Integers (Param1 : in out Integer; Param2 : in out Integer)
   is
      Aux : Integer;
   begin
      Aux    := Param1;
      Param1 := Param2;
      Param2 := Aux;
   end Swap_Integers;

   --Ejercicio de clase mayor menor que.
   procedure MayorMenor
     (Valor1 :     Integer; Valor2 : Integer; Mayor : out Integer;
      Menor  : out Integer)
   is
   begin
      Mayor := (if (Valor1 > Valor2) then Valor1 else Valor2);
      Menor := (if (Valor1 < Valor2) then Valor1 else Valor2);
   end MayorMenor;
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
   --  Primer_Valor  : Integer;
   --  Segundo_Valor : Integer;
   --  Resultado     : Integer;
begin
   --  Primer_Valor  := 6;
   --  Segundo_Valor := 9;
   --  -- Invoco la función sumar con los parámetros.
   --  Resultado     := Sumar (Primer_Valor, Segundo_Valor);
   --  Put_Line
   --    ("El resultado de sumar " & Primer_Valor'Image & " y " &
   --       Segundo_Valor'Image & " es " & Resultado'Image);
-----------------------------------------------------------------------------
   -- Invoco la función sumar con los parámetros por nombres de variable.
   --  Primer_Valor  := 26;
   --  Segundo_Valor := 19;
   --  Resultado     := Sumar (N2 => Primer_Valor, N1 => Segundo_Valor);
   --  Put_Line
   --    ("El resultado de sumar " & Primer_Valor'Image & " y " &
   --     Segundo_Valor'Image & " es " & Resultado'Image);
-----------------------------------------------------------------------------
   --  declare
   --     Res : Float;
   --  begin
   --     Res := Exponente (2);
   --     Show_Float (Res);
   --     --  Put(Res, Exp => 0);
   --     --  Put_Line("");
   --     Res := Exponente (2, 3);
   --     Show_Float (Res);
   --     --Resultado con el nuevo nombre del procedure.
   --     Put_Line (Res);
   --     --  Put(Res, Exp => 0);
   --  end;
   --  declare
   --     A: Integer := 10;
   --     B: Integer := 20;
   --  begin
   --     Put_Line("Antes " & A'Image & " " & B'Image);
   --     Swap_Integers(A,B);
   --     Put_Line("Despues "& A'Image & " "& B'Image);
--  end;

   --  declare
   --     A : Integer := 10;
   --     B : Integer := 20;
   --     Resultado : Integer;
   --     Es_Negativo : Boolean;
   --  begin
   --     --Resta común
   --     Put_Line(Resta(40,30)'Image);
   --     --Invocación de la sobrecarga
   --     Resultado := Resta(A,B, Es_Negativo);
   --     Put_Line("Resultado" & Resultado'Image & (if(Es_Negativo) then "Es negativo" else "Es positivo"));
   --  end;

   declare
      Supuesto_Mayor : Integer := 9;
      Supuesto_Menor : Integer := 19;
   begin
      MayorMenor
        (Supuesto_Menor, Supuesto_Mayor, Mayor => Supuesto_Mayor,
         Menor                                 => Supuesto_Menor);
      Put_Line ("Mayor " & Supuesto_Mayor'Image);
      Put_Line ("Menor " & Supuesto_Menor'Image);
   end;
end Main;
