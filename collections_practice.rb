# your code goes here
def begins_with_r(array)
    array.all? do |el|
        el.start_with?("r")
    end
end

def contain_a(array)
    array.select do |el|
        el.include?("a")
    end
end

def first_wa(array)
    array.find do |el|
        el.class == String && el.start_with?("w")
    end
end


def remove_non_strings(array)
    array.delete_if do |el|
        el.class != String
    end
end


def count_elements(array)
    array.each do |ob|
        ob[:count] = 0
        value = ob[:name]
        array.select do |el|
            ob[:count] += 1 if el[:name] == value
        end
    end.uniq
end

def merge_data(keys, data)
    array = []
    keys.map do |person|
        name = person[:first_name]
        data.each do |description|
            if description[name]
                h = description[name]
                h[:first_name] = name
                array << h
            end
        end
    end
    array
end


def find_cool(array)
    array.each do |element|
        return [element] if element[:temperature] == "cool"
    end
end

def organize_schools(schools)
    array = {}
    schools.each do |school, location|
        l = location[:location]
        if array[l]
            array[l] << school
            else
            array[l] = []
            array[l] << school
        end
    end
    array
end

