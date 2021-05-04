tool
class_name Math extends Resource

const pi = 3.1415926535897932384626433
const e = 2.7182818284590452353602874713526624977572470936999



static func isPositive(value: float) -> bool:
	return value > 0.0


static func isNegative(value: float) -> bool:
	return value < 0.0


static func logWithBase(value: float, base: float) -> float:
	return log(value)/log(base)


static func logE(value: float) -> float:
	return logWithBase(value, e)


static func nthRoot(order: int, radicant: float) -> float:
	return pow(e, (logE(radicant))/order)
	

# Utility Method for rounding values to a certain digit.
static func round_to_dec(num: float, digit: int) -> float:
	return round(num * pow(10.0, digit)) / pow(10.0, digit)


static func roundVector2ToDec(vector: Vector2, digit: int) -> Vector2:
	return Vector2(round_to_dec(vector.x, digit), round_to_dec(vector.y, digit))


static func roundVector3ToDec(vector: Vector3, digit: int) -> Vector3:
	return Vector3(round_to_dec(vector.x, digit), round_to_dec(vector.y, digit), round_to_dec(vector.z, digit))


static func equalToDigit(num1: float, num2: float, rounding_digit: int) -> bool:
	return round_to_dec(num1, rounding_digit) == round_to_dec(num2, rounding_digit)


static func vector2EqualToDigit(num1: Vector2, num2: Vector2, rounding_digit: int) -> bool:
	return roundVector2ToDec(num1, rounding_digit) == roundVector2ToDec(num2, rounding_digit)


static func vector3EqualToDigit(num1: Vector3, num2: Vector3, rounding_digit: int) -> bool:
	return roundVector3ToDec(num1, rounding_digit) == roundVector3ToDec(num2, rounding_digit)


static func fact(num: int) -> int:
	return 1 if num <= 1 else num*fact(num - 1)
