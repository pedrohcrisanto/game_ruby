class Round

  def hit(char_attack)
    attack = damage(char_attack)

    return attack
  end

  def damage(char)
    sort = rand(0..100)
    hash = { damage: "" , msg: "" }

    if sort >= 0 && sort <= 15
      hash[:damage] = 0
      hash[:msg] =  "Errou"       
      
      return hash
    end

    if sort >= 16 && sort <= 70
      hash[:damage] = char.power.to_f + ( char.power.to_f * 1/3 )
      hash[:msg] =  "Normal"        

      return hash
    end

    if sort >= 71 && sort <= 96
      hash[:damage] = char.power.to_f + ( char.power.to_f * 53/100 )
      hash[:msg] =  "Sorte!!!"
      
      return hash
    end

    if sort >= 96 && sort <= 100
      hash[:damage] = char.power.to_f * 2.0
      hash[:msg] =  "Crítico!"

      return hash
    end
  end
end
