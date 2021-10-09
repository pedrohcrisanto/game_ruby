class Char
  attr_accessor(:name, :energy, :power)  

  def live?
    self.energy >= 0 ? true : false
  end

  def dead?
    self.energy <= 0 ? true : false
  end
end
