# Analysis and Controller Design for a System Using Bode Diagram

## Abstract
This project focuses on the analysis and design of controllers for a system using the Bode diagram as the primary tool. The closed-loop equation of the system is calculated based on the Bode diagram, and PD, PI, PID, lead, and lag controllers are designed. The stability of the system is evaluated, and the performance of each controller in terms of steady-state error, phase margin, and gain margin is compared.

## Tools Used
- [MATLAB Code]: Contains the MATLAB code used to obtain frequency responses and design controllers.
- [Bode Diagram]: Image of the Bode diagram of the system.
- [Nyquist Diagram]: Image of the Nyquist diagram of the system.
- [Impulse Response]: Plot of the impulse response of the system with different controllers.
- [Step Response]: Plot of the step response of the system with different controllers.

## Requirements
- MATLAB with the Control System Design and Analysis toolbox.

## Instructions
1. Open MATLAB and make sure you have the Control System Design and Analysis toolbox installed.
2. Execute the [matlab_code.m](matlab_code.m) file to obtain frequency responses and design controllers.
3. Observe the generated plots for the Bode diagram, Nyquist diagram, and the impulse and step responses of the system with different controllers.

## Results
The results of the project are as follows:

### PD Controller
- Proportional Gain (Kp): 0.8118
- Derivative Gain (Kd): 0.8118
- Steady-State Error: 18.81%
- Phase Margin: 45°
- Stability Verified Using Nyquist.

### PI Controller
- Proportional Gain (Kp): 0.18768
- Integral Gain (Ki): 0.18768
- Steady-State Error: 55.16%
- Phase Margin: 53°
- Stability Verified Using Nyquist.

### PID Controller
- Proportional Gain (Kp): 3.296
- Integral Gain (Ki): 0
- Derivative Gain (Kd): 3.296
- Steady-State Error: 0%
- Phase Margin: 90°
- Stability Verified Using Nyquist.

### Lead Controller
- Gain (Kc): 12.199
- Time Constant (T): 1.047
- Corner Frequency (ω): 0.955
- Steady-State Error: < 3%
- Phase Margin: 62°
- Stability Verified Using Nyquist.

### Lag Controller
- Gain (Kc): 0.0616
- Time Constant (T): 14.925
- Corner Frequency (ω): 0.067
- Steady-State Error: < 3%
- Overshoot: 17.4%
- Phase Margin: -123°
- Stability Verified Using Nyquist.

## Conclusions
- The transfer function was successfully obtained from a Bode Diagram, allowing for an in-depth analysis of the system.
- Different controllers (PD, PI, PID, lead, and lag) were designed and evaluated to meet the specified design requirements.
- MATLAB was the primary tool used for the analysis and controller design.
- System stability was confirmed using Nyquist diagrams, and controllers successfully stabilized the system.
- The PID controller proved to be the most effective, meeting steady-state error, phase margin, and gain margin requirements.

## References
1. Mathworks.com.
2. Ogata, Katsuhiko: Modern Control Engineering, Prentice Hall, Madrid, 4th edition, 2003.
3. Dorf, R., and Bishop, R. H. Modern Control Systems, Pearson, 10th edition, 2008.
