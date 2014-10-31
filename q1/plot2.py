import matplotlib.pyplot as plt
import numpy as np

xs = np.array(np.logspace(1,10, 100))
ys = 1e5 / (((1 + (1e4/xs)**2)**0.5 ) * ((1 + (xs/1e7)**2)**0.5))

plt.ylim((1e0, 5e5))
plt.loglog(xs, ys)
plt.savefig('2_79.pdf')
plt.show()
