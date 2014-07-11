% Shame Level and intoxication levels need to be added 
% Rooms
room(bego1).
room(bego2).
room(bego3).
room(uraniumPlant).
room(bar).
room(outside).
room(restroom).
room(semiCab). % Where bread is buttered!
room(kitchen).
room(cellar).
room(snakePit). % rattlesnake roundup
room(favreShrine).

% connections between rooms (one sided)
door(outside,bego1).
door(outside,bego2).
door(outside,bego3).
door(outside,uraniumPlant).
door(outside,snakePit).
door(outside,semiCab).
door(bar,restroom).
door(bar,cellar).
door(bar,kitchen).
door(bego1,outside).
door(bego2,outside).
door(bego2,favreShrine).
door(bego3,outside).
door(restroom,bar).
door(kitchen,bar).
door(cellar,bar).
door(snakePit,outside).
door(favreShrine,bego2).
door(semiCab,outside).

% Items found in rooms
location(beer,bar).
location(rockyMoutainOysters,bar).
location(fishFry,bar).