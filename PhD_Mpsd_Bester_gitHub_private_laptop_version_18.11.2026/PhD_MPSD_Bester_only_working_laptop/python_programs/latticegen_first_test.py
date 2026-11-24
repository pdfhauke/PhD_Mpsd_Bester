import numpy as np 
import matplotlib.pyplot as plt 
import latticegen 

lattice = latticegen.hexlattice_gen(r_k = 0.01, theta = 0, order = 3)
symmetry = 6.076

#lattice = latticegen.anylattice_gen(r_k=0.01, theta=0,
#                                    order=3, symmetry = 4)
print(type(lattice))
print("shape: ", np.shape(lattice))
plt.imshow(lattice.T)
plt.title(f'lattice of symmetry {symmetry:.0f}')
plt.show()

