salutations = [
  'Mr.',
  'Mrs.',
  'Mr.',
  'Dr.',
  'Ms.'
]

first_names = [
  'John',
  'Jane',
  'Sam',
  'Louise',
  'Kyle'
]

last_names = [
  'Dillinger',
  'Cook',
  'Livingston',
  'Levinger',
  'Merlotte'
]

addresses = [
  '33 Foolish Lane, Boston MA 02210',
  '45 Cottage Way, Dartmouth, MA 02342',
  "54 Sally's Court, Bridgewater, MA 02324",
  '4534 Broadway, Boston, MA 02110',
  '4231 Cynthia Drive, Raynham, MA 02767'
]

mailing_list = []
mail_key = [:salutations, :first_names, :last_names, :addresses]
mail_array = salutations.zip(first_names, last_names, addresses)
index = 0
mail_array.each do |x|
  mailing_list[index] = Hash[mail_key.zip(x)]
  index += 1
end

mailing_list.each do |info|
  puts "#{info[:salutations]} #{info[:first_names]} #{info[:last_names]}"
  puts "#{info[:addresses]}"
end

