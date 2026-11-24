import numpy as np
import matplotlib.pyplot as plt

import latticegen

r_k = 0.2
theta=2.05
kappa=1 #1.005
psi=13. #
xi=0.

lattice1 = 0.7*latticegen.hexlattice_gen(r_k, xi, 2)
lattice2 = latticegen.hexlattice_gen(r_k, theta+xi, 2,
                                     kappa=kappa, psi=psi)

fig, ax = plt.subplots(figsize=[10,10])


data = (lattice1 + lattice2).compute()
im = ax.imshow(data.T,
               vmax=np.quantile(data,0.95),
               vmin=np.quantile(data,0.05),
               )
ax.set_xlabel('x (nm)')
ax.set_ylabel('y (nm)')
ax.set_title(f'$\\theta = {theta:.2f}^\\circ, \\kappa = {kappa:.3f}, \\psi = {psi:.2f}^\\circ$');
plt.show()