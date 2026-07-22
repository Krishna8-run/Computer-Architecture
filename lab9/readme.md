# Lab 9: Booth Algorithm Implementation

## Overview
This repository contains a Python implementation of Booth's multiplication algorithm for signed binary numbers.

The main script is `booth.py`, which:
- Reads two signed integers from the user
- Converts them into 8-bit binary form using two's complement for negative values
- Performs Booth's multiplication algorithm step-by-step
- Prints the intermediate states and the final result in both binary and decimal form

## Files
- `booth.py` - Booth algorithm implementation and interactive user interface

## Usage
1. Open a terminal in the `lab9` directory.
2. Run the script:

```bash
python booth.py
```

3. Enter the multiplicand and multiplier when prompted.
   - Allowed input range: `-128` to `127`

4. The program displays each Booth iteration and the final product.

## Notes
- The implementation uses 8-bit binary values for the multiplicand and multiplier.
- Negative inputs are converted to two's complement representation.
- The final result is shown as an 8-bit binary product and as a decimal value.

## Example
If you enter:
- Multiplicand: `6`
- Multiplier: `-3`

The script will display the Booth algorithm steps and the final product.

## Example Output
```text
Please enter your Multiplicand: 6
Please enter your Multiplier: -3

Multiplicand: 00000110 | Multiplier: 11111101
Initial Product: 000000000000000
 Step: 0 | Multiplicand: 00000110 | Product: 00000000 | 00000000 | 0
No Op
 Step: 1 | Multiplicand: 00000110 | Product: 00000000 | 00000000 | 0
Sub
 Step: 2 | Multiplicand: 00000110 | Product: 11111010 | 00000000 | 0
Add
 Step: 3 | Multiplicand: 00000110 | Product: 00000001 | 00000000 | 0
No Op
 Step: 4 | Multiplicand: 00000110 | Product: 00000000 | 10000000 | 0
No Op
 Step: 5 | Multiplicand: 00000110 | Product: 00000000 | 01000000 | 0
No Op
 Step: 6 | Multiplicand: 00000110 | Product: 00000000 | 00100000 | 0
No Op
 Step: 7 | Multiplicand: 00000110 | Product: 00000000 | 00010000 | 0
No Op
 Step: 8 | Multiplicand: 00000110 | Product: 00000000 | 00001000 | 0

Final Product (Binary): 11111010
Decimal Result: -18
```

## Course
- Computer Architecture (CMP 262)
- Cosmos College of Management and Technology
