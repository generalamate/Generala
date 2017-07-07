require './app'

def obtenerValorDado
    rand(1 .. 6)
end

def guardarNombreJ1(nombre)
    return nombre
end

def validarDado(dado)
    if dado == 1
	@@n1 +=1
      elsif dado == 2
	  @@n2 +=1
        elsif dado == 3
	    @@n3 +=1
          elsif dado == 4
     	      @@n4 +=1
            elsif dado == 5
	        @@n5 +=1
              else
	        @@n6 +=1
    end 

end

def validaPoker

    validarDado(@@dado1)
    validarDado(@@dado2)
    validarDado(@@dado3)
    validarDado(@@dado4)
    validarDado(@@dado5)
    if (@@n1 == 4 or
        @@n2 == 4 or
        @@n3 == 4 or
        @@n4 == 4 or
        @@n5 == 4 or @@n6 == 4)
        return "si"   
    else 
        return "no"
    end

end

def inicializar_contador
    @@n1 = 0
    @@n2 = 0
    @@n3 = 0
    @@n4 = 0
    @@n5 = 0
    @@n6 = 0
end

