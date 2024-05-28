
# While == enquanto
i = 0
num = 5

while i < num do
    puts "Contando no while: " + i.to_s
    i += 1
end


# each == cada      MUITO USADO passar por cada elemento

(0..5).each do |i|
    puts "O valor lido no each foi: " + i.to_s
end

#voce pode usar com array também segue exemplo abaixo

teste = ['A', 'b', 3]

teste.each do |i|
    puts "O valor do 2each foi: " + i.to_s
end

