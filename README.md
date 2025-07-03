# Modeling-Oscillators
Modeling Oscillators With Discrete Time Systems

This MATLAB project models the dynamics and stability of discrete-time oscillators using nonlinear difference equations. The project is divided into two parts:

---

##  Part 1: Single Oscillator and Bifurcation Diagram

A single nonlinear oscillator is modeled using the iterative map:

\[
x_{n+1} = 1 - \alpha x_n^2
\]

- The script sweeps through 200 values of \(\alpha \in [0, 2]\)
- For each \(\alpha\), the last 20 values of the orbit are recorded
- These values are plotted to generate a **bifurcation diagram**, visualizing the transition to chaos

### Key Variables:
- `alphas` – range of parameter \(\alpha\)
- `orbit` – time series of \(x_n\) for a given \(\alpha\)
- `xs`, `as` – used to plot bifurcation points

### Example Output:
![Bifurcation Diagram]()  <!-- Add this image later if desired -->

---

##  Part 2: System of Coupled Oscillators

This section simulates a 1D lattice of `p = 32` coupled oscillators, where each node is influenced by its immediate neighbors:

\[
x^{(n+1)} = A \cdot \left( \mathbf{1} - \alpha (x^{(n)})^2 \right)
\]

- The coupling matrix `A` includes:
  - Diagonal: `a = 0.6`
  - Off-diagonal neighbors: `b = 0.2`
- Nonlinear term: \(g(x) = 1 - \alpha x^2\)

### What it does:
- Constructs the coupling matrix `A` dynamically
- Evolves the system for 1000 iterations from random initial conditions
- Plots the trajectory of a single oscillator over time (`x_1(n)`)

### Key Variables:
- `p` – number of oscillators
- `alpha` – nonlinear strength
- `x` – state vector at each timestep
- `x1` – time evolution of one selected oscillator

---


