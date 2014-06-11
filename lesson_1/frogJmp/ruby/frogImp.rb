def solution(x, y, d)
    
    # Here we are just initializating the variable.

    numberOfJumps = 0
    
    # The distance between the points X and Y will
    # be its difference. This is the distance that
    # the frog will have to jump.

    distanceBetweenXY = x - y

    # So, considering that the frog can jump a distance
    # of "d" so we only need the divide the distance 
    # between both points with the distance that the
    # frog can jump. We are calling the method ceil
    # so it will always "raise" the number for the 
    # greater and nearest integer. If the answer is
    # 2.1 so the ceil method will return 3, if the 
    # answer is 2.8 it will also return 3 but if the 
    # answer is 2.0 it will return 2. We are also
    # calling the abs method because we want to garantee
    # that this number will be positive.
    
    numberOfJumps = (distanceBetweenXY / d).ceil.abs

    # Now we just need to return it.
    
    return numberOfJumps
    
end
