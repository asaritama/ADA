package body Movil is

   function To_String (This : Clase_Movil) return Float is
   begin
      return
        "La posición actual es "& "(X:"&To_String(This.PosicionX'Image)&" , Y: "&To_String(This.PosicionY'Image)&")";
   end To_String;

end Movil;
