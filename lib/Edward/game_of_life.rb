puts "Elegir ancho del tablero"
$width = gets.chomp.to_i
puts "Elegir alto del tablero"
$height = gets.chomp.to_i
def init
    $matriz = Array.new($width){Array.new($height){["*","."].sample}}
    $width.times do |i|
        $height.times do |j|
            print $matriz[i][j]
        end
        puts
    end
end
init
