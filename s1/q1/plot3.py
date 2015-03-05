import matplotlib.pyplot as plt
import numpy as np

ts = np.linspace(0, 0.5, 100)

xs = []
for t in ts:
    if t > 0.1 and t < 0.25:
        xs.append(3)
    else:
        xs.append(0)

plt.plot([0, 0.099, 0.1, 0.25, 0.251,  0.5], [0, 0, 3, 3, 0, 0])
plt.plot([0, 0.1, 0.25, 0.4,0.5], [0, 0, 3, 0, 0])
plt.xlabel('time $(\mu s)$')
plt.ylabel('voltage $(V)$')
plt.ylim((-0.1, 3.1))
plt.legend(['$v_I$', '$v_O$'])
plt.savefig('2_104.pdf')
plt.show()
