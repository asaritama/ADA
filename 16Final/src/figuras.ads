with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

package Figuras is
   type Clase_Figura is abstract tagged private;
   type Figura is access Clase_Figura'Class;
   
   function Get_Nombre(This: in Clase_Figura) return String;
   
   procedure Calcular_Area(This: in Clase_Figura) is abstract;
   
   type Clase_Rectangulo is new Clase_Figura with private; 
   function Create_Rectangulo(Un_Nombre : String) return Figura; 
   function Get_Base(This: in Clase_Rectangulo) return Float;
   function Get_Altura(This: in Clase_Rectangulo) return Float;
   overriding procedure Calcular_Area(This: in Clase_Rectangulo);
   
   type Clase_Circulo is new Clase_Figura with private;
   function Create_Circulo(Un_Nombre : String) return Figura; 
   function Get_Radio(This : in Clase_Circulo) return Float;
   overriding procedure Calcular_Area(This: in Clase_Circulo);
   
private 
   type Clase_Figura is abstract tagged
      record
         Nombre : Unbounded_String;
      end record;
   type Clase_Rectangulo is new Clase_Figura with
      record
         Base : Float;
         Altura : Float;
      end record;
   type Clase_Circulo is new Clase_Figura with 
      record 
         Radio : Float;
      end record;
   
   
end Figuras;
