﻿Feature: Sandwich Bread

@BLTSandwich @WhiteBread
Scenario: Cost of BLT sandwich on white bread
    When a BLT sandwich on white bread is ordered
    Then the sandwich will cost $4.50
    And the sandwich is described as "BLT sandwich on white bread"

@BLTSandwich @WheatBread
Scenario: Cost of BLT sandwich on wheat bread
    When a BLT sandwich on wheat bread is ordered
    Then the sandwich will cost $4.75
    And the sandwich is described as "BLT sandwich on wheat bread"


@BLTSandwich @RyeBread
Scenario: Cost of BLT sandwich on rye bread
    When a BLT sandwich on rye bread is ordered
    Then the sandwich will cost $5.00
    And the sandwich is described as "BLT sandwich on rye bread"


@PBJSandwich @WhiteBread
Scenario: Cost of PBJ sandwich on white bread
    When a PBJ sandwich on white bread is ordered
    Then the sandwich will cost $2.75
    And the sandwich is described as "PBJ sandwich on white bread"


@PBJSandwich @WheatBread
Scenario: Cost of PBJ sandwich on wheat bread
    When a PBJ sandwich on wheat bread is ordered
    Then the sandwich will cost $3.00
    And the sandwich is described as "PBJ sandwich on wheat bread"

@PBJSandwich @RyeBread
Scenario: Cost of PBJ sandwich on rye bread
    When a PBJ sandwich on rye bread is ordered
    Then the sandwich will cost $3.25
    And the sandwich is described as "PBJ sandwich on rye bread"

@ChickenSandwich @WhiteBread
Scenario: Cost of chicken sandwich on white bread
    When a chicken sandwich on white bread is ordered
    Then the sandwich will cost $4.00
    And the sandwich is described as "Chicken sandwich on white bread"


@ChickenSandwich @WheatBread
Scenario: Cost of chicken sandwich on wheat bread
    When a chicken sandwich on wheat bread is ordered
    Then the sandwich will cost $4.25
    And the sandwich is described as "Chicken sandwich on wheat bread"

@ChickenSandwich @RyeBread
Scenario: Cost of chicken sandwich on rye bread
    When a chicken sandwich on rye bread is ordered
    Then the sandwich will cost $4.50
    And the sandwich is described as "Chicken sandwich on rye bread"

@Toppings
Scenario: Shredded chicken on white + cheese + cheese + cheese = $6.25
    When a chicken sandwich on white bread is ordered
    And customer orders cheese
    And customer orders cheese
    And customer orders cheese
    Then the sandwich will cost $6.25
    And the sandwich is described as "Chicken sandwich on white bread + cheese + cheese + cheese"

@Toppings
Scenario: Shredded chicken on rye + cheese + lettuce + lettuce + lettuce + tomato + bacon = $7.00
    When a chicken sandwich on rye bread is ordered
    And customer orders cheese
    And customer orders lettuce
    And customer orders lettuce
    And customer orders lettuce
    And customer orders tomato
    And customer orders bacon
    Then the sandwich will cost $7.00
    And the sandwich is described as "Chicken sandwich on rye bread + cheese + lettuce + lettuce + lettuce + tomato + bacon"

@Toppings
Scenario: BLT sandwich on rye + cheese + bacon + bacon + bacon + bacon = $8.75
    When a BLT sandwich on rye bread is ordered
    And customer orders cheese
    And customer orders bacon
    And customer orders bacon
    And customer orders bacon
    And customer orders bacon
    Then the sandwich will cost $8.75
    And the sandwich is described as "BLT sandwich on rye bread + cheese + bacon + bacon + bacon + bacon"

@Toppings @Sprint1
Scenario: BLT on Rye with Lettuce, Lettuce, Lettuce, Tomato, Bacon, Bacon, Bacon, Lettuce, Bacon, Cheese, Bacon
    When a BLT sandwich on rye bread is ordered
    And customer orders lettuce
    And customer orders lettuce
    And customer orders lettuce
    And customer orders tomato
    And customer orders bacon
    And customer orders bacon
    And customer orders bacon
    And customer orders lettuce
    And customer orders bacon
    And customer orders cheese
    And customer orders bacon
    Then the sandwich will cost $10.75
    And the sandwich is described as "BLT sandwich on rye bread + lettuce + lettuce + lettuce + tomato + bacon + bacon + bacon + lettuce + bacon + cheese + bacon"

@Toppings @Sprint1
Scenario: Chicken on White, Tomato, BBQ Sauce, Mayo) {correct description & price $4.25
    When a chicken sandwich on white bread is ordered
    And customer orders tomato
    And customer orders BBQ
    And customer orders mayo
    Then the sandwich will cost $4.25
    And the sandwich is described as "Chicken sandwich on white bread + tomato + BBQ + mayo"

@Exceptions
Scenario: When there are only 3 bread, only one sandwich can be sold, and the second will throw and exception
    When there is only 3 slices of white bread
    And a BLT sandwich on white bread is ordered
    Then the sandwich will cost $4.50
    And the sandwich is described as "BLT sandwich on white bread"
    When a BLT sandwich on white bread is ordered
    Then It will throw a MissingIngredientException error

Scenario: When there are only 1 bread, no sandwich can be made.
    When there is only 1 slice of white bread
    And a BLT sandwich on white bread is ordered
    Then It will throw a MissingIngredientException error

@Test_7
Scenario: If on a day I sell three sandwiches 
    When a chicken sandwich on white bread is ordered
    And customer orders cheese
    And customer orders cheese
    And customer orders cheese
    Then the sandwich will cost $6.25
    And the sandwich is described as "Chicken sandwich on white bread + cheese + cheese + cheese"
    When a chicken sandwich on rye bread is ordered
    And customer orders cheese
    And customer orders lettuce
    And customer orders lettuce
    And customer orders lettuce
    And customer orders tomato
    And customer orders bacon
    Then the sandwich will cost $7.00
    And the sandwich is described as "Chicken sandwich on rye bread + cheese + lettuce + lettuce + lettuce + tomato + bacon"
    When a BLT sandwich on rye bread is ordered
    And customer orders cheese
    And customer orders bacon
    And customer orders bacon
    And customer orders bacon
    And customer orders bacon
    Then the sandwich will cost $8.75
    And the sandwich is described as "BLT sandwich on rye bread + cheese + bacon + bacon + bacon + bacon"
    Then the daily sale should be $22

@Profit
Scenario: Calculate daily profit for a sandwich shop
    Given the sandwich shop made $100 in revenue
    And spent $50 on ingredients
    When the owner calculates the profit
    Then the profit should be $50

Scenario: Calculate daily profit
    Given the sandwich shop made $0 in revenue
    And spent $0 on ingredients
    When the owner calculates the profit
    Then the profit should be $0

@TestDailySales
Scenario: If on a day I sell two sandwiches 
    When a chicken sandwich on white bread is ordered
    And customer orders cheese
    And customer orders cheese
    Then the sandwich will cost $5.50
    And the sandwich is described as "Chicken sandwich on white bread + cheese + cheese"
    When a chicken sandwich on rye bread is ordered
    And customer orders cheese
    And customer orders lettuce
    And customer orders tomato
    And customer orders bacon
    Then the sandwich will cost $6.50
    And the sandwich is described as "Chicken sandwich on rye bread + cheese + lettuce + tomato + bacon"
    Then the daily sale should be $12

@TestDailySales2
Scenario: If on a day I sell four sandwiches 
    When a chicken sandwich on white bread is ordered
    And customer orders cheese
    And customer orders cheese
    Then the sandwich will cost $5.50
    And the sandwich is described as "Chicken sandwich on white bread + cheese + cheese"
    When a chicken sandwich on rye bread is ordered
    And customer orders cheese
    And customer orders lettuce
    And customer orders tomato
    And customer orders bacon
    Then the sandwich will cost $6.50
    And the sandwich is described as "Chicken sandwich on rye bread + cheese + lettuce + tomato + bacon"
    When a chicken sandwich on white bread is ordered
    And customer orders tomato
    And customer orders BBQ
    And customer orders mayo
    Then the sandwich will cost $4.25
    And the sandwich is described as "Chicken sandwich on white bread + tomato + BBQ + mayo"
    When a PBJ sandwich on wheat bread is ordered
    Then the sandwich will cost $3.00
    And the sandwich is described as "PBJ sandwich on wheat bread"
    Then the daily sale should be $19.25

@TestDailySales3
Scenario: If on a day I sell three sandwiches with no toppings
    When a BLT sandwich on white bread is ordered
    Then the sandwich will cost $4.50
    And the sandwich is described as "BLT sandwich on white bread"
    When a PBJ sandwich on white bread is ordered
    Then the sandwich will cost $2.75
    And the sandwich is described as "PBJ sandwich on white bread"
    When a chicken sandwich on wheat bread is ordered
    Then the sandwich will cost $4.25
    And the sandwich is described as "Chicken sandwich on wheat bread"
    Then the daily sale should be $11.50