require 'pry'

class Dog 
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  
  def self.clear_all
    @@all.clear
  end
  binding.pry
  def self.print_all
    @@all.each {|dog_name| puts dog_name.name}
  end
  
  
  def save 
    @@all << self
  end
  
end