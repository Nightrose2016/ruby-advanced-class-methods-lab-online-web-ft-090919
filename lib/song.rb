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
  
  def self.new_by_name(sname)
    nsong = self.new
    nsong.name = sname
    nsong
  end
  def self.create_by_name(sname)
    nsong = self.new
    nsong.name = sname
    @@all << nsong
    nsong
  end
  
  def self.find_by_name(sname)
    self.all.detect { |song| song.name == sname}
  end
  
  
end
