# MATLAB_program_Solving_ODEs_harmonic_oscillators
A general-purpose MATLAB program to find the free vibration response of a viscously damped system.

Steps that must be taken to perform the task:
1. Mathematical modeling – represent all the important features of the system; see the figure below for the model.
2. Derivation of governing equations. Re-write the equation of motion as a set of first-order differential equations as an anonymous function (“in-code” user defined function).
3. Solution of the governing equations. Solve the equations of motion using MATLAB function ode23.
4. Interpretation of results. The solution of the governing equations gives the displacements, velocities, and accelerations of the mass of the system. Plot these responses.
