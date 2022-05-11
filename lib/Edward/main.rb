class Main
    def initialize(ancho,alto)
      @ancho = ancho
      @alto = alto
      @matriz = []
      
    end
  
    def create_matrix
      ancho_real = @ancho -1
      alto_real = @alto -1
      @matriz = Array.new(@ancho){Array.new(@alto){["*","."].sample}}
      (0..alto_real).each do |i|
        (0..ancho_real).each do |j|
          if i==0 || i==alto_real || j==0 || j==ancho_real
            @matriz[i][j] = "."
          end
        end
      end
    end
  
    def print_matrix
      i = 0
      while i < @ancho
        puts @matriz[i].join(" ")
        i = i +1
      end
    end
  
  end
  
  #Setear valores de ancho y alto para iniciar juego
  juego = Main.new(10,10)
  juego.create_matrix
  juego.print_matrix