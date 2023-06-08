%CDPlusPlus_Builder_Version_1.0.0

[top]
components : particle 

[particle] 
type : cell 
dim : (20,20,2)
delay : transport 
defaultDelayTime : 100 
border : wrapped 
% Extended von Neumann neighbourhood with two layers.
neighbors : particle(-2,0,0)     
neighbors : particle(-1,-1,0) particle(-1,0,0) particle(-1,1,0) 
neighbors : particle(0,-2,0) particle(0,-1,0) particle(0,0,0) particle(0,1,0) particle(0,2,0) 
neighbors : particle(1,-1,0) particle(1,0,0) particle(1,1,0) 
neighbors : particle(2,0,0)     
neighbors : particle(-2,0,1)     
neighbors : particle(-1,-1,1) particle(-1,0,1) particle(-1,1,1) 
neighbors : particle(0,-2,1) particle(0,-1,1) particle(0,0,1) particle(0,1,1) particle(0,2,1) 
neighbors : particle(1,-1,1) particle(1,0,1) particle(1,1,1) 
neighbors : particle(2,0,1)     
initialvalue : 0 
initialCellsValue : SimpleEnzymeKinetics20by20.val
localtransition : move-rule 
[move-rule]
% You are a water and there are four approaching particles.
rule : { 10*trunc((0,1,0)/10)+1 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((-1,0,0),10) = 2 and remainder((0,-1,0),10) = 3 and remainder((1,0,0),10) = 4 and ( (0,1,1) < (-1,0,1) and (0,1,1) < (0,-1,1) and (0,1,1) < (1,0,1) ) }
rule : { 10*trunc((-1,0,0)/10)+2 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((-1,0,0),10) = 2 and remainder((0,-1,0),10) = 3 and remainder((1,0,0),10) = 4 and ( (-1,0,1) < (0,1,1) and (-1,0,1) < (0,-1,1) and (-1,0,1) < (1,0,1) ) }
rule : { 10*trunc((0,-1,0)/10)+3 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((-1,0,0),10) = 2 and remainder((0,-1,0),10) = 3 and remainder((1,0,0),10) = 4 and ( (0,-1,1) < (0,1,1) and (0,-1,1) < (-1,0,1) and (0,-1,1) < (1,0,1) ) }
rule : { 10*trunc((1,0,0)/10)+4 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((-1,0,0),10) = 2 and remainder((0,-1,0),10) = 3 and remainder((1,0,0),10) = 4 and ( (1,0,1) < (0,1,1) and (1,0,1) < (-1,0,1) and (1,0,1) < (0,-1,1) ) }
% You are a water and there are three approaching particles but the east is not approaching.
rule : { 10*trunc((-1,0,0)/10)+2 } 100 { (0,0,0) = 0 and remainder((-1,0,0),10) = 2 and remainder((0,-1,0),10) = 3 and remainder((1,0,0),10) = 4 and ( (-1,0,1) < (0,-1,1) and (-1,0,1) < (1,0,1) ) }
rule : { 10*trunc((0,-1,0)/10)+3 } 100 { (0,0,0) = 0 and remainder((-1,0,0),10) = 2 and remainder((0,-1,0),10) = 3 and remainder((1,0,0),10) = 4 and ( (0,-1,1) < (-1,0,1) and (0,-1,1) < (1,0,1) ) }
rule : { 10*trunc((1,0,0)/10)+4 } 100 { (0,0,0) = 0 and remainder((-1,0,0),10) = 2 and remainder((0,-1,0),10) = 3 and remainder((1,0,0),10) = 4 and ( (1,0,1) < (-1,0,1) and (1,0,1) < (0,-1,1) ) }
% You are a water and there are three approaching particles but the north is not approaching.
rule : { 10*trunc((0,1,0)/10)+1 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((0,-1,0),10) = 3 and remainder((1,0,0),10) = 4 and ( (0,1,1) < (0,-1,1) and (0,1,1) < (1,0,1) ) }
rule : { 10*trunc((0,-1,0)/10)+3 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((0,-1,0),10) = 3 and remainder((1,0,0),10) = 4 and ( (0,-1,1) < (0,1,1) and (0,-1,1) < (1,0,1) ) }
rule : { 10*trunc((1,0,0)/10)+4 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((0,-1,0),10) = 3 and remainder((1,0,0),10) = 4 and ( (1,0,1) < (0,1,1) and (1,0,1) < (0,-1,1) ) }
% You are a water and there are three approaching particles but the west is not approaching.
rule : { 10*trunc((0,1,0)/10)+1 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((-1,0,0),10) = 2 and remainder((1,0,0),10) = 4 and ( (0,1,1) < (-1,0,1) and (0,1,1) < (1,0,1) ) }
rule : { 10*trunc((-1,0,0)/10)+2 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((-1,0,0),10) = 2 and remainder((1,0,0),10) = 4 and ( (-1,0,1) < (0,1,1) and (-1,0,1) < (1,0,1) ) }
rule : { 10*trunc((1,0,0)/10)+4 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((-1,0,0),10) = 2 and remainder((1,0,0),10) = 4 and ( (1,0,1) < (0,1,1) and (1,0,1) < (-1,0,1) ) }
% You are a water and there are three approaching particles but the south is not approaching.
rule : { 10*trunc((0,1,0)/10)+1 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((-1,0,0),10) = 2 and remainder((0,-1,0),10) = 3 and ( (0,1,1) < (-1,0,1) and (0,1,1) < (0,-1,1) ) }
rule : { 10*trunc((-1,0,0)/10)+2 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((-1,0,0),10) = 2 and remainder((0,-1,0),10) = 3 and ( (-1,0,1) < (0,1,1) and (-1,0,1) < (0,-1,1) ) }
rule : { 10*trunc((0,-1,0)/10)+3 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((-1,0,0),10) = 2 and remainder((0,-1,0),10) = 3 and ( (0,-1,1) < (0,1,1) and (0,-1,1) < (-1,0,1) ) }
% You are a water and there are two approaching particles, from the west and south.
rule : { 10*trunc((0,-1,0)/10)+3 } 100 { (0,0,0) = 0 and remainder((0,-1,0),10) = 3 and remainder((1,0,0),10) = 4 and (0,-1,1) < (1,0,1) }
rule : { 10*trunc((1,0,0)/10)+4 } 100 { (0,0,0) = 0 and remainder((0,-1,0),10) = 3 and remainder((1,0,0),10) = 4 and (1,0,1) < (0,-1,1) }
% You are a water and there are two approaching particles, from the north and south.
rule : { 10*trunc((-1,0,0)/10)+2 } 100 { (0,0,0) = 0 and remainder((-1,0,0),10) = 2 and remainder((1,0,0),10) = 4 and (-1,0,1) < (1,0,1) }
rule : { 10*trunc((1,0,0)/10)+4 } 100 { (0,0,0) = 0 and remainder((-1,0,0),10) = 2 and remainder((1,0,0),10) = 4 and (1,0,1) < (-1,0,1) }
% You are a water and there are two approaching particles, from the north and west.
rule : { 10*trunc((-1,0,0)/10)+2 } 100 { (0,0,0) = 0 and remainder((-1,0,0),10) = 2 and remainder((0,-1,0),10) = 3 and (-1,0,1) < (0,-1,1) }
rule : { 10*trunc((0,-1,0)/10)+3 } 100 { (0,0,0) = 0 and remainder((-1,0,0),10) = 2 and remainder((0,-1,0),10) = 3 and (0,-1,1) < (-1,0,1) }
% You are a water and there are two approaching particles, from the east and south.
rule : { 10*trunc((0,1,0)/10)+1 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((1,0,0),10) = 4 and (0,1,1) < (1,0,1) }
rule : { 10*trunc((1,0,0)/10)+4 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((1,0,0),10) = 4 and (1,0,1) < (0,1,1) }
% You are a water and there are two approaching particles, from the east and west.
rule : { 10*trunc((0,1,0)/10)+1 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((0,-1,0),10) = 3 and (0,1,1) < (0,-1,1) }
rule : { 10*trunc((0,-1,0)/10)+3 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((0,-1,0),10) = 3 and (0,-1,1) < (0,1,1) }
% You are a water and there are two approaching particles, from the east and north.
rule : { 10*trunc((0,1,0)/10)+1 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((-1,0,0),10) = 2 and (0,1,1) < (-1,0,1) }
rule : { 10*trunc((-1,0,0)/10)+2 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 and remainder((-1,0,0),10) = 2 and (-1,0,1) < (0,1,1) }
% You are a water and there are one approaching particle from the east.
rule : { 10*trunc((0,1,0)/10)+1 } 100 { (0,0,0) = 0 and remainder((0,1,0),10) = 1 }
% You are a water and there are one approaching particle from the north.
rule : { 10*trunc((-1,0,0)/10)+2 } 100 { (0,0,0) = 0 and remainder((-1,0,0),10) = 2 }
% You are a water and there are one approaching particle from the west.
rule : { 10*trunc((0,-1,0)/10)+3 } 100 { (0,0,0) = 0 and remainder((0,-1,0),10) = 3 }
% You are a water and there are one approaching particle from the south.
rule : { 10*trunc((1,0,0)/10)+4 } 100 { (0,0,0) = 0 and remainder((1,0,0),10) = 4 }
% You are a water and there are no approaching particles.
rule : 0 100 { (0,0,0) = 0 }
% You are a west moving particle and the cell in front of you is water and there are three other approaching particles to the water.
rule : 0 100 { (remainder((0,0,0),10) = 1 and (0,-1,0) = 0) and remainder((-1,-1,0),10) = 2 and remainder((0,-2,0),10) = 3 and remainder((1,-1,0),10) = 4 and ( (0,0,1) < (-1,-1,1) and (0,0,1) < (0,-2,1) and (0,0,1) < (1,-1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 1 and (0,-1,0) = 0) and remainder((-1,-1,0),10) = 2 and remainder((0,-2,0),10) = 3 and remainder((1,-1,0),10) = 4 and ( (0,0,1) > (-1,-1,1) or (0,0,1) > (0,-2,1) or (0,0,1) > (1,-1,1) ) }
% You are a west moving particle and the cell in front of you is water and there are two other approaching particles to the water, from the west and south.
rule : 0 100 { (remainder((0,0,0),10) = 1 and (0,-1,0) = 0) and remainder((0,-2,0),10) = 3 and remainder((1,-1,0),10) = 4 and ( (0,0,1) < (0,-2,1) and (0,0,1) < (1,-1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 1 and (0,-1,0) = 0) and remainder((0,-2,0),10) = 3 and remainder((1,-1,0),10) = 4 and ( (0,0,1) > (0,-2,1) or ( 0,0,1) > (1,-1,1) ) }
% You are a west moving particle and the cell in front of you is water and there are two other approaching particles to the water, from the north and south.
rule : 0 100 { (remainder((0,0,0),10) = 1 and (0,-1,0) = 0) and remainder((-1,-1,0),10) = 2 and remainder((1,-1,0),10) = 4 and ( (0,0,1) < (-1,-1,1) and (0,0,1) < (1,-1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 1 and (0,-1,0) = 0) and remainder((-1,-1,0),10) = 2 and remainder((1,-1,0),10) = 4 and ( (0,0,1) > (-1,-1,1) or ( 0,0,1) > (1,-1,1) ) }
% You are a west moving particle and the cell in front of you is water and there are two other approaching particles to the water, from the north and west.
rule : 0 100 { (remainder((0,0,0),10) = 1 and (0,-1,0) = 0) and remainder((-1,-1,0),10) = 2 and remainder((0,-2,0),10) = 3 and ( (0,0,1) < (-1,-1,1) and (0,0,1) < (0,-2,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 1 and (0,-1,0) = 0) and remainder((-1,-1,0),10) = 2 and remainder((0,-2,0),10) = 3 and ( (0,0,1) > (-1,-1,1) or ( 0,0,1) > (0,-2,1) ) }
% You are a west moving particle and the cell in front of you is water and there is one approaching particle to the water from the north.
rule : 0 100 { (remainder((0,0,0),10) = 1 and (0,-1,0) = 0) and remainder((-1,-1,0),10) = 2 and ( (0,0,1) < (-1,-1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 1 and (0,-1,0) = 0) and remainder((-1,-1,0),10) = 2 and ( (0,0,1) > (-1,-1,1) ) }
% You are a west moving particle and the cell in front of you is water and there is one approaching particle to the water from the west.
rule : 0 100 { (remainder((0,0,0),10) = 1 and (0,-1,0) = 0) and remainder((0,-2,0),10) = 3 and ( (0,0,1) < (0,-2,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 1 and (0,-1,0) = 0) and remainder((0,-2,0),10) = 3 and ( (0,0,1) > (0,-2,1) ) }
% You are a west moving particle and the cell in front of you is water and there is one approaching particle to the water from the south.
rule : 0 100 { (remainder((0,0,0),10) = 1 and (0,-1,0) = 0) and remainder((1,-1,0),10) = 4 and ( (0,0,1) < (1,-1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 1 and (0,-1,0) = 0) and remainder((1,-1,0),10) = 4 and ( (0,0,1) > (1,-1,1) ) }
% You are a west moving particle and the cell in front of you is water and there are no approaching particles.
rule : 0 100 { (remainder((0,0,0),10) = 1 and (0,-1,0) = 0) }
% You are a south moving particle and the cell in front of you is water and there are three other approaching particles to the water.
rule : 0 100 { (remainder((0,0,0),10) = 2 and (1,0,0) = 0) and remainder((1,1,0),10) = 1 and remainder((1,-1,0),10) = 3 and remainder((2,0,0),10) = 4 and ( (0,0,1) < (1,1,1) and (0,0,1) < (1,-1,1) and (0,0,1) < (2,0,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 2 and (1,0,0) = 0) and remainder((1,1,0),10) = 1 and remainder((1,-1,0),10) = 3 and remainder((2,0,0),10) = 4 and ( (0,0,1) > (1,1,1) or ( 0,0,1) > (1,-1,1) or ( 0,0,1) > (2,0,1) ) }
% You are a south moving particle and the cell in front of you is water and there are two other approaching particles to the water, from the west and south.
rule : 0 100 { (remainder((0,0,0),10) = 2 and (1,0,0) = 0) and remainder((1,-1,0),10) = 3 and remainder((2,0,0),10) = 4 and ( (0,0,1) < (1,-1,1) and (0,0,1) < (2,0,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 2 and (1,0,0) = 0) and remainder((1,-1,0),10) = 3 and remainder((2,0,0),10) = 4 and ( (0,0,1) > (1,-1,1) or (0,0,1) > (2,0,1) ) }
% You are a south moving particle and the cell in front of you is water and there are two other approaching particles to the water, from the east and south.
rule : 0 100 { (remainder((0,0,0),10) = 2 and (1,0,0) = 0) and remainder((1,1,0),10) = 1 and remainder((2,0,0),10) = 4 and ( (0,0,1) < (1,1,1) and (0,0,1) < (2,0,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 2 and (1,0,0) = 0) and remainder((1,1,0),10) = 1 and remainder((2,0,0),10) = 4 and ( (0,0,1) > (1,1,1) or (0,0,1) > (2,0,1) ) }
% You are a south moving particle and the cell in front of you is water and there are two other approaching particles to the water, from the east and west.
rule : 0 100 { (remainder((0,0,0),10) = 2 and (1,0,0) = 0) and remainder((1,1,0),10) = 1 and remainder((1,-1,0),10) = 3 and ( (0,0,1) < (1,1,1) and (0,0,1) < (1,-1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 2 and (1,0,0) = 0) and remainder((1,1,0),10) = 1 and remainder((1,-1,0),10) = 3 and ( (0,0,1) > (1,1,1) or (0,0,1) > (1,-1,1) ) }
% You are a south moving particle and the cell in front of you is water and there is one approaching particle to the water from the east.
rule : 0 100 { (remainder((0,0,0),10) = 2 and (1,0,0) = 0) and remainder((1,1,0),10) = 1 and ( (0,0,1) < (1,1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 2 and (1,0,0) = 0) and remainder((1,1,0),10) = 1 and ( (0,0,1) > (1,1,1) ) }
% You are a south moving particle and the cell in front of you is water and there is one approaching particle to the water from the west.
rule : 0 100 { (remainder((0,0,0),10) = 2 and (1,0,0) = 0) and remainder((1,-1,0),10) = 3 and ( (0,0,1) < (1,-1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 2 and (1,0,0) = 0) and remainder((1,-1,0),10) = 3 and ( (0,0,1) > (1,-1,1) ) }
% You are a south moving particle and the cell in front of you is water and there is one approaching particle to the water from the south.
rule : 0 100 { (remainder((0,0,0),10) = 2 and (1,0,0) = 0) and remainder((2,0,0),10) = 4 and ( (0,0,1) < (2,0,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 2 and (1,0,0) = 0) and remainder((2,0,0),10) = 4 and ( (0,0,1) > (2,0,1) ) }
% You are a south moving particle and the cell in front of you is water and there are no approaching particles.
rule : 0 100 { (remainder((0,0,0),10) = 2 and (1,0,0) = 0) }
% You are an east moving particle and the cell in front of you is water and there are three other approaching particles to the water.
rule : 0 100 { (remainder((0,0,0),10) = 3 and (0,1,0) = 0) and remainder((0,2,0),10) = 1 and remainder((-1,1,0),10) = 3 and remainder((1,1,0),10) = 4 and ( (0,0,1) < (0,2,1) and (0,0,1) < (-1,1,1) and (0,0,1) < (1,1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 3 and (0,1,0) = 0) and remainder((0,2,0),10) = 1 and remainder((-1,1,0),10) = 3 and remainder((1,1,0),10) = 4 and ( (0,0,1) > (0,2,1) or ( 0,0,1) > (-1,1,1) or ( 0,0,1) > (1,1,1) ) }
% You are an east moving particle and the cell in front of you is water and there are two other approaching particles to the water, from the north and south.
rule : 0 100 { (remainder((0,0,0),10) = 3 and (0,1,0) = 0) and remainder((-1,1,0),10) = 2 and remainder((1,1,0),10) = 4 and ( (0,0,1) < (-1,1,1) and (0,0,1) < (1,1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 3 and (0,1,0) = 0) and remainder((-1,1,0),10) = 2 and remainder((1,1,0),10) = 4 and ( (0,0,1) > (-1,1,1) or ( 0,0,1) > (1,1,1) ) }
% You are an east moving particle and the cell in front of you is water and there are two other approaching particles to the water, from the east and south.
rule : 0 100 { (remainder((0,0,0),10) = 3 and (0,1,0) = 0) and remainder((0,2,0),10) = 1 and remainder((1,1,0),10) = 4 and ( (0,0,1) < (0,2,1) and (0,0,1) < (1,1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 3 and (0,1,0) = 0) and remainder((0,2,0),10) = 1 and remainder((1,1,0),10) = 4 and ( (0,0,1) > (0,2,1) or ( 0,0,1) > (1,1,1) ) }
% You are an east moving particle and the cell in front of you is water and there are two other approaching particles to the water, from the east and north.
rule : 0 100 { (remainder((0,0,0),10) = 3 and (0,1,0) = 0) and remainder((0,2,0),10) = 1 and remainder((-1,1,0),10) = 2 and ( (0,0,1) < (0,2,1) and (0,0,1) < (-1,1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 3 and (0,1,0) = 0) and remainder((0,2,0),10) = 1 and remainder((-1,1,0),10) = 2 and ( (0,0,1) > (0,2,1) or ( 0,0,1) > (-1,1,1) ) }
% You are an east moving particle and the cell in front of you is water and there is one approaching particle to the water from the east.
rule : 0 100 { (remainder((0,0,0),10) = 3 and (0,1,0) = 0) and remainder((0,2,0),10) = 1 and ( (0,0,1) < (0,2,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 3 and (0,1,0) = 0) and remainder((0,2,0),10) = 1 and ( (0,0,1) > (0,2,1) ) }
% You are an east moving particle and the cell in front of you is water and there is one approaching particle to the water from the north.
rule : 0 100 { (remainder((0,0,0),10) = 3 and (0,1,0) = 0) and remainder((-1,1,0),10) = 2 and ( (0,0,1) < (-1,1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 3 and (0,1,0) = 0) and remainder((-1,1,0),10) = 2 and ( (0,0,1) > (-1,1,1) ) }
% You are an east moving particle and the cell in front of you is water and there is one approaching particle to the water from the south.
rule : 0 100 { (remainder((0,0,0),10) = 3 and (0,1,0) = 0) and remainder((1,1,0),10) = 4 and ( (0,0,1) < (1,1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 3 and (0,1,0) = 0) and remainder((1,1,0),10) = 4 and ( (0,0,1) > (1,1,1) ) }
% You are an east moving particle and the cell in front of you is water and there are no approaching particles.
rule : 0 100 { (remainder((0,0,0),10) = 3 and (0,1,0) = 0) }
% You are a north moving particle and the cell in front of you is water and there are three other approaching particles to the water.
rule : 0 100 { (remainder((0,0,0),10) = 4 and (-1,0,0) = 0) and remainder((-1,1,0),10) = 1 and remainder((-2,0,0),10) = 2 and remainder((-1,-1,0),10) = 3 and ( (0,0,1) < (-1,1,1) and (0,0,1) < (-2,0,1) and (0,0,1) < (-1,-1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 4 and (-1,0,0) = 0) and remainder((-1,1,0),10) = 1 and remainder((-2,0,0),10) = 2 and remainder((-1,-1,0),10) = 3 and ( (0,0,1) > (-1,1,1) or ( 0,0,1) > (-2,0,1) or ( 0,0,1) > (-1,-1,1) ) }
% You are a north moving particle and the cell in front of you is water and there are two other approaching particles to the water, from the north and west.
rule : 0 100 { (remainder((0,0,0),10) = 4 and (-1,0,0) = 0) and remainder((-2,0,0),10) = 2 and remainder((-1,-1,0),10) = 3 and ( (0,0,1) < (-2,0,1) and (0,0,1) < (-1,-1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 4 and (-1,0,0) = 0) and remainder((-2,0,0),10) = 2 and remainder((-1,-1,0),10) = 3 and ( (0,0,1) > (-2,0,1) or ( 0,0,1) > (-1,-1,1) ) }
% You are a north moving particle and the cell in front of you is water and there are two other approaching particles to the water, from the east and west.
rule : 0 100 { (remainder((0,0,0),10) = 4 and (-1,0,0) = 0) and remainder((-1,1,0),10) = 1 and remainder((-1,-1,0),10) = 3 and ( (0,0,1) < (-1,1,1) and (0,0,1) < (-1,-1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 4 and (-1,0,0) = 0) and remainder((-1,1,0),10) = 1 and remainder((-1,-1,0),10) = 3 and ( (0,0,1) > (-1,1,1) or ( 0,0,1) > (-1,-1,1) ) }
% You are a north moving particle and the cell in front of you is water and there are two other approaching particles to the water, from the east and north.
rule : 0 100 { (remainder((0,0,0),10) = 4 and (-1,0,0) = 0) and remainder((-1,1,0),10) = 1 and remainder((-2,0,0),10) = 2 and ( (0,0,1) < (-1,1,1) and (0,0,1) < (-2,0,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 4 and (-1,0,0) = 0) and remainder((-1,1,0),10) = 1 and remainder((-2,0,0),10) = 2 and ( (0,0,1) > (-1,1,1) or ( 0,0,1) > (-2,0,1) ) }
% You are a north moving particle and the cell in front of you is water and there is one approaching particle to the water from the east.
rule : 0 100 { (remainder((0,0,0),10) = 4 and (-1,0,0) = 0) and remainder((-1,1,0),10) = 1 and ( (0,0,1) < (-1,1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 4 and (-1,0,0) = 0) and remainder((-1,1,0),10) = 1 and ( (0,0,1) > (-1,1,1) ) }
% You are a north moving particle and the cell in front of you is water and there is one approaching particle to the water from the north.
rule : 0 100 { (remainder((0,0,0),10) = 4 and (-1,0,0) = 0) and remainder((-2,0,0),10) = 2 and ( (0,0,1) < (-2,0,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 4 and (-1,0,0) = 0) and remainder((-2,0,0),10) = 2 and ( (0,0,1) > (-2,0,1) ) }
% You are a north moving particle and the cell in front of you is water and there is one approaching particle to the water from the west.
rule : 0 100 { (remainder((0,0,0),10) = 4 and (-1,0,0) = 0) and remainder((-1,-1,0),10) = 3 and ( (0,0,1) < (-1,-1,1) ) }
rule : { round( uniform(10*trunc((0,0,0)/10)+0.5000001,10*trunc((0,0,0)/10)+4.4999999) ) } 100 { (remainder((0,0,0),10) = 4 and (-1,0,0) = 0) and remainder((-1,-1,0),10) = 3 and ( (0,0,1) > (-1,-1,1) ) }
% You are a north moving particle and the cell in front of you is water and there are no approaching particles.
rule : 0 100 { (remainder((0,0,0),10) = 4 and (-1,0,0) = 0) }
% You are a west moving particle and there is a particle in front of you.
rule : { round( uniform(20.5000001,24.4999999) ) } 100 { ((0,0,0) = 21 and (0,-1,0) != 0)  }
rule : { round( uniform(40.5000001,44.4999999) ) } 100 { ((0,0,0) = 31 and trunc((0,-1,0)/10) = 2 and random < 0.1)  }
rule : { round( uniform(30.5000001,34.4999999) ) } 100 { ((0,0,0) = 31 and (0,-1,0) != 0)  }
rule : { round( uniform(40.5000001,44.4999999) ) } 100 { ((0,0,0) = 41 and (0,-1,0) != 0)  }
% You are a south moving particle and there is a particle in front of you.
rule : { round( uniform(20.5000001,24.4999999) ) } 100 { ((0,0,0) = 22 and (1,0,0) != 0)  }
rule : { round( uniform(40.5000001,44.4999999) ) } 100 { ((0,0,0) = 32 and trunc((1,0,0)/10) = 2 and random < 0.1)  }
rule : { round( uniform(30.5000001,34.4999999) ) } 100 { ((0,0,0) = 32 and (1,0,0) != 0 )  }
rule : { round( uniform(40.5000001,44.4999999) ) } 100 { ((0,0,0) = 42 and (1,0,0) != 0 )  }
% You are an east moving particle and there is a particle in front of you.
rule : { round( uniform(20.5000001,24.4999999) ) } 100 { ((0,0,0) = 23 and (0,1,0) != 0)  }
rule : { round( uniform(40.5000001,44.4999999) ) } 100 { ((0,0,0) = 33 and trunc((0,1,0)/10) = 2 and random < 0.1)  }
rule : { round( uniform(30.5000001,34.4999999) ) } 100 { ((0,0,0) = 33 and (0,1,0) != 0)  }
rule : { round( uniform(40.5000001,44.4999999) ) } 100 { ((0,0,0) = 43 and (0,1,0) != 0)  }
% You are a north moving particle and there is a particle in front of you.
rule : { round( uniform(20.5000001,24.4999999) ) } 100 { ((0,0,0) = 24 and (-1,0,0) != 0)  }
rule : { round( uniform(40.5000001,44.4999999) ) } 100 { ((0,0,0) = 34 and trunc((0,-1,0)/10) = 2 and random < 0.1)  }
rule : { round( uniform(30.5000001,34.4999999) ) } 100 { ((0,0,0) = 34 and (-1,0,0) != 0 )  }
rule : { round( uniform(40.5000001,44.4999999) ) } 100 { ((0,0,0) = 44 and (-1,0,0) != 0 )  }
rule : { (0,0,0) } 100 { cellPos(2) = 1 }
rule : -1 100 { t }
