
program fibonacci
    implicit none
    integer :: n, i
    integer, allocatable :: fib(:)

    ! Read n from user
    print *, "Enter the number of Fibonacci numbers to compute:"
    read *, n

    if (n <= 0) then
        print *, "Error: n must be a positive integer."
        stop
    end if

    ! Allocate array for n numbers
    allocate(fib(n))

    ! Compute Fibonacci sequence
    if (n >= 1) fib(1) = 0
    if (n >= 2) fib(2) = 1
    do i = 3, n
        fib(i) = fib(i-1) + fib(i-2)
    end do

    ! Output results
    print *, "First", n, "Fibonacci numbers:"
    do i = 1, n
        print "(I0, ': ', I0)", i, fib(i)
    end do

    deallocate(fib)
end program fibonacci