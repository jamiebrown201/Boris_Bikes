class Bike
	attr_reader :name

	def initialize
		@working = true
		@name = name
		$docked = false
	end

	def docking
		$docked = true
	end

  def working?
    true
  end
end
