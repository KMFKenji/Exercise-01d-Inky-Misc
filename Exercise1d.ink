/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/

// Function to determine the time of day
=== function time_of_day(time)
{
    if (time == 0) {
        ~ return "Morning"
    } else if (time == 1) {
        ~ return "Afternoon"
    } else {
        ~ return "Night"
    }
}

// Start of the story
-> start

=== start ===
You wake up on a mysterious beach. The sun is rising.
It's {time_of_day(0)}.

What do you do?
* Look around -> look_around
* Walk into the forest -> forest
* Stay and build a shelter -> shelter

=== look_around ===
You see footprints in the sand leading toward the trees.
* Follow the footprints -> footprints
* Ignore them and explore the shore -> explore_shore

=== footprints ===
You follow the footprints and find an old hut.
Inside, you see a dusty journal.
* Read the journal -> read_journal
* Leave the hut -> forest

=== read_journal ===
The journal speaks of hidden treasure buried nearby.
Should you search for it?
* Yes -> search_treasure
* No -> forest

=== search_treasure ===
You start digging, but it takes time...
{time_of_day(2)} falls as you keep searching.

-> loop_treasure

=== loop_treasure ===
~ temp attempts = 0
{ 
    - (attempts < 3): 
        You dig and dig... but find nothing yet. Try again?
        * Yes -> loop_treasure
        * No, give up -> forest
        ~ attempts += 1
    - else: 
        Finally! You uncover a hidden chest filled with gold.
        -> end
}

=== forest ===
The trees are thick and the air is humid. You hear rustling nearby.
* Investigate the sound -> investigate
* Ignore it and keep walking -> end

=== investigate ===
A wild animal jumps out! You barely escape back to the beach.
What will you do now?
* Try again -> forest
* Stay on the beach -> shelter

=== shelter ===
You decide to stay and build a shelter.
{time_of_day(1)} turns to {time_of_day(2)} as you finish.
You survive the first day!

-> end

=== end ===
The adventure is over... for now.
