# README for Numbers Script

## Author Information
- **Name:** Avery Williams  
- **Course:** CENG298
- **Assignment:** Numbers Script (Odd/Even Classification)  
- **Date:** 10/22/25  

## Program Description
This script prompts the user to enter a positive integer and then prints all integers from **1** up to and including that number. Each number is labeled as **“Odd”** or **“Even.”**  
It demonstrates conditional logic, arithmetic evaluation, and iteration using a `for` loop in Bash.  

## Example Output
If the user enters **5**, the program should display:
```
1 Odd
2 Even
3 Odd
4 Even
5 Odd
```

## Usage
To run the script interactively:
```bash
./numbers.sh
```

To test with an input file (for example, `numbers-input`):
```bash
./numbers.sh < numbers-input
```

## How the Script Works
1. The script begins with a **shebang** (`#!/bin/bash`) and identifying comments.  
2. It **prompts** the user for a positive integer using `read`.  
3. A **for loop** iterates from `1` to the user’s number.  
4. The **modulus operator (`%`)** determines whether the number is odd or even.  
5. For each number, an `if` statement prints the number followed by either “Odd” or “Even.”  

## Core Logic Example
```bash
for (( i=1; i<=num; i++ ))
do
  if (( i % 2 == 0 ))
  then
    echo "$i Even"
  else
    echo "$i Odd"
  fi
done
```

## Testing Results
When tested with the input file `numbers-input` containing:
```
5
```
The script outputs:
```
1 Odd
2 Even
3 Odd
4 Even
5 Odd
```

You should also verify:
- That negative or zero inputs are handled gracefully (optional).  
- That input `10` produces alternating Odd/Even lines up to 10.  

## Example Validations
| Input | Output Behavior |
|--------|------------------|
| 3 | 1 Odd  2 Even  3 Odd |
| 7 | 1 Odd  2 Even  3 Odd  4 Even  5 Odd  6 Even  7 Odd |

## Challenges and Solutions
No problems were encountered when creating this script besides trying to figure out how to make, when the input is 10 or over, be printed with even odd regularly (See Resources)

## Resources
- https://www.shell-tips.com/bash/seq-brace-expansion/#gsc.tab=0 - Sequence in the script
- ChatGPT - I couldn't figure out how to make the even and odd numbers output to to their respective spots without creating new lines, and -n by itself wasn't working, and nothing online when I googled didn't work either. (| tr '\n' ' ')

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
