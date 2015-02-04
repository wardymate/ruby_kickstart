class Person
  attr_accessor :name, :age, :quote

  def initialize(options=Hash.new, &initializer)
    self.name    = options[:name]
    self.age     = options[:age]
    self.quote   = options[:quote]
    @initializer = (initializer || Proc.new { |person| }) # this way, it always has a proc, and code like reinit doesn't have to worry that it might not be there
    reinit
  end

  def reinit
    @initializer.call(self)
  end
end

#Jordan
class Person
  attr_accessor :name, :age, :quote

  def initialize(options={}, &initializer)
    self.name = options[:name]
    self.age = options[:age]
    self.quote = options[:quote]
    @initializer = initializer
    initializer.call self if block_given?
  end

  def reinit
    @initializer.call self
  end
end



# Tom Coakes

class Person
  attr_accessor :name, :age, :quote

  def initialize(options, &initializer)
    @name = options[:name]
    @age = options[:age]
    @quote = options[:quote]
    @initializer = initializer
    initializer.call self if initializer
  end

  def reinit
    @initializer.call self
  end
end

#================
#Paulf
class Person

  attr_accessor :name, :age, :quote

  def initialize(options=Hash.new, &initializer)
    @name = options[:name]
    self.age = options[:age]
    @quote = options[:quote]

    @initializer = initializer
    initializer.call self if initializer
  end

  def reinit
    @initializer.call self
  end

end