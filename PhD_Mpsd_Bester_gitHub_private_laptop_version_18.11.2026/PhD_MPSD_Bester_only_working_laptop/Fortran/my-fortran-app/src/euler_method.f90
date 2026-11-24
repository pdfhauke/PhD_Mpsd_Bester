!ai vs code written and a little edited by youself with ai
program euler_method
    implicit none

    integer, parameter :: n = 100
    integer :: i
    real :: x, y, x_start, x_end, dx, y0
    real :: x_values(0:n), y_values(0:n)

    ! Problem setup
    x_start = 0.0
    x_end = 2.0
    y0 = 1.0
    dx = (x_end - x_start) / real(n)

    x = x_start
    y = y0

    ! Store initial values
    x_values(0) = x
    y_values(0) = y

    ! Euler method
    do i = 1, n
        y = y + f(x) * dx
        x = x + dx

        x_values(i) = x
        y_values(i) = y
    end do

    ! Print stored values
    do i = 0, n
        print *, 'x = ', x_values(i), '   y = ', y_values(i)
    end do

contains

    real function f(x)
        real, intent(in) :: x
        f = x**2 + 2.0*x + 1.0
    end function f

end program euler_method

