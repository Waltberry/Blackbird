# Arduino Temperature Warning System

![image](https://github.com/Waltberry/Arduino-Temperature-Warning-System-IoT-/assets/63509339/4d0af204-6e3d-4665-bdf3-9f0cc99b7f4d)


## Overview

The Arduino Temperature Warning System is an Internet-of-Things (IoT) project that uses an NTC Thermistor to monitor temperature and provide visual alerts through LEDs. This system is designed to help users monitor temperature levels and receive warnings when the temperature crosses specific thresholds.

## Features

- Uses an NTC Thermistor to detect temperature.
- Three LEDs (Green, Yellow, Red) to indicate different temperature ranges:
  - Green: Temperature is below 30°C
  - Yellow: Temperature is between 30°C and 80°C (inclusive)
  - Red: Temperature is above 80°C
- Easy to set up and customize using Arduino.

## Components

- Arduino Uno (or compatible)
- NTC Thermistor
- 3 LEDs (Green, Yellow, Red)
- 3 220-ohm resistors
- 10k-ohm resistor
- Breadboard and jumper wires

## Circuit Diagram

![image](https://github.com/Waltberry/Arduino-Temperature-Warning-System-IoT-/assets/63509339/2a366d08-310e-4610-91c9-61c188b381a4)


## Setup Instructions
**Connect the LEDs to the Arduino**
   - Place three LEDs on the breadboard.
   - Connect the cathode (shorter leg) of each LED to the ground (GND) pin on the Arduino.
   - Connect the anode (longer leg) of each LED to digital pins (e.g., D2, D3, D4) through 220-ohm resistors.

```cpp
// Define the pins for the LEDs
const int greenLED = 2;
const int yellowLED = 3;
const int redLED = 4;

// Define the pin for the thermistor
const int thermistorPin = A0;

// Constants for thermistor calculations
const float BETA = 3950; // Beta coefficient of the thermistor
const float SERIES_RESISTOR = 10000; // 10k ohms
const float NOMINAL_RESISTANCE = 10000; // 10k ohms
const float NOMINAL_TEMPERATURE = 25; // 25 degrees Celsius

void setup() {
  // Initialize the LED pins as outputs
  pinMode(greenLED, OUTPUT);
  pinMode(yellowLED, OUTPUT);
  pinMode(redLED, OUTPUT);

  // Initialize serial communication for debugging
  Serial.begin(9600);
}

void loop() {
  // Read the analog value from the thermistor
  int analogValue = analogRead(thermistorPin);

  // Convert the analog value to resistance
  float resistance = SERIES_RESISTOR / (1023.0 / analogValue - 1.0);

  // Convert the resistance to temperature in Celsius
  float temperature = 1.0 / (log(resistance / NOMINAL_RESISTANCE) / BETA + 1.0 / (NOMINAL_TEMPERATURE + 273.15)) - 273.15;

  // Print the temperature to the serial monitor for debugging
  Serial.print("Temperature: ");
  Serial.print(temperature);
  Serial.println(" C");

  // Turn on the appropriate LED based on the temperature
  if (temperature < 30) {
    digitalWrite(greenLED, HIGH);
    digitalWrite(yellowLED, LOW);
    digitalWrite(redLED, LOW);
  } else if (temperature <= 80) {
    digitalWrite(greenLED, LOW);
    digitalWrite(yellowLED, HIGH);
    digitalWrite(redLED, LOW);
  } else {
    digitalWrite(greenLED, LOW);
    digitalWrite(yellowLED, LOW);
    digitalWrite(redLED, HIGH);
  }

  // Wait for a second before taking the next reading
  delay(1000);
}
```

## How to Use

1. Connect your Arduino to your computer.
2. Open the Arduino IDE and upload the provided code.
3. Monitor the LEDs to see the temperature range:
   - Green LED: Temperature is below 30°C
   - Yellow LED: Temperature is between 30°C and 80°C
   - Red LED: Temperature is above 80°C

## Future Improvements

- Connect the system to a centralized server to collect and analyze temperature data from multiple locations.
- Add a buzzer for audible alerts.
- Integrate with a mobile app for remote monitoring.

## Resources

- [LEDs Example](https://www.arduino.cc/en/Tutorial/BuiltInExamples/Blink)
- [Arduino Project Hub](https://create.arduino.cc/projecthub)

## License

This project is open-source and available under the MIT License.
