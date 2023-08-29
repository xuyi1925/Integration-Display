import numpy as np

with open('sin_cos.coe', 'wb') as f:
    f.write("memory_initialization_radix = 16;")
    f.write("memory_initialization_vector = ")
    for i in range(3600):
        f.write(str(round(np.sin(i / 1800 * np.pi), 3) * 1000))
    for i in range(3600):
        f.write(str(round(np.cos(i / 1800 * np.pi), 3) * 1000))
    f.write(";")
    
