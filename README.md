# Blackbird Software Engineering Job Simulations

![Blackbird logo](images/blackbird.png)
![harrison AI logo](images/harrisonai.png)

## Overview

This repository contains two job simulation I engaged in during the Blackbird Software Engineering Job simulation.

### Project 1: Email and Password Form Validation

**Objective**: Implement input validation for an email and password form using provided libraries and requirements.

**Requirements**:

- **Email Validation**: Use the `email-validator` library.
- **Password Validation**:
  - Minimum of 8 characters
  - Must contain both uppercase and lowercase letters
  - At least 1 numerical digit (0-9)
  - At least 1 special character (!@#$%^&*, etc)

**Messages**:
- **Success**: Utilize the existing success snackbar in the template project.
- **Error**: Use the error state from the Material UI text-fields component.

**Unit Testing**:
- Implement unit tests for validation logic using Jest.

**Steps to Complete**:
1. Clone the [template project](https://github.com/juliusarden/blackbird-harrison-ai).
2. Create a new branch from master using your name.
3. Run the project locally:
    ```bash
    npm install
    npm start
    ```
4. Modify the code to meet validation requirements.
5. Remove the `node_modules` folder and zip the project directory.
6. Upload the zip file for submission.

**Resources**:
- [Email Validator](https://www.npmjs.com/package/email-validator)
- [Material UI Text-Fields Validation](https://mui.com/components/text-fields/#validation)
- [Jest](https://jestjs.io/)

### Project 2: Arduino Thermistor Integration

**Objective**: Using the Arduino simulator ([wokwi.com](https://wokwi.com)), integrate an NTC Thermistor to control LED indicators based on temperature readings.

**LED Logic**:
- **Green**: Temp < 30°C
- **Yellow**: 30°C ≤ Temp ≤ 80°C
- **Red**: Temp > 80°C

**Steps to Complete**:
1. Duplicate the [Arduino project template](https://wokwi.com/arduino/projects/299330254810382858) by clicking “Save a copy”.
2. Set up 3 LED connections to the Arduino.
3. Implement logic based on temperature readings.
4. Download the project zip from the simulator.
5. Zip your Arduino code and wiring diagram together.
6. Upload the zip file for submission.

**Resources**:
- [Wokwi Arduino Simulator](https://wokwi.com)