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
connect(X,Y) :- door(X,Y).
connect(Y,X) :- door(Y,X).

% Items found in rooms
location(beer,bar).
location(rockyMoutainOysters,bar).
location(fishFry,bar).


% Initial Player Location
here(outside).

% Tells us the player's location
look :-
	here(Place),
	write('You are in the '), write(Place),nl,
	write('You can see: '), nl,
	list_things(Place),
	write('You can go to: '), nl,
	list_connections(Place).