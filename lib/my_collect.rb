# take an argument of a collection,
# run through the collection 
# execute the code for each collection 
# return the collection, modified


def my_collect(array)
  
  i = 0 
  collect = []
  
  while i < array.length 
    collect << yield(array[i])
    i += 1
  end
  
  collect 
end

# collection = ['ruby', 'javascript', 'python', 'objective-c']
students = ["Tim Jones", "Tom Smith", "Jim Campagno", "Marcie Martian", "Vane Rodriguez", "Laya Murphy", "Gabriel Casey"]

my_collect(students) do |student| 
  "Welcome MR. #{student.split(" ").last.upcase} to class."
end