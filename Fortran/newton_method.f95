program newton_method
    implicit none 
    Real :: x_left, x_right, x_middle, s, x_final, start_time, end_time
    print*, "Please enter the accuracy s, x_left and x_right"
    Read*, s
    Read*, x_left
    Read*, x_right
    Call cpu_time(start_time)
    x_middle = (x_left + x_right)/2
    x_final = x_right
    if (f(x_left) == 0)  then 
        print*, "The zero x value is at " , x_left
        stop
    else if (f(x_right) == 0) then 
        print*, "The zero x value is at " , x_right
        stop
    else if (f(x_left)*f(x_right) > 0) then
        print*, "Choose another x_left and x_right value" 
        stop
    end if

    do while (x_right -x_left > s)
        x_middle = (x_left + x_right)/2
        
        if (f(x_middle) == 0) then 
            print*, "The zero x value is at " , x_middle
            exit
        else if (f(x_left) * f(x_middle) < 0) then 
            x_right = x_middle
        else
            x_left = x_middle
        end if
        print*, x_middle
        print*, "The zero value is at ",x_right, "and x_left", x_left
    end do
    x_final = (x_left + x_right)/2
    Call cpu_time(end_time)
    print*, "The zero value is at ", x_final
    print*, "start_time is ", start_time
    print*, "end_time is ", end_time
    print*,"The computation time is", end_time -start_time, "seconds"
    contains 

    real function f(x) 
        real, intent(in) :: x
        f = 3*x**2 -9
    end function f

end program newton_method