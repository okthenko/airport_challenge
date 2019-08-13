class Airport
    FLEET = 10
  
    attr_reader :capacity
  
    def initialize
      @planes = []
      @capacity = FLEET
    end
  
    def land(plane)
      fail 'Airport full' if full?
      fail 'Unsuitable weather conditons' if bad_weather?
      planes << plane
    end
  
    def take_off
      fail 'Airport empty' if empty?
      fail 'Unsuitable weather conditions' if bad_weather?
      planes.pop
    end
  
    private
  
    attr_reader :planes
  
    def full?
      planes.count >= capacity
    end

    def empty?
        planes.count = 0

    def bad_weather?
        rand > 0.9
    end
  
  end


