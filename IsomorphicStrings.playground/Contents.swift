//: Playground - noun: a place where people can play

import UIKit

func isIsomorphic(s: String, t: String) -> Bool {
    
    if s  == t  {
        return true
    }else if s.count != t.count {
        return false
    }else{
        
        let arr1 = s.map{String($0)}
        let arr2 = t.map{String($0)}
        
        var dict = [String : String]()
        
        for i in 0..<arr1.count {
            
            if let val = dict[arr1[i]]{
                if val != arr2[i]{
                    return false
                }
                
            }else{
                dict[arr1[i]] = arr2[i]
            }
        }
    }
    
    return true
    
}

let result = isIsomorphic(s: "aab", t: "xxz")
print(result)

let result1 = isIsomorphic(s: "aab", t: "xyz")
print(result1)
