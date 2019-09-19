class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    nsong = self.new
    @@all << nsong
    nsong
  end
  
  def self.new_by_name
    nsong = self.new
    nsong.name = sname
    @@all << nsong
  end

end
