# 📚 BCA Semester - 5

## 🐍 Python Programming

> **Subject Code:** BCA-501  
> **Course:** Bachelor of Computer Applications (BCA)  
> **Semester:** 5

---

# 📑 Unit 3 : Exception Handling, OOP Concepts and Algorithms

## _Topics_

- Handling Exceptions

- Exceptions as a Control Flow Mechanism

- Assertions, Abstract Data Types and Classes

- Inheritance, Encapsulation and Information Hiding

- Search Algorithms
  - Linear Search
  - Binary Search

- Sorting Algorithms
  - Selection Sort
  - Bubble Sort
  - Insertion Sort
  - Shell Sort
  - Quick Sort

---

# Handling Exceptions in Python

## Introduction

An **Exception** is an error that occurs during the execution of a program. When an exception occurs, Python stops the normal flow of the program and generates an error message.

Exception handling allows programmers to detect errors and handle them gracefully without terminating the program abruptly.

---

# What is an Exception?

An exception is an unexpected event that interrupts the normal execution of a program.

Example:

```python
num = int(input("Enter a Number: "))
result = 100 / num

print(result)
```

If the user enters:

```text
0
```

Output:

```text
ZeroDivisionError: division by zero
```

The program crashes because division by zero is not allowed.

---

# Why Exception Handling is Needed?

Without exception handling:

- Program terminates immediately.
- User experience becomes poor.
- Important data may be lost.
- Program becomes less reliable.

With exception handling:

- Errors can be handled properly.
- Program execution can continue.
- User-friendly error messages can be displayed.

---

# Common Types of Exceptions

| Exception         | Description               |
| ----------------- | ------------------------- |
| ZeroDivisionError | Division by zero          |
| ValueError        | Invalid value             |
| TypeError         | Invalid data type         |
| NameError         | Variable not defined      |
| IndexError        | Invalid index             |
| KeyError          | Dictionary key not found  |
| FileNotFoundError | File does not exist       |
| ImportError       | Module cannot be imported |

Example:

```python
print(10/0)
```

Output:

```text
ZeroDivisionError
```

---

# Exception Handling using try and except

The `try` block contains code that may cause an exception.

The `except` block contains code that handles the exception.

## Syntax

```python
try:
    # risky code
except:
    # exception handling code
```

Example:

```python
try:
    num = int(input("Enter Number: "))
    result = 100 / num

    print(result)

except:
    print("An Error Occurred")
```

Output:

```text
Enter Number: 0
An Error Occurred
```

---

# Handling Specific Exceptions

Instead of catching all exceptions, specific exceptions can be handled.

Example:

```python
try:
    num = int(input("Enter Number: "))

    result = 100 / num

    print(result)

except ZeroDivisionError:
    print("Division by Zero is not Allowed")
```

Output:

```text
Division by Zero is not Allowed
```

---

# Multiple Except Blocks

A program may generate different types of exceptions.

```python
try:
    num = int(input("Enter Number: "))

    result = 100 / num

    print(result)

except ZeroDivisionError:
    print("Cannot Divide by Zero")

except ValueError:
    print("Please Enter Numeric Value")
```

Output Examples:

```text
Input: 0
Cannot Divide by Zero
```

```text
Input: abc
Please Enter Numeric Value
```

---

# Using else Block

The `else` block executes only if no exception occurs.

Syntax:

```python
try:
    code
except:
    handling
else:
    success code
```

Example:

```python
try:
    num = int(input("Enter Number: "))

    print(100 / num)

except ZeroDivisionError:
    print("Division Error")

else:
    print("Operation Successful")
```

Output:

```text
Enter Number: 5
20.0
Operation Successful
```

---

# Using finally Block

The `finally` block always executes whether an exception occurs or not.

Syntax:

```python
try:
    code
except:
    handling
finally:
    always executes
```

Example:

```python
try:
    num = int(input("Enter Number: "))

    print(100 / num)

except ZeroDivisionError:
    print("Division Error")

finally:
    print("Program Ended")
```

Output:

```text
Program Ended
```

The finally block is commonly used for:

- Closing files
- Releasing resources
- Database cleanup

---

# Complete Exception Structure

```python
try:
    num = int(input("Enter Number: "))

    result = 100 / num

except ValueError:
    print("Invalid Input")

except ZeroDivisionError:
    print("Cannot Divide by Zero")

else:
    print("Result =", result)

finally:
    print("Execution Finished")
```

---

# Raising Exceptions

Python allows programmers to generate exceptions manually using `raise`.

Syntax:

```python
raise ExceptionName
```

Example:

```python
age = int(input("Enter Age: "))

if age < 18:
    raise ValueError("Age Must be 18 or Above")

print("Eligible")
```

Output:

```text
ValueError: Age Must be 18 or Above
```

---

# User-Defined Exceptions

Programmers can create custom exceptions.

Example:

```python
class InvalidAgeError(Exception):
    pass

age = int(input("Enter Age: "))

if age < 18:
    raise InvalidAgeError

print("Eligible")
```

---

# Real-Life Example: File Handling

```python
try:
    file = open("data.txt", "r")

    print(file.read())

except FileNotFoundError:
    print("File Not Found")

finally:
    print("File Operation Completed")
```

---

# Advantages of Exception Handling

1. Prevents program crashes.
2. Improves program reliability.
3. Provides meaningful error messages.
4. Helps debugging.
5. Improves user experience.

---

# Exceptions as a Control Flow Mechanism

## Introduction

Normally, program flow is controlled using:

- if statements
- loops
- functions

However, exceptions can also be used to control the flow of a program when unexpected situations occur.

This technique is known as **Exception-Based Control Flow**.

Instead of checking conditions repeatedly, exceptions can transfer control directly to the appropriate handler.

---

# Traditional Control Flow

Example:

```python
num = int(input("Enter Number: "))

if num != 0:
    print(100 / num)
else:
    print("Cannot Divide by Zero")
```

Output:

```text
Cannot Divide by Zero
```

Here, program flow is controlled using an if statement.

---

# Control Flow Using Exceptions

```python
try:
    num = int(input("Enter Number: "))

    result = 100 / num

    print(result)

except ZeroDivisionError:
    print("Cannot Divide by Zero")
```

In this example:

1. Program enters the try block.
2. If division succeeds, execution continues normally.
3. If division by zero occurs, control immediately moves to the except block.

This changes the program flow using exceptions.

---

# Example: Searching in a List

Without Exception:

```python
numbers = [10,20,30]

value = 40

if value in numbers:
    print("Found")
else:
    print("Not Found")
```

With Exception:

```python
numbers = [10,20,30]

try:
    index = numbers.index(40)

    print("Found at", index)

except ValueError:
    print("Not Found")
```

The exception controls program execution when the value does not exist.

---

# Example: File Processing

```python
try:
    file = open("data.txt", "r")

except FileNotFoundError:
    print("File Missing")
```

Program flow changes automatically if the file is unavailable.

---

# Example: Input Validation

```python
try:
    age = int(input("Enter Age: "))

    print("Age =", age)

except ValueError:
    print("Please Enter Numeric Value")
```

If the user enters text instead of a number, control moves directly to the exception handler.

---

# Advantages of Exception-Based Control Flow

1. Simplifies code.
2. Reduces nested conditions.
3. Improves readability.
4. Handles unexpected situations effectively.
5. Separates normal logic from error-handling logic.

---

# Disadvantages

1. Excessive use may reduce readability.
2. Can make debugging difficult.
3. Slower than normal conditional statements.
4. Should not replace normal logic completely.

---

# Best Practices

✔ Use exceptions for exceptional situations.

✔ Handle only expected exceptions.

✔ Use specific exception classes.

✔ Keep try blocks small.

✔ Always use meaningful error messages.

Example:

```python
try:
    file = open("data.txt", "r")

except FileNotFoundError:
    print("Requested file does not exist.")
```

---

# Assertions, Abstract Data Types and Classes in Python

---

# 1. Assertions in Python

## Introduction

An **assertion** is a debugging tool used in Python to test assumptions in a program. It checks whether a condition is `True` or `False`.

- If the condition is **True**, program continues normally.
- If the condition is **False**, Python raises an **AssertionError**.

---

## Syntax

```python id="as1"
assert condition, "error message"
```

---

## Simple Example

```python id="as2"
x = 10

assert x > 0

print("Value is Positive")
```

Output:

```text id="as3"
Value is Positive
```

---

## Assertion Failure Example

```python id="as4"
x = -5

assert x > 0, "Number must be positive"
```

Output:

```text id="as5"
AssertionError: Number must be positive
```

---

## Why Use Assertions?

- Used for debugging
- Helps in checking internal logic
- Ensures program correctness
- Useful during development stage

---

## Real-Life Example

```python id="as6"
def withdraw(balance, amount):
    assert amount <= balance, "Insufficient balance"
    return balance - amount

print(withdraw(1000, 500))
```

---

## Key Points

- Assertions are not for user input validation
- They are mainly used for debugging
- Can be disabled using `-O` (optimization mode)

---

# 2. Abstract Data Types (ADT)

## Introduction

An **Abstract Data Type (ADT)** is a concept in programming that defines:

- What data is stored
- What operations can be performed

But it does NOT define:

- How data is implemented

---

## Example Concept

A **List ADT** supports:

- Insert
- Delete
- Search
- Traverse

But implementation may differ:

- Array
- Linked List

---

## Characteristics of ADT

- Focus on behavior, not implementation
- Improves code modularity
- Supports data abstraction
- Helps in software design

---

## Common ADTs in Python

| ADT        | Description        |
| ---------- | ------------------ |
| List       | Ordered collection |
| Stack      | LIFO structure     |
| Queue      | FIFO structure     |
| Set        | Unique elements    |
| Dictionary | Key-value mapping  |

---

## Stack ADT Example

### Operations:

- push()
- pop()
- peek()

```python id="adt1"
stack = []

stack.append(10)
stack.append(20)

print(stack.pop())
```

Output:

```text id="adt2"
20
```

---

## Queue ADT Example

```python id="adt3"
from collections import deque

queue = deque()

queue.append(10)
queue.append(20)

print(queue.popleft())
```

Output:

```text id="adt4"
10
```

---

## Advantages of ADT

- Easy maintenance
- Code reusability
- Better abstraction
- Reduces complexity

---

# 3. Classes in Python (OOP Concept)

## Introduction

A **Class** is a blueprint for creating objects. It defines properties (variables) and behaviors (methods).

Objects are real-world instances of a class.

---

## Syntax

```python id="cl1"
class ClassName:
    def method(self):
        pass
```

---

## Example of Class

```python id="cl2"
class Student:
    def show(self):
        print("Hello Student")

s1 = Student()
s1.show()
```

Output:

```text id="cl3"
Hello Student
```

---

## Constructor (**init**)

Constructor is used to initialize object values.

```python id="cl4"
class Student:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def display(self):
        print(self.name, self.age)

s1 = Student("Rahul", 20)
s1.display()
```

Output:

```text id="cl5"
Rahul 20
```

---

## Types of Variables in Class

### 1. Instance Variables

- Defined inside constructor
- Different for each object

### 2. Class Variables

- Shared by all objects

```python id="cl6"
class Student:
    college = "ABC College"  # class variable

    def __init__(self, name):
        self.name = name

s1 = Student("Rahul")
s2 = Student("Amit")

print(s1.college)
print(s2.college)
```

---

## Methods in Class

### Instance Method

```python id="cl7"
class Demo:
    def show(self):
        print("Instance Method")

d = Demo()
d.show()
```

---

### Class Method

```python id="cl8"
class Demo:
    @classmethod
    def info(cls):
        print("Class Method")

Demo.info()
```

---

### Static Method

```python id="cl9"
class Demo:
    @staticmethod
    def add(a, b):
        return a + b

print(Demo.add(10, 20))
```

---

## Object Concept

Object = instance of a class

```python id="cl10"
class Car:
    def __init__(self, name):
        self.name = name

c1 = Car("Toyota")
print(c1.name)
```

---

## Advantages of Classes

- Code reusability
- Real-world modeling
- Data security
- Easy maintenance
- Supports inheritance

---

# Inheritance, Encapsulation and Information Hiding in Python

---

# 1. Inheritance in Python

## Introduction

**Inheritance** is an Object-Oriented Programming (OOP) concept in which a new class (child class) acquires the properties and behaviors of an existing class (parent class).

It promotes **code reusability** and reduces redundancy.

---

## Basic Concept

- Parent Class → Base class (existing class)
- Child Class → Derived class (new class)

---

## Syntax

```python id="in1"
class Parent:
    pass

class Child(Parent):
    pass
```

---

## Example

```python id="in2"
class Animal:
    def sound(self):
        print("Animals make sound")

class Dog(Animal):
    def bark(self):
        print("Dog barks")

d = Dog()
d.sound()
d.bark()
```

Output:

```text id="in3"
Animals make sound
Dog barks
```

---

## Types of Inheritance

### 1. Single Inheritance

One parent → One child

```python id="in4"
class A:
    def show(self):
        print("Class A")

class B(A):
    pass

obj = B()
obj.show()
```

---

### 2. Multiple Inheritance

Multiple parents → One child

```python id="in5"
class A:
    def a(self):
        print("A")

class B:
    def b(self):
        print("B")

class C(A, B):
    pass

obj = C()
obj.a()
obj.b()
```

---

### 3. Multilevel Inheritance

Grandparent → Parent → Child

```python id="in6"
class A:
    def showA(self):
        print("A")

class B(A):
    def showB(self):
        print("B")

class C(B):
    pass

obj = C()
obj.showA()
obj.showB()
```

---

### 4. Hierarchical Inheritance

One parent → Multiple children

```python id="in7"
class A:
    def show(self):
        print("Parent Class")

class B(A):
    pass

class C(A):
    pass
```

---

## Advantages of Inheritance

- Code reusability
- Reduces duplication
- Easier maintenance
- Supports hierarchical classification

---

# 2. Encapsulation in Python

## Introduction

**Encapsulation** is the process of wrapping data (variables) and methods (functions) into a single unit called a class.

It also restricts direct access to data to protect it from misuse.

---

## Real-Life Example

A capsule in medicine:

- Inside contents are hidden
- Only controlled access is allowed

Similarly, encapsulation hides data and allows access through methods.

---

## Example

```python id="en1"
class BankAccount:
    def __init__(self, balance):
        self.balance = balance

    def deposit(self, amount):
        self.balance += amount

    def show_balance(self):
        print("Balance:", self.balance)

acc = BankAccount(1000)
acc.deposit(500)
acc.show_balance()
```

Output:

```text id="en2"
Balance: 1500
```

---

## Key Features

- Data hiding
- Controlled access
- Improves security
- Increases modularity

---

## Access Modifiers in Python

| Type      | Symbol  | Description                      |
| --------- | ------- | -------------------------------- |
| Public    | `var`   | Accessible everywhere            |
| Protected | `_var`  | Accessible in class and subclass |
| Private   | `__var` | Not directly accessible          |

---

## Example of Encapsulation with Private Variable

```python id="en3"
class Student:
    def __init__(self):
        self.__marks = 90

    def show(self):
        print(self.__marks)

s = Student()
s.show()
```

Output:

```text id="en4"
90
```

---

## Accessing Private Data (Name Mangling)

```python id="en5"
print(s._Student__marks)
```

---

## Advantages of Encapsulation

- Data security
- Controlled access
- Easy maintenance
- Improves code flexibility

---

# 3. Information Hiding in Python

## Introduction

**Information Hiding** is the concept of hiding internal implementation details of a class and exposing only necessary functionality.

It is closely related to encapsulation but focuses more on **restricting direct access to internal data**.

---

## Purpose

- Protect internal object state
- Prevent accidental modification
- Improve system security
- Reduce complexity for users

---

## Example

```python id="ih1"
class Employee:
    def __init__(self, salary):
        self.__salary = salary

    def get_salary(self):
        return self.__salary

    def set_salary(self, value):
        if value > 0:
            self.__salary = value

emp = Employee(20000)

print(emp.get_salary())
emp.set_salary(25000)
print(emp.get_salary())
```

Output:

```text id="ih2"
20000
25000
```

---

## Key Idea

User cannot directly access `__salary`, only through methods.

---

## Difference between Encapsulation and Information Hiding

| Encapsulation             | Information Hiding            |
| ------------------------- | ----------------------------- |
| Bundling data and methods | Hiding internal details       |
| Focus on structure        | Focus on security             |
| Achieved using classes    | Achieved using access control |

---

## Advantages of Information Hiding

- Prevents misuse of data
- Improves security
- Simplifies usage for users
- Protects internal logic

---

# Search Algorithms in Python

---

# Introduction

A **Search Algorithm** is a method used to find the location of a specific element in a data structure such as a list or array.

Search algorithms are mainly used in:

- Databases
- AI systems
- Operating systems
- Information retrieval systems

---

# Types of Search Algorithms

1. Linear Search
2. Binary Search

---

# 1. Linear Search

## Introduction

**Linear Search** is the simplest searching technique where each element is checked one by one until the target element is found.

It works on both sorted and unsorted data.

---

## Working Principle

- Start from first element
- Compare each element with target value
- If match found → stop
- If not found → continue till end

---

## Algorithm

1. Start
2. Read array and target element
3. Compare target with each element
4. If match found → return index
5. Else → return not found
6. End

---

## Flowchart (Mermaid Diagram Code)

```mermaid id="ls1"
flowchart TD
A(Start) --> B[Read Array and Target]
B --> C[i = 0]
C --> D{i < n?}
D -->|Yes| E{arr[i] == target?}
E -->|Yes| F[Element Found]
E -->|No| G[i = i + 1]
G --> D
D -->|No| H[Element Not Found]
F --> I(End)
H --> I
```

---

## Python Code

```python id="ls2"
def linear_search(arr, target):
    for i in range(len(arr)):
        if arr[i] == target:
            return i
    return -1

data = [10, 20, 30, 40, 50]

print(linear_search(data, 30))
```

Output:

```text id="ls3"
2
```

---

## Time Complexity

| Case         | Complexity |
| ------------ | ---------- |
| Best Case    | O(1)       |
| Worst Case   | O(n)       |
| Average Case | O(n)       |

---

## Advantages

- Simple to implement
- Works on unsorted data
- No preprocessing required

---

## Disadvantages

- Slow for large datasets
- Inefficient compared to other algorithms

---

# 2. Binary Search

## Introduction

**Binary Search** is an efficient searching algorithm used on **sorted arrays only**.

It works on the **divide and conquer** principle.

---

## Working Principle

- Find middle element
- Compare with target
- If equal → found
- If target is smaller → search left half
- If target is greater → search right half

---

## Algorithm

1. Start
2. Set low = 0, high = n-1
3. Find mid = (low + high) // 2
4. Compare mid element with target
5. If equal → return index
6. If target < mid → search left half
7. Else → search right half
8. Repeat until found or low > high
9. End

---

## Flowchart (Mermaid Diagram Code)

```mermaid id="bs1"
flowchart TD
A(Start) --> B[Set low=0, high=n-1]
B --> C{low <= high?}
C -->|Yes| D[mid = (low+high)/2]
D --> E{arr[mid] == target?}
E -->|Yes| F[Element Found]
E -->|No| G{target < arr[mid]?}
G -->|Yes| H[high = mid - 1]
G -->|No| I[low = mid + 1]
H --> C
I --> C
C -->|No| J[Element Not Found]
F --> K(End)
J --> K
```

---

## Python Code

```python id="bs2"
def binary_search(arr, target):
    low = 0
    high = len(arr) - 1

    while low <= high:
        mid = (low + high) // 2

        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            low = mid + 1
        else:
            high = mid - 1

    return -1

data = [10, 20, 30, 40, 50]

print(binary_search(data, 40))
```

Output:

```text id="bs3"
3
```

---

## Time Complexity

| Case         | Complexity |
| ------------ | ---------- |
| Best Case    | O(1)       |
| Worst Case   | O(log n)   |
| Average Case | O(log n)   |

---

## Advantages

- Very fast for large datasets
- Efficient (logarithmic time)
- Reduces search space quickly

---

## Disadvantages

- Works only on sorted data
- More complex than linear search

---

# Linear Search vs Binary Search

| Feature          | Linear Search | Binary Search      |
| ---------------- | ------------- | ------------------ |
| Data Requirement | Unsorted      | Sorted only        |
| Method           | Sequential    | Divide and Conquer |
| Time Complexity  | O(n)          | O(log n)           |
| Speed            | Slow          | Fast               |
| Implementation   | Easy          | Moderate           |

---

# Real-Life Example

## Linear Search Example:

Searching for a name in an unsorted contact list.

## Binary Search Example:

Searching a word in a dictionary.

---

# Summary

- Linear Search checks elements one by one.
- Binary Search divides the array into halves.
- Linear search works on unsorted data.
- Binary search requires sorted data.
- Binary search is much faster than linear search for large datasets.
