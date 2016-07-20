###############################################################################
class Tortas
  attr_accessor :tortas
  def initialize(tortas)
    @tortas = tortas
  end
  def num
    @tortas   
  end
end
###############################################################################
class Separar   
  attr_reader :lote
  
  def initialize(cantidad)
    @cantidad = cantidad    
  end

  def charola   
    charolas = @cantidad/3
  end
  def tipo
    arreglo=(1..@cantidad).to_a.each_slice(3).to_a
    nuevo=[]
    arreglo.each_with_index do |e, index| 
       index
       e.size
      if index % 2 == 0 && e.size == 3
        for i in 1..3
          nuevo << "Super Torta"
          end
      elsif index % 2 != 0 && e.size == 3
        for i in 1..3
          nuevo << "Mega Torta"
          end 
      else
        tamano = e.size
        for i in 1..tamano 
          nuevo << 1 
        end
      end
    end
    nuevo
  end
end
###############################################################################
class Horno
  $crudo = 5 
  $casi_listo = 9 
  $listo = 13 
  $quemado = 15
  def initialize(bandejas)
    @bandejas = bandejas    
  end
  def dentro
    c =[]
    ca=[]
    l =[]
    q =[]
    p =[]
    @bandejas.each do |torta| 
      if torta == "Super Torta"
        t1 = Tiempo_de_coccion.new
        t = t1.tiempo
        if t <= $crudo
          c <<  t
        elsif t > $crudo && t <= $casi_listo 
          ca << t
        elsif t > $casi_listo && t < $quemado
          l<< t
        elsif t >= $quemado 
          q<< t
        end
      elsif torta == "Mega Torta"       
        t2 = Tiempo_de_coccion.new
        tt = t2.tiempo
        if tt < $crudo
          c <<  tt
        elsif tt > $crudo && tt < $casi_listo 
          ca << tt
        elsif tt > $casi_listo && tt < $quemado
          l<< tt
        elsif tt >= $quemado  
          q<< tt
        end

      else
        p<<1
      end         
    end
    puts "Tortas Total: #{@bandejas.size}",
         "Tortas Crudas: #{c.size}",
         "Tortas Casi Listas: #{ca.size}",
         "Tortas Listas: #{l.size}",
         "Tortas Quemadas: #{q.size}",  
         "Tortas por Hacer: #{p.size}"  
  end
end
###############################################################################
class Tiempo_de_coccion
  def tiempo
    time=rand(1..20)    
  end
end
###############################################################################
