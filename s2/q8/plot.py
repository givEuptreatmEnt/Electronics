import matplotlib.pyplot as plt
import numpy as np

F = np.logspace(6, 11, 100)
print(F)
gmro = 100
z1 = 1.25e-11
z2 = 2.5e-11
z3 = 1e-8
Fi = F * 1j * 2 * np.pi
Z = np.log10(np.abs(gmro * (1 + Fi*z1) / (1+Fi*z2) / (1+Fi*z3))) * 20

plt.semilogx()
plt.plot(F, Z)
Fz = [1.2e6, 15.9e6, 1.59e9, 6.37e9, 12.7e9, 95e9]
plt.plot(Fz, [40,40,0,-12,-24,-41.5], '--or')
plt.ylim(plt.ylim()[0]-2, plt.ylim()[1]+2)
plt.savefig('p1.pdf')
