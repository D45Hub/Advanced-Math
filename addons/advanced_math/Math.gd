"""
This file is part of:
Advanced Math
https://github.com/D45Hub/Advanced-Math
***********************
Copyright (c) 2021 Denis Thiessen
"""

tool
class_name Math extends Resource

const pi = 3.1415926535897932384626433
const e = 2.7182818284590452353602874713526624977572470936999


# Checks if a value is positive or not.
static func isPositive(value: float) -> bool:
	return value > 0.0

# Checks if a value is negative or not.
static func isNegative(value: float) -> bool:
	return value < 0.0

# Calculates the logarithm of a certain specified base.
static func logWithBase(value: float, base: float) -> float:
	return log(value)/log(base)

# Shorthand function for calculating the natural logarithm.
static func logE(value: float) -> float:
	return logWithBase(value, e)

# Calculates the n-th root of a certain value.
static func nthRoot(order: int, radicant: float) -> float:
	return pow(e, (logE(radicant))/order)

# Rounds values to a certain digit.
static func round_to_dec(num: float, digit: int) -> float:
	return round(num * pow(10.0, digit)) / pow(10.0, digit)

# Rounds the values of a Vector2 to a certain digit.
static func roundVector2ToDec(vector: Vector2, digit: int) -> Vector2:
	return Vector2(round_to_dec(vector.x, digit), round_to_dec(vector.y, digit))

# Rounds the values of a Vector3 to a certain digit.
static func roundVector3ToDec(vector: Vector3, digit: int) -> Vector3:
	return Vector3(round_to_dec(vector.x, digit), round_to_dec(vector.y, digit), round_to_dec(vector.z, digit))

# Checks if two values are equal until a certain specified digit.
static func equalToDigit(num1: float, num2: float, rounding_digit: int) -> bool:
	return round_to_dec(num1, rounding_digit) == round_to_dec(num2, rounding_digit)

# Checks if the values inside two Vector2 objects are equal until a certain specified digit.
static func vector2EqualToDigit(num1: Vector2, num2: Vector2, rounding_digit: int) -> bool:
	return roundVector2ToDec(num1, rounding_digit) == roundVector2ToDec(num2, rounding_digit)

# Checks if the values inside two Vector3 objects are equal until a certain specified digit.
static func vector3EqualToDigit(num1: Vector3, num2: Vector3, rounding_digit: int) -> bool:
	return roundVector3ToDec(num1, rounding_digit) == roundVector3ToDec(num2, rounding_digit)

# Calculates the factorial of a given number.
static func fact(num: int) -> int:
	return 1 if num <= 1 else num*fact(num - 1)
