contacts = []

puts "Enter the number of contacts you want to add"
n=gets.chomp.to_i

i=1
while i<=n
  puts "\nEnter the details of contact #{i}:"

  print "Name: "
  name = gets.chomp

  print "Phone: "
  phone = gets.chomp

  print "Email: "
  email = gets.chomp

  contact = {
    name: name,
    phone: phone,
    email: email
  }

  contacts += [contact]
  i += 1
end


puts "\n Details of the contacts "
contacts.each_with_index do |contact, index|
  puts "Contact #{index + 1}:"
  puts "Name : #{contact[:name]}"
  puts "Phone: #{contact[:phone]}"
  puts "Email: #{contact[:email]}"
  puts "\n"
end
