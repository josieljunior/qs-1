def eh_triangulo(l1, l2, l3)
  l1 <= (l2 + l3) && l2 <= (l1 + l3) && l3 <= (l1 + l2)
end

def tipo_triangulo(l1, l2, l3)
  return "Não é Triângulo" unless eh_triangulo(l1, l2, l3)

  if l1 == l2 && l2 == l3
    "Equilátero"
  elsif l1 == l2 || l2 == l3 || l1 == l3
    "Isósceles"
  else
    "Escaleno"
  end
end

puts tipo_triangulo(2, 2, 2)
puts tipo_triangulo(2, 2, 3)
puts tipo_triangulo(2, 3, 4)
puts tipo_triangulo(1, 2, 3)