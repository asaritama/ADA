
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers.Vectors; use Ada.Containers.Vectors;

procedure Main is
begin
   --  declare
   --     A : Integer;
   --     B : Integer;
   --     C : Integer;
   --  begin
   --     A := 10;
   --     B := 20;
   --     C := A;
   --     A := 40;
   --     Put_Line(C'Image);
   --  end;
   declare
      type Punto_Integer is access Integer;
      --type Punto_Integer_2 is access Integer;
      PTR_A : Punto_Integer := null;
      PTR_B : Punto_Integer := null;
      PTR_C : Punto_Integer := null;
   begin
      PTR_A := new Integer'(10);
      PTR_B := new Integer'(20);
      PTR_C := PTR_A;
      PTR_A.ALL := 40;
      Put_Line(PTR_C.All'Image);
   end;

   --Declarar un tipo para un registro que sea un punto (X,Y).
   --Declarar un tipo para que sea un puntero(access) a un punto.
   --Declarar un tipo de arreglo de puntero de puntos.
   declare
      type Punto_Registro is record
         X: Integer;
         Y: Integer;
      end record;

      type Punto_Acceso is access Punto_Registro;
      type Array_Punto is  array (Natural range <>) of Punto_Acceso;
      Mi_Punto : Punto_Acceso;


      package Vector_Puntos is new  Ada.Containers.Vectors(Index_Type => Natural, Element_Type => Punto_Acceso);
      Muchos_Puntos : Vector_Puntos.Vector;


   begin
      --  for I  in Muchos_Puntos'Range loop
      --     Muchos_Puntos(I) :=  new Punto_Registro'(I + 1, I + 1);
      --  end loop;

      for Punto_Actual of Muchos_Puntos loop
         Set_Col(Positive_Count(Punto_Actual.X));
         Set_Line(Positive_Count(Punto_Actual.X));
         Put_Line("*");
      end loop;

      --  for I  in Muchos_Puntos'Range loop
      --     Mi_Punto := Muchos_Puntos(I);
      --     Set_Col(Positive_Count(Mi_Punto.X));
      --     Set_Line(Positive_Count(Mi_Punto.Y));
      --     Put_Line("*");
      --  end loop;

   end;

end Main;
