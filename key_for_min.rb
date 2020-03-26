# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'pry'

def key_for_min_value(name_hash)
  if name_hash.size == 0
    nil
  else
    smallest_value = 0
    smallest_key = []
    first_iteration_run = false
    name_hash.each do |key, value|
      if !first_iteration_run
        #binding.pry
        smallest_value = value
        smallest_key << key
        first_iteration_run = true
      elsif value < smallest_value && first_iteration_run
        smallest_value = value
        smallest_key << key
      end
    end
    #puts smallest_value
    smallest_key.last
  end
end

testing = {:blake => 0, :ashley => 50, :adam => 17}

key_for_min_value(testing)
