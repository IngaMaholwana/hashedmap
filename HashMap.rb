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
  def has(key)
    index = hash(key) % @capacity
    @buckets[index] != nil
  end
  def remove(key)
    index = hash(key) % @capacity
    @buckets[index] = nil
  end
  def length
    @buckets.length
  end
  def clear
    @buckets = []
  end
  def keys
    keys = []
    @buckets.each do |bucket|
      keys << bucket[0]
    end
    keys
  end
  def values
    values = []
    @buckets.each do |bucket|
      values << bucket[1]
    end
    values
  end
  def entries
    entries = []
    @buckets.each do |bucket|
      entries << [bucket[0], bucket[1]]
    end
    entries
  end
  
end
