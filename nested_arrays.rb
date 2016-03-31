
#Ajedrez
def nested_arrays

  array_tablero_position = Array.new(8) {Array.new(8,"")}
  piezas = Array.new(8)

#Fill piezas  
  for i in 0..7
    if i == 0 || i == 7
      piezas[i] = "T"
    elsif i == 1 || i == 6
      piezas[i] = "C"
    elsif i == 2 || i == 5
      piezas[i] = "A"
    elsif i == 3
      piezas[i] = "R"
    elsif i == 4
      piezas[i] = "r"
    end
  end
     
          
        

# #Tablero Hermoso y perfecto <3 sin piezas
#   for i in 0..7 
#     for j in 0..7


        # if j % 2 != 0 && i % 2 != 0 
        #   array_tablero_position[i][j] = "***"

        # elsif j % 2 == 0 && i % 2 == 0
        #   array_tablero_position[i][j] = "***" 

        # else
        #   array_tablero_position[i][j] = "   " 

        # end

#     end
#   end

  for i in 0..7
    for j in 0..7
      if ( i == 0 )
        for k in 0..7
          array_tablero_position[i][k] = piezas[k] + "-B"
        end 
      elsif ( i == 1 )
        for k in 0..7
          array_tablero_position[i][k] = "P-B"
        end

      elsif ( i == 7)
        for k in 0..7
          array_tablero_position[i][k] = piezas[k] + "-N"
        end

      elsif ( i == 6 )
        for k in 0..7
          array_tablero_position[i][k] = "P-N"
        end

        else
          array_tablero_position[i][j] = "   " 

      #   end
      end
    end
  end


#string para dar formato
  x = ""
  for n in 1..47
    if n % 6 == 0
      x += "+"
    else
      x += "-"
    end
  end




#Imprime tablero
  array_tablero_position.each do |e| 
    p x
    e.each do |pieza|
      printf "| #{pieza} "
    end
    printf "|"
    printf "\n"
  end
  p x
  # p piezas

end


table = [ ["Nombre",      "Edad",   "Genero",       "Grupo",    "Calificaciones"],
          ["Rodrigo",       13,     "Masculino",    "Primero",  [9, 9, 7, 6, 8] ],
          ["Fernanda",      12,     "Femenino",     "Tercero",  [6, 9, 8, 6, 8] ],
          ["Luis Perez",    13,     "Masculino",    "Primero",  [8, 7, 7, 9, 8] ],
          ["Ana Espinosa",  14,     "Femenino",     "Segundo",  [9, 9, 6, 8, 8] ],
          ["Pablo Moran",   11,     "Masculino",    "Segundo",  [7, 8, 9, 9, 8] ] ]




nested_arrays


p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6









