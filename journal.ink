// This is a sample implementation of a journal/inventory
// mechanic in Ink. 
//
// Copyright (C) 2022 PJ Garcin
// Authored by @rawktron
// Licensed under MIT license
//
// Inside this file, we just create knots for each journal/inventory entry
// Tunnels are key to this working

=== Mini_Dragon ===
Miniature Dragon

This once mighty beast is now a pocket-sized lizard. It still packs a powerful heating punch with its fire-breath though.
// We use this tunnel return function which allows this knot to be accessed from anywhere
// in our story, not just the journal
->->

=== The_Scary_Cave ===
The Scary Cave

This cave is like many other caves that always seem to house dragons.
->->

// The main Journal interface
=== Journal ===
The Bard unfurls a scroll from his pack. "This is the catalog of our adventures," he says.
+ {inv_scary_cave} [The Scary Cave] ->The_Scary_Cave->Journal
+ {inv_dragon} [Mini Dragon] ->Mini_Dragon->Journal
// Tunnel return brings you back to where you were in the story
+ [Return] ->->