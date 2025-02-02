class HashMap
  def initialize
    @loadfactor
    @capacity 
  end

  def hash(key)
    hash_code = 0
   prime_number = 31
      
   key.each_char { |char| hash_code = prime_number * hash_code + char.ord }
      
   hash_code
  end
  def set(key, value)
    index = hash(key) % @capacity
    @buckets[index] = value
  end
  def get(key)
    index = hash(key) % @capacity
    @buckets[index]
  end
 
  

end
