//import UIKit
//
//var array1:[Substring] = []
//var str = "Miras loves Kamila"
//var s:[Character] = []
//var string: String = ""
//
//print(String(str.reversed()))
//
//func reverseWords(_ s: String) -> String {
//    var array1:[Substring] = s.split(separator: " ")
//    for i in 0 ..< array1.count{
//        array1[i] = Substring(array1[i].reversed())
//    }
//    return String(array1.count == 0 ? String(array1[0]) : String(array1.joined(separator: " ")))
//}
//
//reverseWords(str)
//
//var s:[Character] = ["h", "e", "l", "l", "o"]
//s.reverse()
//s = s.reversed()
//
//for i in 0 ..< s.count {
//    s.insert(s[i], at: 0)
//    s.remove(at: i+1)
//}
//s


func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    
    guard target <= nums[nums.count - 1] else {return nums.count}
    guard nums.contains(target) == false else { return nums.firstIndex(of: target)! }
    var le = 0, re = nums.count-1
    while le <= re{
        let mid = le + (re - le) / 2
        if nums[mid] == target + 1{
            return mid
        } else if nums[mid] < target{
            le = mid + 1
        } else {
            re = mid - 1
        }
    }
    return re + 1
}

var arr:[Int] = [1]
print(arr.firstIndex(of: 1)!)
searchInsert(arr, 1)
