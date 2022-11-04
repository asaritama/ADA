with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Figuras; use Figuras;

procedure Main is
   --Figuras!
   --Va de lo siguiente
   --Crear un paquete
   --Tenemos la clase abstracta figura con el metodo abstracto Calcular_Area
   --Herdan el cuadrado y el circulo
   --El rectacgulo tiene base y altura
   --El circulo tiene radio
   --No se olviden de los getters!! y los constructores!!
   --Las subclases implementan el metodo Calcular_Area
   --En el main generar un vector de 10 figuras en forma aleatoria que
   --tenga circulos y rectangulos con tamaño tambien aleatorio
   --Mostrar la sumatoria del area de todas las figuras una vez cargado el array
   Figura_Uno : Figura;

begin
   Figura_Uno := Create_Rectangulo("REctangulo 1");
   Figura_Uno := Get_Altura(2.0);
   Figura_Uno := Get_Base(3.0);
   Figura_Uno.Calcular_Area;
end Main;
