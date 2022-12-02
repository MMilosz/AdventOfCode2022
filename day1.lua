--[[ 
 Advent of Code – Day 1 ft. Lua

 Having set of numbers divided by new line after various amount of rows,
 deduct which of the sets will be the biggest number.
--]]

-- Variables
path      = 'day1.input.txt' -- path to a file with input data
i         = 0 -- lines iterator
previous  = 0 -- stores previous value
current   = 0 -- stores current value
max       = 0 -- stores max value

-- Get input as a file
file      = io.open(path, 'r')

-- Loop through the lines
for line in file:lines() do
  val = line -- assignment to avoid nil expression

  if line == nil or line == '' then -- do stuff after empty line delimiter
    val = 0
    i = 0

    if previous > max then max = previous end -- assign max value
    previous = current
    current = 0
  end
  
  i = i + 1
  current = current + val 

end

file:close()
print(max) -- get max value
