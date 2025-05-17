math.randomseed(os.time())

local guessNumber = math.random(1, 100)
local guessStatus = false
local stepNumber  = 0

print("Guess a number between 1 and 100")
print("This is a funny game")

while guessStatus == false do
    io.write("Enter the number: ")
    local guessCurrentNumber = tonumber(io.read())
    
    if not guessCurrentNumber then
        print("Please enter a valid number")
    else
          stepNumber = stepNumber + 1
        if guessCurrentNumber < guessNumber then
           print("Your number is lower than Guess Number")
        elseif guessCurrentNumber > guessNumber then
            print("Your number is higher than Guess Number")
        else 
          
            guessStatus = true
            print(string.format("\nCongratulations! You guessed the number %d in %d steps", stepNumber))
            print(string.format("\nCongratulations! You guessed the number %d", guessNumber))
        end
    end
end