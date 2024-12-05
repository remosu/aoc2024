var leftList: [Int] = []
var rightList: [Int] = []

while let line = readLine() {
   let values = line.split(separator: " ").map { Int($0)! }
   leftList.append(values[0])
   rightList.append(values[1])
}

print(zip(leftList.sorted(), rightList.sorted()).map { abs($0 - $1) }.reduce(0, +))
