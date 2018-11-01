# Number Theory and Cryptography

## MATLAB Assignment

### Members: 
16CO124 Mehnaz Yunus <br>
16CO140 Sharanya Kamath <br>

### Submitted to:
Prof. B.R.Chandravarkar <br>
Assistant Professor <br>
CSE Dept, NITK <br>

### Problem Statement
Q11. Write a MATLAB code to solve linear congruence theorem ax ≡ c(modm)
with the proper procedure.

### Linear Congruence Theorem
**Statement:** <br>
Let *a, b*, and *m > 0* be given integers, and put *g = (a, m)*.
The congruence *ax ≡ c (mod m)* has a solution if and only if *g | c*. If this
condition is met, then the solutions form an arithmetic progression with
common difference *m/g*, giving *g* solutions *(mod m)*.

**Proof:** <br>
The question is whether there exist integers *x* and *y* such that *ax + my = c*.<br>
<br>
Since *g* divides the left side, for such integers to exist we must have *g | c*.<br>
Suppose that this condition is met, and write *a = g 𝜶, c = g 𝜷, m = g* 𝝁 <br>
Then the desired congruence holds if and only if  𝜶x ≡  𝜷 (mod 𝝁). <br>
<br>
Here *(𝜶, 𝝁) = 1*, so there is a unique number *𝜶’(mod 𝝁)* such that  *𝜶 𝜶’≡ 1 (mod  𝝁)*.<br>
On multiplying through by  *𝜶’*, we find that *x ≡  𝜶𝜶’ x ≡ 𝜶’𝜷 (mod𝝁 )*. <br>
Thus the set of integers x for which *ax ≡ c (mod m)* is precisely the arithmetic progression of numbers of the form   𝜶’𝜷+ k𝝁 .<br>
<br>
If we allow k to take on the values 0, 1, ... ,  g - 1, we obtain *g* values of *x* that are distinct *(mod m)*. <br>
All other values of *x* are congruent *(mod m)* to one of these, so we have precisely *g* solutions. <br>


### Solution Approach
Assume that *d = gcd(a, m)* divides c.<br>
<br>
Solving the congruence ax ≡ c(mod m) is equivalent to solving the equation *ax + my = c*. But we can divide both sides of the equation by d to get a reduced equation
*Ax + My = C* where *A = a/d, M = m/d, C = c/d*.<br>
<br>
The solutions to the reduced equations are exactly the same as the solutions to the original one. Thus, solving *ax ≡ b (mod m)* is equivalent to solving *Ax ≡ C(mod M)*.<br>
<br>
This congruence satisfies the condition *gcd(A, M) = 1*, and thus can be
solved by finding an inverse of A mod M and multiplying both sides by that
inverse.<br>

### Examples
**Example 1** <br>
![input](/Screenshots/input.png) <br>
![output](/Screenshots/output.png)<br>

**Example 2** <br>
![input](/Screenshots/no_soln_input.png) <br>
![output](/Screenshots/no_soln_output.png) <br>
