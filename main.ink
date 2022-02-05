// This is a sample implementation of a journal/inventory
// mechanic in Ink. 
//
// Copyright (C) 2022 PJ Garcin
// Authored by @rawktron
// Licensed under MIT license

// Put the inventory/journal into its own file for tidiness
INCLUDE journal.ink

// We'll start our story here
->Scary_Cave

=== Scary_Cave ===
// Set a variable indicating that we've been to this location so that there
// can be a journal entry about it.
VAR inv_scary_cave = true

Wizard: I sense the treasure lies somewhere within this cave. Nothing could possibly go wrong!

    * "You've doomed us."
    Wizard: Don't be superstitious, Bard. There's nothing in here.
        ** "Remember the last one?"
        Wizard: Ok, fine, one cave and one dragon. That doesn't mean they all have dragons--
-> Dragon
            
=== Dragon ===
A dragon roared from the darkness.

"What did I tell you!" shouted Bard.
    * "It's just a coincidence."
    "Don't just stand there! Do something!" yelled Bard. -> Roar
= Roar
The dragon roars and smoke billows from its nostrils.
    *** [Ignore it.]
    The dragon stomps around the cave.-> Roar
    *** [Cast shrinking spell]
    // Set a variable to indicate that you have the dragon in your possession.
    VAR inv_dragon = true
    A bolt of lightning streaks from Wizard's fingers and the dragon shrinks rapidly to the size of a salamander.
    "You've turned him into a newt!" Bard exclaimed.
    "And you were worried," Wizard scoffed, reaching down to pick up the tiny dragon. "You're coming with me little guy!"
    **** [Explore the cave] -> Cave

=== Cave ===
Deeper in the cave, Wizard and Bard are stopped in their tracks by a looming door. Its handle is encased in ice.

"Looks like that's the end of the line for us," said Bard.
* "You're always so negative."
    "Realistic. The word you're looking for is realistic."
    ->Cave
// This variable tests to see if you've actually read the journal entry, which lets you
// store clues or other important information within the journal entries themselves
* {Mini_Dragon > 0} "Come on little dragon. Show us what you're made of!"
    Wizard tickled the back of the miniature lizard. The tiny dragon squeaked out a steady stream of flame onto the locked door, slowly melting away the ice. Beyond a dark passage beckoned.
    ->Locked_Door 
// This is the key piece: it uses a "tunnel" to go to the Journal knot, and then
// specify that when it's done, come back to this current knot.
+ [View Journal] ->Journal->Cave

=== Locked_Door ===
Wizard, Bard, and their newly acquired flammable newt stepped into the blackness. Beyond, adventure awaited.

-> DONE