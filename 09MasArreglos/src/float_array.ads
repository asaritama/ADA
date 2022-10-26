package Float_Array is

   type Array_Float is array (Positive range <>) of Float;
      function Arreglo_N_Azar (Maximo : Integer) return Array_Float;
      function Sumatoria (Entrada : Array_Float) return Float;
      function Promedio_Arreglo (Arreglo_Media : in Array_Float) return Float;
      function Mayores
        (Arreglo : Array_Float; Valor : Float) return Array_Float;
