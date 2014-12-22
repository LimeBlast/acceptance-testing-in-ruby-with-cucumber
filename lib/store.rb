class Store
  @@elements = []

  def self.add(element)
    @@elements << element
  end

  def self.find(id)
    @@elements.find { |el| el['id'] == id }
  end
end
