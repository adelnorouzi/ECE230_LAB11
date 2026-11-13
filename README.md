# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Arshia Jizan and Adel Norouzi group 12
## Summary

In this lab we created clock dividers using flip flops to slow down the frequencies. We implemented 2 different types of counters, the modulo and ripple counter which divides the clock by powers of 2. 


## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

A full clock cycle is defined by a transition from high to low and back to high. It takes 2 full counts to complete one full output period. 

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

If a ripple counters output goes to all 1s on the first cycle it typically happens because it is functioning as a down counter rather than an up counter. 

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

To devide the 100MHz input clock from the board down to a 1KHz you need to divide the signal by 100000 because a ripple counter divides by powers of 2. you would need a ripple counter of 2^17 which would make it as close as possible to 1KHz.

