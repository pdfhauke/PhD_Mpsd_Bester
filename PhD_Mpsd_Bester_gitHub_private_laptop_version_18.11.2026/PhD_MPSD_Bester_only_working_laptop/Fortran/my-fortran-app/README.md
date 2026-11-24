# My Fortran App

## Overview
This project implements the Euler method for numerical integration of an arbitrary function using Fortran. The Euler method is a simple numerical technique used to solve ordinary differential equations (ODEs) by approximating the solution at discrete points.

## Files
- `src/euler_method.f90`: Contains the implementation of the Euler method, including the main program and the function representing the arbitrary function to be integrated.

## Compilation
To compile the Fortran program, navigate to the project directory and use the following command:

```
gfortran -o euler_method src/euler_method.f90
```

Make sure you have the GNU Fortran compiler installed on your system.

## Running the Program
After successful compilation, you can run the program using the following command:

```
./euler_method
```

## Usage
The program initializes the necessary variables and performs the Euler method calculations to integrate the specified arbitrary function. The results will be printed to the console.

## Euler Method
The Euler method is a first-order numerical procedure for solving ordinary differential equations with a given initial value. It works by using the slope of the function at the current point to estimate the value at the next point. This method is straightforward but can be less accurate for functions with high curvature or rapid changes.