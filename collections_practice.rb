# your code goes here
require "pry"
def begins_with_r(collection)
  output = true
  collection.each do |x|
    if x.start_with? 'r'
    else output = false
    end
  end
  output
end

def contain_a(collection)
  collection.select do |x|
    x.include? 'a'
  end
end

def first_wa(collection)
  collection.find do |x|
    if x.instance_of?(String)
      x.start_with? 'wa'
    end
  end
end

def remove_non_strings(collection)
  collection.delete_if do |x|
    x.instance_of?(String) != true
  end
end

def count_elements(collection)
  count = []
  names = []
  collection.each do |obj|
    names << obj.values
  end
  names = names.flatten
  completed = []
  names.each do |name|
    count << {name: name, count: names.count(name)} unless completed.include?(name)
    completed << name
  end
  count
end

def merge_data(keys, data)
  output = []
  test = data[0].keys
  keys.each_with_index do |x, i|
    output << x
    data[0][test[i]].each do |key, value|
      output[i][key] = value
    end
  end
  output
end

def find_cool(cool)
  cool.select do |person|
    person.has_value?("cool")
  end
end

def organize_schools(school)
  keys = school.keys
  output = {}
  schools.each do |school, location|
    if output.has_key?(location[:location])
      output[location[:location]] <<  school
    else
      output[location[:location]] = [school]
    end
  end
  output
end
