#include <stdio.h>

float celsius_to_fahrenheit(float c) {
    return (c * 9.0 / 5.0) + 32;
}

int main() {
    float c;
    printf("Enter temperature in Celsius: ");
    scanf("%f", &c);
    printf("Temperature in Fahrenheit: %.2f\n", celsius_to_fahrenheit(c));
    return 0;
}

