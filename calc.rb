
  def which_calc() 
    
      print 'Would you like to use (b)asic or (a)dvanced calc or (q)uit?'
      user_input = gets.chomp
      if user_input == 'b'
        print 'What is your first number?'
        first_number = gets.to_i

        print 'What is your second number?'
        second_number = gets.to_i
        
        print 'What operations would you like to perform?'
        operation = gets.chomp
          case operation 
          when '+'
            print first_number + second_number
          when '-'
            print first_number - second_number
          when '*'
            print first_number * second_number
          when '/'
            print first_number / second_number
          else
            print "Error" 
          end
      elsif user_input == 'a'
        print 'Do you want to square root, power of, Mortgage, BMI or trip calc?'
        operation = gets.chomp
          case operation
          when 's'
            print 'what is your number'
            first_number = gets.chomp.to_i
            print Math.sqrt(first_number)  
          when 'p'
            print 'what is your number'
            first_number = gets.chomp.to_i
            print 'To the power of?'
            power_of = gets.chomp.to_i
            print first_number ** power_of
          when 'bmi'
            print 'Imperial or Metric?'
            measurement = gets.chomp
            if measurement == 'i'
              print 'What is your weight in lbs?'
              heavy = gets.chomp.to_f
              print 'What is your height in inches? '
              height = gets.chomp.to_f
              print ((heavy/(height**2))*703).to_f
            elsif measurement == 'm'
              print 'What is your weight in kg?'
              heavy = gets.chomp.to_f
              print 'What is your height in m'
              height = gets.chomp.to_f
              print heavy/(height**2)
            else
              print 'Error'
            end
          when 't'
            print 'how far are you going (miles)?'
            distance = gets.to_i.to_f
            print 'what is the MPG?'
            mpg = gets.to_i.to_f
            print 'what is the cost per gallon?'
            cpg = gets.to_i.to_f
            print 'what speed are you going (mph)?'
            speed = gets.to_i.to_f
            puts "your journey will take #{distance / speed} hours and will cost $#{(distance / mpg) * cpg}"  
          when 'm'
            print 'what is your principal?'
            p = gets.chomp.to_f
            print 'What is your yearly interest rate?'
            ir = gets.chomp.to_f
            # i = ir / 10
            print 'How many payments?'
            n = gets.chomp.to_f
            # top = i(1+i)**n
            # bottom = (1 + i)**n-1
            # p*((top)/(bottom))
            print p * (ir * (1 + ir)**n) / ((1+ir)**n - 1)
        end 
      elsif user_input == 'q'
        puts 'Goodbye'
      end
    end
    which_calc
  if gets.chomp != 'q'
    puts "\e[H\e[2J"
    which_calc
  end

