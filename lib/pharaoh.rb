class Pharaoh
  attr_reader :name,
              :reputation,
              :dynastic_period,
              :phoenix,
              :healthy,
              :age,
              :dead

  def initialize(name, reputation, dynastic_period, phoenix)
    @name             = name
    @reputation       = reputation
    @dynastic_period  = dynastic_period
    @phoenix          = phoenix
    @healthy          = true
    @age              = 0
    @dead             = false
  end

  def healthy?
    @healthy
  end

  def ages
    @age += 1
    if @age >= 18
      @healthy = false
    end
  end

  def dead?
    @dead
  end

  def dies
    @dead = true
    5.times { @phoenix.feels_emotion(:sorrow) }
  end

  def takes_action(emotion)
    @phoenix.feels_emotion(emotion)
    if @phoenix.releases_tear? == true
      @healthy = true
    end
  end

end