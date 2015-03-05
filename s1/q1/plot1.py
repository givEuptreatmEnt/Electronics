import matplotlib.pyplot as plt
import numpy as np

ts = np.linspace(-5, 5, 100)
vas = 0.5 * np.sin(ts)
vbs = 1.5 * np.sin(ts)
vcs = -1.5 * np.sin(ts)

plt.xlim((-5, 5))
plt.ylim((-1.8, 1.8))
plt.plot(ts, vas)
plt.plot(ts, vbs)
plt.plot(ts, vcs)
plt.grid(True)
plt.legend(['$V_A$','$V_B$','$V_C$']) 

plt.savefig('2_66.pdf')
plt.show()
