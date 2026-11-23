program integration
    implicit none
    Integer :: i,n 
    Real :: intersum, x_left, x_right, x, dx 
    Real :: f
    x_left = 2
    x_right = 10
    n = 1000
    i = 0
    intersum = 0
    x = x_left
    dx = (x_right -x_left)/n
    do i = 1, n 
        intersum = intersum + f(x)*dx
        x = x + dx
    end do

    Write *, "Integral of f(x) is: ", intersum

contains 
    function f(x) result(y)
        Real, intent(in) :: x !Input
        Real :: y !Output
        y = 5*x -3*x**2 +5    
    end function

end program integration
