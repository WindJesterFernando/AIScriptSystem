//
//  GameModelData.swift
//  GambitScriptSystem
//
//  Created by Fernando  Restituto on 2020-07-07.
//  Copyright © 2020 Fernando Restituto. All rights reserved.
//

import Foundation



class BattleEntity
{

    var hp : Int
    var mp : Int
    
    var aiScripts : [AIScript] = []
    
    init()
    {
        hp = 50
        mp = 5
    }
    
}


class BattleSystem
{
    var playerCharacters : [BattleEntity]
    var enemyCharacters : [BattleEntity]
    
    init()
    {
        playerCharacters = []
        enemyCharacters = []
        
        
        var be : BattleEntity = BattleEntity()
        be.hp = 80
        be.mp = 8
        
        var script : AIScript
        script = AIScript()
        script.actionID = 5
        
        var condition : AIScriptCondition
        condition = AIScriptCondition()
        condition.checkID = ConditionID.FoeHPLessThan
        condition.checkParam = 20
        
        script.conditions.append(condition)
        
        be.aiScripts.append(script)
        
        playerCharacters.append(be)
        playerCharacters.append(BattleEntity())
        playerCharacters.append(BattleEntity())
        
        
        
        enemyCharacters.append(BattleEntity())
        be = BattleEntity()
        be.hp = 10
        be.mp = 8
        enemyCharacters.append(be)
        enemyCharacters.append(BattleEntity())
        
        
        //print("awefsdeg wegwregs ewgr we g")
    }
    
    func ProcessAI()
    {
        print("---Starting AI Process----")
        
        
//        var alliedParty : [BattleEntity]
//        var opposingParty : [BattleEntity]
        
        for battleEntity in playerCharacters
        {
            for script in battleEntity.aiScripts
            {
                for condition in script.conditions
                {
                    if(condition.checkID == ConditionID.FoeHPLessThan)
                    {
                        print("check id = ", ConditionID.FoeHPLessThan)
                        
                        for enemyBattleEntity in enemyCharacters
                        {
                            if(enemyBattleEntity.hp < condition.checkParam)
                            {
                                print("Process me!!!!")
                            }
                        }
                        
                    }
                    else if(condition.checkID == ConditionID.FoeHPGreaterThan)
                    {
                        
                    }
                    else if(condition.checkID == ConditionID.FoeMPGreaterThan)
                    {
                        
                    }
                    else if(condition.checkID == ConditionID.FoeMPLessThan)
                    {
                        
                    }
                    else if(condition.checkID == ConditionID.AllyHPLessThan)
                    {
                        
                    }
                    else if(condition.checkID == ConditionID.AllyHPGreaterThan)
                    {
                        
                    }
                    else if(condition.checkID == ConditionID.AllyMPGreaterThan)
                    {
                        
                    }
                    else if(condition.checkID == ConditionID.AllyMPLessThan)
                    {
                        
                    }
                }
                
                //Check gambit ID - CheckCondition And GetViableTargets
                //Perform Processing if condition is met, if not, continue looping
                
                
                print("action id = ", script.actionID)
            }
        }
        
        //add processing for enemy party
        
        print("---Ending AI Process----")
    }
    
}


//DONE
//Create dummy model data for later testing use
//Create AIScript Class
//Create Condition Class
//enumation of Condition IDs
//create function to check ai Scripts
//loop through aiScripts and...
//


//TODO
//


//Check gambit ID - CheckCondition And GetViableTargets
//Perform Processing if condition is met, if not, continue looping
//
//
//
//

//Decouple Target selection from conditions

