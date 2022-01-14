# Method: bubble_sort
# Description: Takes an integer array and returns it sorted using bubble sort
# Parameters: array (array of integers)
# Return: sorted (array of integers)

def bubble_sort(array)
    n = array.length

    # Go until we reach the first two elements
    until n <= 1 do
        m = 0
        # Check number between the second until the last max
        for i in 1..n - 1 do
            if array[i - 1] > array[i]
                temp = array[i]
                array[i] = array[i - 1]
                array[i - 1] = temp
                # Update max value index
                m = i
            end
        end
        n = m
    end

    array
end

# Method invocation

p bubble_sort([4,3,78,2,0,2])