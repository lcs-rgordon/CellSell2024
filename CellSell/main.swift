//
//  main.swift
//  CellSell
//
//  Created by Russell Gordon on 2024-09-20.
//

import Foundation

func reportCellPlanCosts(day: Int, evening: Int, weekend: Int) -> String {
    
    // PROCESS
    // Implement the primary logic of the problem here
    var planA = 0
    var planB = 0

    // Work out daytime minutes cost
    // Each plan only costs money during the daytime if more than a certain threshold of usage is reached
    if day > 100 {
        planA += (day - 100) * 25
    }
    if day > 250 {
        planB += (day - 250) * 45
    }

    // Work out evening minutes cost
    planA += evening * 15
    planB += evening * 35

    // Work out weekend minutes cost
    planA += weekend * 20
    planB += weekend * 25

    // OUTPUT

    // Provide cost of each plan
    var output = ""
    output += "Plan A costs \(planA)\n"
    output += "Plan B costs \(planB)\n"

    // Print the best value
    if planA < planB {
        output += "Plan A is cheapest."
    } else if planB < planA {
        output += "Plan B is cheapest."
    } else {
        output += "Plans A and B are the same price."
    }
    
    return output
}

print(reportCellPlanCosts(day: 251, evening: 10, weekend: 60))
/*
 Plan A costs 5125
 Plan B costs 1895
 Plan B is cheapest.
 */
