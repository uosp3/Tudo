import importlib
import aula98_m

print(aula98_m.variavel)

for i in range(10):
    importlib.reload(aula98_m) #não precisa recarregar o módulo várias vezes.
    print(i)