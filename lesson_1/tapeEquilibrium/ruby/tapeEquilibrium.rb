def solution(a)

    leftSide = 0
    rightSide = 0
    finalResult = 10000 
    
    # Now we sum all the elements from the array a on the
    # "partB" from the equation, this is the right side.

    for i in 0...a.length
        rightSide = rightSide + a[i]
    end

    # Here is where the magic happens, everytime that we
    # sums one number at the left side from the equation
    # we are also taking out this same number from the 
    # right side of the equation. This is exactly the same 
    # thing that percurring all the possibilities taking 
    # the "p" as reference. The for loop will go until the 
    # "a.length-1" number because this one will always
    # be from the right side of the equation, otherwise
    # all the elements would stay at the left side and 
    # this case should never happen.

    for i in 0...a.length-1
        leftSide = leftSide + a[i]
        rightSide = rightSide - a[i]
        
        # If the difference between the left and right sides
        # are smaller than the current finalResult so this
        # difference will be the new finalResult.

        if (leftSide - rightSide).abs < finalResult
            finalResult = (leftSide - rightSide).abs
        end
    end
    
    # After percurring all the elements we finally return the
    # finalResult that it is the minimum possible.

    return finalResult

end


