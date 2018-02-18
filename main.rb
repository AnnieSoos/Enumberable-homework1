# main.rb
require 'json'

#attr_accessor :contacts

#def initialize(contacts)
#@contacts=[]
#end

   def read_contacts
     contacts_json = File.read("contacts.json")
     return JSON.parse(contacts_json, { symbolize_names: true })
   end


  def index(contacts)
  contacts.map do |contact| puts "{#{contact[:name]} => #{contact[:phone]}}"
  #contacts.each {|contact| puts "{#{contact[:name]} => #{contact[:phone]}}"}
              end

   def write_contacts(contacts)
     File.open("contacts.json", "w") do |file|
       json = JSON.pretty_generate(contacts)
       file.write(json)
     end
   end

  def select_contact(contacts)
          if contacts.select do |contact| contact[:phone].include? "+1 "
          contacts.map do |contact| contact[:name] contact[:phone].include? "+1"
end
      end
        end
  end
#result = hash.keys.find {|k| k.include? number}
  end
#running methods
  contacts=read_contacts
  index(contacts)

  puts "............."
  puts
  puts "............."
  select_contact(contacts)






#1 Create a method, that uses map on your contact data, so the output
#is an array that holds, per contact,
#a hash with the name of the contact as the key,
#and the phone of the contact as the value.
#(1..4).map { |i| i*i }      #=> [1, 4, 9, 16]
# x.hmap{ |k,v| { k.to_sym => v.to_s  } }
#.collect, same as .map
#.find, same as .detect
#.filter
# .reduce


=begin
puts "Contact for #{contacts[id - 1][:name]} deleted."

def write_contacts(contacts)
  File.open("contacts.json", "w") do |file|
    json = JSON.pretty_generate(contacts)
    file.write(json)
  end
end
=end


=begin
This will return the sum of all string lengths in an array.
look at the form of how reduce works, not about the actual implementation
def amount_of_string_characters_in_a_test_array
  test_array = ["this", "is", "a", "test", "array"]
  test_array.reduce(0) do |sum, element|
    #
    # - The 0 above is your initial value. Assuming that it will return
    # 0 if nothing will be reduced / or the test_array is empty
    #
    # - The first block argument will keep track of your sum, and
    # will (automaticaly) be returned after reduce is done iterating
    # over all elements.
    #
    # - The second block argument is the element in the array we
    # are iterating over.
    #
    # : These comments should NOT show up in your final homework...

    sum += element.length
  end
end

amount_of_string_characters_in_a_test_array # => 16
=end

=begin
✍️ 2.1 Create a method that returns a sub-collection of contacts,
whose phone contain the string +1.

Print the result to the terminal.
✍️ 2.2 Create a method that returns a collection of contacts,
whose email address contain the string .org
=end

=begin
3.1 Create another method that uses reduce that returns how many contacts
have a phone that contains the string "+1" .
You
will use the method of assignment 2.1.
=end
