# Advanced-Math
A simple plugin for the Godot game engine which implements additional mathematical operations.

## Installation

1. Download either the repository or the "addons.zip" file from the releases and take only the "addons" folder. 
2. If your Godot project doesn't have an "addons" directory in the project root folder, just put the whole addons folder inside the root directory. If you have one already in there just put the "advanced_math" folder inside the "addons" folder in your pre-existing addons folder in your project root. 
3. Then you only need to enable the plugin inside the Godot editor via "Project" -> "Project Settings..." -> "Plugins". In there you have a list of your installed plugins. There set the status of "Advanced Math" to "enabled" by ticking the check box.


## Usage

All added mathematical functions are staticly available through the helper class "Math". That means that no class instanciation is nessesary.


```gdscript
# Checks if a value is positive or not.
static func isPositive(value: float) -> bool:
```

```gdscript
# Checks if a value is negative or not.
static func isNegative(value: float) -> bool:
```

```gdscript
# Calculates the logarithm of a certain specified base.
static func logWithBase(value: float, base: float) -> float:
```

```gdscript
# Shorthand function for calculating the natural logarithm.
static func logE(value: float) -> float:
```

```gdscript
# Calculates the n-th root of a certain value.
static func nthRoot(order: int, radicant: float) -> float:
```

```gdscript
# Rounds values to a certain digit.
static func round_to_dec(num: float, digit: int) -> float:
```

```gdscript
# Rounds the values of a Vector2 to a certain digit.
static func roundVector2ToDec(vector: Vector2, digit: int) -> Vector2:
```

```gdscript
# Rounds the values of a Vector3 to a certain digit.
static func roundVector3ToDec(vector: Vector3, digit: int) -> Vector3:
```

```gdscript
# Checks if two values are equal until a certain specified digit.
static func equalToDigit(num1: float, num2: float, rounding_digit: int) -> bool:
```

```gdscript
# Checks if the values inside two Vector2 objects are equal until a certain specified digit.
static func vector2EqualToDigit(num1: Vector2, num2: Vector2, rounding_digit: int) -> bool:
```

```gdscript
# Checks if the values inside two Vector3 objects are equal until a certain specified digit.
static func vector3EqualToDigit(num1: Vector3, num2: Vector3, rounding_digit: int) -> bool:
```

```gdscript
# Calculates the factorial of a given number.
static func fact(num: int) -> int:
```
