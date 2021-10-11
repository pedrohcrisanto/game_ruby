require_relative 'config/initializers/application_controller'

puts "Entre a primeira personagem:"

answer_one = gets

array_answer_one = answer_one.split(' ')

char_one = Char.new

char_one.name = array_answer_one[0]

char_one.energy = array_answer_one[1].to_f

char_one.power = array_answer_one[2].to_f

puts "Entre a segunda personagem:"

answer_two = gets

array_answer_two = answer_two.split(' ')

char_two = Char.new

char_two.name = array_answer_two[0]

char_two.energy = array_answer_two[1].to_f

char_two.power = array_answer_two[2].to_f

puts "O jogo começou"

puts "Batalha entre #{char_one.name} e #{char_two.name}"

loop  do
  round = Round.new

  if char_one.live?
    puts "#{char_one.name} atacou #{char_two.name}"

    first_round = round.hit(char_one)
    char_two.energy = char_two.energy - first_round[:damage].to_f
     
    puts "#{first_round[:msg]} - #{first_round[:damage].to_f.} HP"
  end

  if char_two.live?
    puts "#{char_two.name} atacou #{char_one.name}"

    second_round = round.hit(char_two)
    char_one.energy = char_one.energy - second_round[:damage].to_f

    puts "#{second_round[:msg]} - #{second_round[:damage].to_f)} HP"
  end

  if char_one.dead?
    puts "O jogo acabou, o vencedor foi #{char_two.name} com HP restante de #{char_two.energy}"

    break
  end

  if char_two.dead?
    puts "O jogo acabou, o vencedor foi #{char_one.name} com HP restante de #{char_one.energy}"

    break
  end
end
