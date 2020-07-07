//
//  GambitScriptSystem.swift
//  GambitScriptSystem
//
//  Created by Fernando  Restituto on 2020-07-07.
//  Copyright © 2020 Fernando Restituto. All rights reserved.
//

import Foundation


class AIScript
{
    
    var conditions : [AIScriptCondition] = []
    var actionID : Int = 0
    var targets : [BattleEntity] = []
    
    //TODO (later)
    //var targetingFilters : [AIScriptCondition]
    
    init()
    {
        
    }
    
    
}

class AIScriptCondition
{
    var checkID : Int = 0
    var checkParam : Int  = 0
    
    //TODO, use array of elements instead
    //var checkParam : [Int] = []
    
//    init()
//    {
//
//    }
}

class ConditionID
{
    static let AllyHPLessThan : Int = 1
    static let AllyHPGreaterThan : Int = 2
    
    static let AllyMPLessThan : Int = 3
    static let AllyMPGreaterThan : Int = 4
    
    static let FoeHPLessThan : Int = 1
    static let FoeHPGreaterThan : Int = 2
    
    static let FoeMPLessThan : Int = 3
    static let FoeMPGreaterThan : Int = 4
}





