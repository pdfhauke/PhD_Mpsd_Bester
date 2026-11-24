program bmi_calculator
    implicit none
    real :: weight, height, bmi
    character(len=20) :: category

    print *, "=== BMI Calculator ==="
    print *, "Enter weight in kilograms:"
    read *, weight

    print *, "Enter height in meters (e.g., 1.75):"
    read *, height

    if (weight <= 0.0 .or. height <= 0.0) then
        print *, "Error: Weight and height must be positive values."
        stop
    end if

    ! BMI = weight (kg) / height^2 (m^2)
    bmi = weight / (height * height)

    ! Determine category
    if (bmi < 18.5) then
        category = "Underweight"
    else if (bmi < 25.0) then
        category = "Normal weight"
    else if (bmi < 30.0) then
        category = "Overweight"
    else if (bmi < 35.0) then
        category = "Obesity Class I"
    else if (bmi < 40.0) then
        category = "Obesity Class II"
    else
        category = "Obesity Class III"
    end if

    ! Output
    print *, ""
    print "(A, F6.2)", "BMI: ", bmi
    print "(A, A)", "Category: ", category
    print *, ""
    print *, "Reference ranges:"
    print *, "  < 18.5       : Underweight"
    print *, "  18.5 - 24.9  : Normal weight"
    print *, "  25.0 - 29.9  : Overweight"
    print *, "  30.0 - 34.9  : Obesity Class I"
    print *, "  35.0 - 39.9  : Obesity Class II"
    print *, "  >= 40.0      : Obesity Class III"

end program bmi_calculator