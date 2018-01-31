def begins_with_r(array)
  array.all? {|element| element.start_with?("r")}
end

def contain_a(array)
  array.find_all {|element| element.include? "a"}
end 

def first_wa(array)
  array.find {|element| element.to_s.start_with?("wa")}
end 

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String 
  end 
end 

def count_elements()