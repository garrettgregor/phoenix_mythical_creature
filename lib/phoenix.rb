class Phoenix
  attr_reader :name,
              :color,
              :mood,
              :pharaoh,
              :emotional_awareness,
              :tear

  def initialize(name)
    @name                 = name
    @color                = "golden"
    @mood                 = "stoic"
    @pharaoh              = nil
    @emotion_count        = 0
    @emotional_awareness  = Hash.new(0)
    @tear                 = false
  end

  def feels_emotion(emotion)
    @emotional_awareness[emotion] += 1
    @emotion_count += 1
    set_mood_and_color
    @emotional_awareness[emotion] == 3 ? @tear = true : @tear = false
    if @emotional_awareness[emotion] == 5
      initialize(@name)
    end
  end

  def releases_tear?
    @tear
  end

  def set_mood_and_color
    if @emotion_count == 1
      @color  = "amber"
      @mood   = "heated"
    elsif @emotion_count == 2
      @color  = "scarlet"
      @mood   = "fiery"
    elsif @emotion_count == 3
      @color  = "crimson"
      @mood   = "ablaze"
    elsif @emotion_count == 4
      @color  = "deep violet"
      @mood   = "incandescent"
    end
  end

end