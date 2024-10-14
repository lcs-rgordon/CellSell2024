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

}
