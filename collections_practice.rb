# your code goes here
def begins_with_r(tools)
  tools.each do |tool|
    if tool.chr != "r"
      return false  
    end 
  end 
  return true 
end 

def contain_a(elements)
  array = []
  elements.each do |element|
    if element.include?("a") 
      array.push(element)
    end 
  end 
  return array
end 

def first_wa(elements)
  elements.each do |element|
    if element.slice(0,2) == "wa"
      return element
    end 
  end 
end 

def remove_non_strings(elements)
  array = []
  elements.each do |element|
    if element.class == String
      array.push(element)
    elsif 
      puts "nothing"
    end 
  end 
  array
end 
  
def count_elements(array)
  counts = [0]
  names = []
  newarray = []
  array.each do |hashes|
    if names.include?(hashes[:name])
      counts[names.index(hashes[:name])] += 1
    elsif 
      names.push(hashes[:name])
      counts[names.index(hashes[:name])] = 1
    end
  end 
  
  names.each_with_index do |name,index|
    newarray.push({:name => name, :count => counts[index]})
  end 
  newarray
end
    
def merge_data(keys, data)
  merged_data = keys.dup
  i = 0 
  merged_data.each do |names|
    merged_data[i] = names.merge(data[0][names[:first_name]])
    i += 1
  end 
  merged_data
end 

def find_cool(cool)
  cool_people = []
  cool.each do |person|
    if person[:temperature] == "cool"
      cool_people.push(person)
    end 
  end 
  cool_people
end 

def organize_schools(schools)
  nyc_schools = []
  sf_schools = []
  chicago_schools = []
  schools.each do |school, location|
    if location[:location] == "NYC"
      nyc_schools.push(school)
    elsif location[:location] == "SF"
      sf_schools.push(school)
    elsif location[:location] == "Chicago"
      chicago_schools.push(school)
    end 
  end 
  organized_schools["NYC"] = nyc_schools
  organized_schools["SF"] = sf_schools
  organized_schools["Chicago"] = chicago_schools
  organized_schools
end 
    
  
    
  