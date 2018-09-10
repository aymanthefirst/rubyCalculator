$stdout.puts "Which function would you like to use?"
$stdout.flush
aFunction = $stdin.gets.chomp
if aFunction ==  "square"
  $stdout.puts "Please enter the number"
  $stdout.flush
  num1 = $stdin.gets.chomp.to_i
  puts "square root of #{num1}: #{Math.sqrt(num1).to_i}"
elsif aFunction ==  "bmi"
  $stdout.puts "Imperial or metric?"
  $stdout.flush
  system = $stdin.gets.chomp
  if system == "metric" #http://extoxnet.orst.edu/faqs/dietcancer/web2/twohowto.html
    $stdout.puts "Please enter your weight"
    $stdout.flush
    weight = $stdin.gets.chomp.to_i
    $stdout.puts "Please enter your height"
    $stdout.flush
    height = $stdin.gets.chomp.to_i
    weight = 100
    height = 1.50
    height = height*height
    bmi = weight/height.to_f
    puts "height: #{height} weight: #{weight} bmi: #{bmi}"
    puts "your BMI is #{weight/0.45.to_f}"
  elsif system == "imperial"
    $stdout.puts "Please enter your weight"
    $stdout.flush
    weight = $stdin.gets.chomp.to_f
    $stdout.puts "Please enter your height"
    $stdout.flush
    height = $stdin.gets.chomp.to_i
    puts "your BMI is #{weight/height.to_f}"
  end
elsif aFunction ==  "trip"
  $stdout.puts "Please enter your distance"
  $stdout.flush
  distance = $stdin.gets.chomp.to_f
  $stdout.puts "Please enter the fuel eficiency"
  $stdout.flush
  fuelEf = $stdin.gets.chomp.to_f
  $stdout.puts "Please enter your cost per galon"
  $stdout.flush
  costPG = $stdin.gets.chomp.to_f
  $stdout.puts "Please enter your speed"
  $stdout.flush
  speed = $stdin.gets.chomp.to_f
  if speed > 60
    for i in 60..speed
        fuelEf -=2
        i+=1
    end
  end
  time = speed/distance.to_f
  price = costPG/fuelEf.to_f
  puts "You're trip will take #{time.to_f.round(2)} hours and cost #{price.to_f.round(2)}"
else
$stdout.puts "Please provide the first number"
$stdout.flush
num1 = $stdin.gets.chomp.to_f
$stdout.puts "Please provide the second number"
$stdout.flush
num2 = $stdin.gets.chomp.to_i

case aFunction
when "+"
  puts "#{num1} + #{num2} = #{num1+num2}"
when "-"
  puts "#{num1} - #{num2} = #{num1+num2}"
when "*"
  puts "#{num1} x #{num2} = #{num1+num2}"
when "/"
  puts "#{num1} / #{num2} = #{num1+num2}"
when "power"
  puts puts "#{num1} to the power of #{num2} = #{num1 ** num2}"
  end
end
