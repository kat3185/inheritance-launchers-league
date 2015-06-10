class SuperHero
  attr_reader :public_identity

  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    "Can learn to code exceptionally quickly."
  end

  def weakness
    "Can't maintain a life while learning to code."
  end

  def backstory
    "When the banging from the floors above finally knocked the projector to the floor during a facilitation,
    it shattered, revealing its matter-antimatter power core.  Luckily, Richard had adjusted it earlier that
    morning, so it hit the floor at just the right angle to create a chronoton-warp-containment-field and no one died.
    The burst of chroniton radiation caused the Launchers present to develop strange powers! Now they fight crime!"
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

  private
  attr_reader :secret_identity
end

class Speedster < SuperHero

  def speed_in_mph
    60 * 1000
  end
end

class Brawler < SuperHero

  def health
    2000
  end
end

class Detective < SuperHero

  def weakness
    "#{secret_identity}"
  end

  def speed_in_mph
    10
  end

  def backstory
    "On the day that the projector fell, #{public_identity} was out in the restroom.  As a result,
    they have not aquired any super powers... but to show solidarity with their fellow launchers,
    these brave detectives have joined in the fight against evil."
  end
end

class Demigod < SuperHero

  def home
    "Cosmic Plane"
  end
end

class JackOfAllTrades < SuperHero

  def species
    "Alien"
  end

  def backstory
    "After the projector fell, some among us revealed themselves to be not of this earth.  While they gained no
    new powers that day, they decided to join the Launcher League anyway, both to help fight evil, and to offer their
    extraplanetary wisdom."
  end

  def home
    "Venus"
  end

  def psychic?
    true
  end
end

class WaterBased < SuperHero

  def home
    "Earth's Oceans"
  end

  def psychic?
    true
  end

  def fans_per_thousand
    5
  end
end
