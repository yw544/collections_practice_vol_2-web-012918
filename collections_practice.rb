# your code goes here
def begins_with_r(arr)
arr.each do |element|
  if element.start_with?("r")==false
    return false
  end
end
true
end

def contain_a(arr)
  arr.select do |element|
    element.include?("a")
  end
end

def first_wa(arr)
  arr.find do |element|
    element[0..1] == "wa"
  end
end

def remove_non_strings(arr)
arr.delete_if do |element|
  element.class != String
end
end

def count_elements(arr)
  empty_arr = []
  empty_hash = {}
  arr.each do |hash|
    name = hash[:name]
    if empty_hash.include?(name)
      empty_hash[name] += 1
    else
      empty_hash[name] = 1
    end
  end
empty_hash.each do |name, count|
  p_hash = {name: name, count: count}
  empty_arr << p_hash
end
empty_arr
end
