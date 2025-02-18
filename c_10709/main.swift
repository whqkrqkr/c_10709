import Foundation

let n = readLine()!.split(separator: " ").map { Int($0)! }
var board = [[String]]()
var result = [[Int]](repeating: [Int](repeating: -1, count: n[1]), count: n[0])

for _ in 0..<n[0] {
    board.append(Array(readLine()!).map { String($0) })
}

for i in 0..<n[0] {
    var m = -1
    for j in 0..<n[1] {
        if board[i][j] == "c" {
            m = 0
        }
        if m != -1 {
            result[i][j] = m
            m += 1
        }
    }
}

for row in result {
    print(row.map { String($0) }.joined(separator: " "))
}
