program newton_method
    implicit none 
    Real :: x_left, x_right, x_middle,s
    Integer :: i
    print*, "Please enter the accuracy s, x_left and x_right"
    Read*, s
    Read*, x_left
    Read*, x_right
    if (f(x_left) == 0)  then 
            print*, "The zero x value is at " , x_left
            break
    else if (f(x_right) == 0) then 
            print*, "The zero x value is at " , x_right
            break
    else if (f(x_left)*f(x_right) > 0) then
            print*, "Choose another x_left and x_right value" 
            break
    end if

    do while (x_right -x_left > s)
        if (f(x_left) == 0)  then 
            print*, "The zero x value is at " , x_left
            break
        else if (f(x_right) == 0) then 
            print*, "The zero x value is at " , x_right
            break
        x_middle = (x_left + x_right)/2
        else  if (f(x_middle) == 0) then 
            print*, "The zero x value is at " , x_middle
            break
        else if (f(x_left) * f(x_middle) < 0) then 
            x_right = x_middle
        else
            x_left = x_middle
        end if
      i = i + 1
    end do 
    x_middle = (x_left + x_right)/2
    print*, "The zero value is at ", x_middle
    contains 
    real function f(x) 
        real, intent(in) :: x
        f = 3*x**2 -9
    end function f

end program newton_method