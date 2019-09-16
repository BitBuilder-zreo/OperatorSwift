//
//  Operator.swift
//  Operator
//
//  Created by W&Z on 2019/9/11.
//  Copyright © 2019 W&Z. All rights reserved.
//

import Foundation

precedencegroup StringPrecedence {
    
    lowerThan : AdditionPrecedence
    associativity : left
    assignment : false
}

infix operator ?+? : StringPrecedence

public func ?+? (left:String? , right:String?) -> String? {
    
    guard let leftValue = left else { return right }
    
    guard let rightValue = right else { return left }

    return leftValue + rightValue
}
//
