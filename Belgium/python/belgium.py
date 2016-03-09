class colors:
    END = "\033[0m"
    RED = "\033[31;41m"
    BLACK = "\033[30;40m"
    YELLOW = "\033[33;43m"
    
width = 80
height = 30

total = ""

stripew = int(width / 3)

for i in range(0, height):
    for b in range(0, stripew):
    	total += colors.BLACK + "B" + colors.END
    for y in range(0, stripew):
    	total += colors.YELLOW + "Y" + colors.END
    for r in range(0, stripew):
    	total += colors.RED + "R" + colors.END
    
    total += "\n"

print(total)