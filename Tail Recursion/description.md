# Homework 2


> Given an integer N, return the summation from 1 to N. Please use the tail recursion method to implement in MIPS assembly.

## Example:
sum(5) = 1 + 2 + 3 + 4 + 5 = 15 input integer 5, and it will return 15.

### Hint: 
Below is the tail recursion version in C style
```
int tail(x, running_total=0) {
    if (x==0) {
        return running_total;
    } else {
        return tail(x-1, running_total+x);
    }
}
```
