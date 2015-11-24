class DockingStation

attr_reader :bike

  def initialize
    @released = 8
  end

  def release_bike
    if @released > 0
      @released -= 1
    Bike.new
    else
    raise 'No bikes remaining'
    end
  end

  def dock(bike)
   @bike = bike
  end

end
