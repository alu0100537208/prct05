# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

# define la clase Fraccion

class Fraccion

# método inicializar clase
  
    def initialize (num,denom)
      # atributos      
      @num = num;
      @denom = denom; 
    end

# convertir a una cadena
    
    def to_s 
	puts "#{@num}/#{@denom}"
    end
  
    def suma(a,b) # suma de fracciones
      "#{@num}/#{@denom} + #{a}/#{b} ="
      aux = (@denom/gcd(@denom,b)) * b # Calculo del mcm usando la propiedad (a*b/mcd(a,b))
      aux2 = ((aux/@denom) * @num) + ((aux/b) * a) # Calculo de la suma
      # Mostrar por pantalla resultado     
      if aux2 % aux == 0 # Compruebo si la divison es exacta para imprimir el resultado de la division
	 aux3 = aux2/aux
      else
         "#{aux2}/#{aux}"
      end  
    end
   
   
    def resta(a,b) #resta de fracciones
      "#{@num}/#{@denom} + #{a}/#{b} ="
      aux = (@denom/gcd(@denom,b)) * b # Calculo del mcm usando la propiedad (a*b/mcd(a,b)) 
      aux2 = ((aux/@denom) * @num) - ((aux/b) * a) # Calculo de la resta
      # Mostrar por pantalla el resultado
      if aux2 % aux == 0 # Compruebo si la divison es exacta para imprimir el resultado de la division
	 aux3 = aux2/aux
         "#{aux3}"
      else
         "#{aux2}/#{aux}"
      end
    end   
   
    
    def producto(a,b) # Producto de fracciones
      "#{@num}/#{@denom} * #{a}/#{b} ="
      # Calculo del producto
      aux = @denom * b
      aux2 = @num * a
      # Mostrar por pantalla resultado
      if aux2 % aux == 0 # Compruebo si la divison es exacta para imprimir el resultado de la division
         aux2/aux
      else
         "#{aux2}/#{aux}"
      end
    end
        
    def division(a,b) # Division de fracciones
      "#{@num}/#{@denom} / #{a}/#{b} ="
       # Calculo del producto
       aux = @denom * a
       aux2 = @num * b
       # Mostrar por pantalla resultado
       if aux2 % aux == 0 # Compruebo si la divison es exacta para imprimir el resultado de la division
          aux2/aux
       else
          "#{aux2}/#{aux}"
       end
     end
end  
   f = Fraccion.new(3,2)
   f.to_s
   print "Suma: "
   puts f.suma(2,3)
   print "Resta: "
   puts f.resta(2,3)
   print "Producto: "
   puts  f.producto(2,3)
   print "Division: "
   puts  f.division(2,3)
