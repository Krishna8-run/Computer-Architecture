# Lab 10: Non-Restoring Division

This project implements unsigned binary division using the non-restoring division algorithm in Python.

## What it does

The script accepts two non-negative integers and performs division using the non-restoring method. It prints the step-by-step process and returns:

- Quotient
- Remainder

## Files

- `non_restoring_division.py` - Main Python script implementing the division algorithm

## How to run

Run the script with Python:

```bash
python non_restoring_division.py 13 3
```

You can also run the built-in self-test:

```bash
python non_restoring_division.py --test
```

## Example

Example input:

```bash
python non_restoring_division.py 13 3
```

Example output:

```text
Bit width (n): 4
Initial values: A=00000  Q=1101  M=00011
------------------------------------------------------------------------
Step  After shift [A,Q]           Operation            A           Q
1     00001 1110                 A = A - M           11110       1110
2     11101 1100                 A = A + M           00000       1101
3     00000 1010                 A = A + M           11110       1010
4     11110 0100                 A = A + M           00000       0101
------------------------------------------------------------------------
Quotient:  0101 (decimal 5)
Remainder: 00000 (decimal 0)
```

## Notes

- The program only works with non-negative integers.
- Division by zero is not allowed.
- The algorithm is verified against Python's built-in `divmod()` function in the self-test mode.
