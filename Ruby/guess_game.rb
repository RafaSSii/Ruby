require 'colorize'

puts "Bem-vindos ao jogo Guess Game".colorize(:green)
puts "Tente adivinha o número guardado no cofre e que está entre 1 e 30".colorize(:color => :white, :baclground => :light_blue)

numero_secreto = 4
tentativas = 0

loop do
  print "Digite seu palpite: ".colorize(:yellow)
  palpite = gets.chomp.to_i
  tentativas += 1

  if palpite == numero_secreto
    puts "Parabéns, você acertou em #{tentativas} tentativas.".colorize(:magento)
    break
  elsif palpite < numero_secreto
    puts "O número é maior!".colorize(:cyan)
  else
    puts "O número é menor!".colorize(:cyan)
  end
end