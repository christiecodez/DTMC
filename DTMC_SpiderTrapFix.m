% Christie Condron 
% 10/20/18

syms mu a b c d

% setting up dtmc steady state 
steady_state = [a b c d]

P = input('What is the original transition matrix? Must be square ')
[m,n] = size(P)
mat_ones = ones(m,n)

newTrans = mu*P +((1-mu)/m)*mat_ones
eqn = steady_state*newTrans

% equations to solve for to find steady state probabilities 
a_soln = solve(eqn(1)==a, a)
b_soln = solve(eqn(2)==b, b)
c_soln = solve(eqn(3)==c, c)
d_soln = solve(eqn(4)==d, d)





