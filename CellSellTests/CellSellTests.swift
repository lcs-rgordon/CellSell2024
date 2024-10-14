//
//  CellSellTests.swift
//  CellSellTests
//
//  Created by Russell Gordon on 2024-09-20.
//

import Testing

struct CellSellTests {
    
    @Test func typicalCaseOne() {
        
        let result = reportCellPlanCosts(
            day: 251,
            evening: 10,
            weekend: 60
        )
        
        //        #expect(result == "Plan A costs 5125\nPlan B costs 1895\nPlan B is cheapest.")
        
        #expect(result == """
                            Plan A costs 5125
                            Plan B costs 1895
                            Plan B is cheapest.
                            """)
        
    }
    
    @Test func planACheapest() {
        
        let result = reportCellPlanCosts(
            day: 300,
            evening: 145,
            weekend: 50
        )
        
        #expect(result == """
                                Plan A costs 8175
                                Plan B costs 8575
                                Plan A is cheapest.
                                """)
    }
    
    @Test func planBCheapest() {
        
        let result = reportCellPlanCosts(
            day: 262,
            evening: 90,
            weekend: 10
        )
        
        #expect(result == """
                                Plan A costs 5600
                                Plan B costs 3940
                                Plan B is cheapest.
                                """)
    }
    
    @Test func plansHaveSameCost() {
        
        let result = reportCellPlanCosts(
            day: 296,
            evening: 140,
            weekend: 6
        )
        
        #expect(result == """
                                Plan A costs 7120
                                Plan B costs 7120
                                Plans A and B are the same price.
                                """)
    }
        
    @Test func lowerBoundaryConditionsTest() {
        let result = reportCellPlanCosts(day: 0, evening: 0, weekend: 0)
        
        
        #expect(result == """
                                Plan A costs 0
                                Plan B costs 0
                                Plans A and B are the same price.
                                """)
    }
    
}
