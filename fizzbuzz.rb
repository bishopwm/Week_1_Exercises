class Game
    def initialize
    end

    def run
        1.upto(100) do |n|

            result = []

            if n % 3 == 0
                result.push("fizz")
            end
            

            if n % 5 == 0
                result.push("buzz")
            end

            result = result.join
            if n == 100
            end
            
            if result == ""
                puts n
            else
            puts result
            end

        end    
    end
end


fizzbuzz = Game.new
fizzbuzz.run