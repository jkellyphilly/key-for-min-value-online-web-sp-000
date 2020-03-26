# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.size == 0
    nil
  else
    smallest_value = 0
    smallest_key = ""
    name_hash.each do |key, value|
      if value < smallest_value
        smallest_value = value
        smallest_key = key
      end
    end
  end
end
