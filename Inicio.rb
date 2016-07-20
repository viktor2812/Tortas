require "Torteria"
cantidad = Tortas.new(10)
sep1 = Separar.new(cantidad.num)
cook = Horno.new(sep1.tipo)
cook.dentro