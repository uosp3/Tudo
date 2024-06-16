# https://www.udemy.com/course/python-3-do-zero-ao-avancado/learn/lecture/15341002#questions
# Teoria: python Special Methods, Magic Methods ou Dunder Methods
# Dunder = Double Underscore = __dunder__
# Antigo e útil: https://rszalski.github.io/magicmethods/
# https://docs.python.org/3/reference/datamodel.html#specialnames
# __lt__(self,other) - self < other
# __le__(self,other) - self <= other
# __gt__(self,other) - self > other
# __ge__(self,other) - self >= other
# __eq__(self,other) - self == other
# __ne__(self,other) - self != other
# __add__(self,other) - self + other
# __sub__(self,other) - self - other
# __mul__(self,other) - self * other
# __truediv__(self,other) - self / other
# __neg__(self) - -self
# __str__(self) - str
# __repr__(self) - str =====> para desenvolvedores
class Ponto:
    def __init__(self, x ,y, z='String'):
        self.x = x
        self.y = y
        self.z = z
    
    def __str__(self):
        return f'({self.x}, {self.y})'

    def __repr__(self):
        #class_name = self.__class__.__name__ # a linha abaixo faz o mesmo que esta
        class_name = type(self).__name__
        return f'{class_name}Ponto(x={self.x!r}, y={self.y!r}, z={self.z!r})'

p1 = Ponto(1,2)
p2 = Ponto(978, 876)

print(p1) #ou
print(f'{p1!s}') #o 's' para string

print(repr(p2)) #ou 
print(f'{p2!r}') # o 'r' para repr