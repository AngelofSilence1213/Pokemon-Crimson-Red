# Shin Pokémon Red and Blue

Version 1.12

Download the IPS patch file of the version you want and apply it to its respective USA rom.  

Always apply patches to a fresh USA ROM or else strange glitches will occur.  

Important Note: If you are using a save file from a previous version, you might be blocked by invisible walls upon loading the game.
To fix this, you must use the Softlock Warp detailed below to teleport back to Palette Town.

The master github branch will now be used for subsequent beta builds.
Please refer to the backup branches for the last stable version.

This is a rom hack of pokemon red & blue based on the Pret team's disassembly.  
It's a mostly-vanilla hack that focuses on fixing game engine bugs and oversights from the original game.  
Additionally, trainer AI routines are improved and multiple quality-of-life improvements have been added.  
Think of it as what the Nintendo Virtual Console re-release of red & blue might have been (plus a few extra goodies).  

Don't like the non-vanilla changes? Prefer only the bugfixes and AI improvements? Want a codebase from which to launch your own rom hack?
Then the [Lite branch](https://github.com/jojobear13/shinpokered/tree/lite) is what you want. Head on over and start compiling.

![Title Screen](/screenshots/bgb00001.bmp?raw=true)

![Rematches](/screenshots/bgb00003.bmp?raw=true)

![TrainerAI, Shiny SGB palette, & Exp Bar](/screenshots/bgb00013.bmp?raw=true)

![Marts](/screenshots/bgb00011.bmp?raw=true)

![Shiny Animation](/screenshots/bgb00012.bmp?raw=true)

![Girl Trainer](/screenshots/bgb00015.bmp?raw=true)


#Summary
-----------

- Tons of bugs, glitches, and oversights fixed
- Trainers are made more difficult not by increasing their team levels, but by doing the following:
  - Vastly improving the default ai routines
  - Giving them access to stat experience (only in "Set" style)
  - Giving them above-average random DVs
  - Trainers of a smart-enough trainer class will make use of basic pkmn switching
  - Badge boosts are not applied in trainer battles (only in "Set" style)
- One of OAK's aides will toggle on/off scaling of trainer rosters to your level (evolving them if applicable)
- All 151 pkmn are available in one version
  - Though difficult for a select few, each pkmn can be obtained multiple times
  - The uniqueness between red & blue is still preserved in encounter rarity
- You can play as a boy or a girl
- You can hunt for shiny pokemon
  - DVs are checked to see if a pokemon would be shiny in the gen 2 games
  - If a pokemon has shiny DVs, then it will play the Reflect animation when entering battle
  - If playing on a super gameboy, shiny pkmn will have a palette swap on the status screen and also change color in battle
- Minor quality-of-life improvements during battle
  - When a when a box is filled (either via catching or depositing a pokemon), notification text is displayed
  - Exp bar in battle
  - A pkmn plays its cry to signal the last turn of using a trapping move like wrap/clamp/etc
  - The safari zone mechanics run off level instead of speed and safari balls have a boosted catch rate
  - Press Select to play a mon's cry if it's already listed as owned in the pokedex
- Minor quality-of-life improvements outside of battle
  - Softlock Warp: instantly teleport back to your mom's house if you get stuck (see instructions in detailed changes below)
  - Running Shoes: Hold B to double your speed when walking, surfing, and biking
  - Press SELECT to use HMs based on proper context (must have the right badge and the move on one of your pkmn)
  - Press Select while holding A to automatically get on/off your bike or use the best rod in your inventory 
  - Move relearner and deleter
  - Nearly all trainers can be rematched just by talking to them a 2nd time after their most recent defeat
  - Due to on-demand rematches, you could do a pseudo-"new game+" by boxing your pkmn and rematching everyone in order
  - All TMs can be repurchased as they are strategically scattered across all the Kanto pokemarts
  - Hold select and enter the status screen to print a 'mons stat exp
  - Hold start and enter the status screen to print a 'mons DVs
  - Slot machine bugs and oversights fixed so now you can actually win big
  - A pokemon having Pay Day will tip you off to the lucky slot machine and when it's in a special payout mode
  - An NPC will pay COINS for showing him pokemon as an alternative to slots
  - After the elite-4, a new vendor opens up in celadon allowing the purchase of normally unique items
  - After the elite-4, there is an NPC that generates a trainer battle with a randomized 6-pkmn roster
  - There's a tournament being held in the SS Anne's kitchen after the elite 4 are beaten
  - CUT not needed to get to Lt. Surge and Erika (a blocking event replaces the Vermilion shrub)
  - Added some special trainer battles as fun little easter eggs
- Minor learnset changes that make things more convenient while still staying gen-1 legal
  - Stone evolutions regain some level-up moves
  - Yellow-version move lists have been integrated
- Minimal changes to battle mechanics necessitated by AI improvements
  - Trapping move mechanics nerfed to prevent PP underflow glitch as well as stopping merciless, unwinnable abuse by AI trainers
	- They now end, ending the turn with no further attack, if the target switches pkmn
	- Upon hitting, user's speed reduced 25% until recalculated through other mechanics
	- The user's Cry is played on the final turn of a trapping move to signal its end
  - Adjustment to the sleep condition
    - Sleep does not prevent choosing a move
	- Waking up from sleep does not waste the turn and the chosen move is used
- Compatible with original Gameboy hardware (DMG, Super, Pocket, Color, Advance, SP)
- Potentially compatible with Pokemon Stadium 1 & 2
- Might be possible to use a save from vanilla USA red/blue with this rom hack (save in RED's house before transferring over)


#Hack-Induced Bugfixes & Adjustments since last version:
-----------
- The surfboard now works with smart hm use. It just has to be in your bag
- Revamped instructions for compiling with new sprites


#New features & adjustments since last version:
-----------
- Playing on "Shift" style sets trainer stat exp back to zero and re-enables badge boosts during trainer battles
- Can't fish or surf in the bases of statues
- Can't use surf/teleport/escape rope to escape from trainer encounters
- Press Select while holding A to automatically get on/off your bike or use the best rod in your inventory


#Bugfixes:
-----------

- Battle engine fixes
  - Moves no longer have a default 1/256 chance to miss
  - Fixed freeze that occurs in defense stat scaling (def < 4 glitch)
  - Enemy ai ignores type effectiveness for moves that have zero power
     - prevents things like spamming agility against poison pkmn
  - Enemy ai ignores super-effectiveness for moves that do static amounts of damage
  - Fixed skipping move-learn on level-up glitch. 
     - when gaining multiple levels at a time, each in-between level is incrementally checked for moves learned
     - this prevents a pkmn from skipping learnable moves if gaining multiple levels in battle
	 - also does this when evolving via level-up for the new evolution's movelist
  - Burn & Paralyze stat penalties are now properly applied after Speed & Attack stats get updated/recalculated
  - Badge stat-ups don't get stacked anymore
  - The function that applies badge stat-ups now selectively boosts the correct stat when called during a stat-up/down effect
  - If player is frozen, the hyperbeam recharge bit is now cleared
     - now matches how enemy mon's recharge bit is cleared upon being frozen
     - this prevents getting stuck in a loop unable to do anything on your turn
  - Blaine will not use a healing item at full HP
  - Move slots cannot be rearranged when transformed (prevents acquiring glitch moves).
  - The BIRD type has been reinstated and renamed to TYPELESS. It acts as a universally neutral type (particularly for Struggle)
  - AI trainers have priority on switching or using an item
  - AI type effectiveness function now takes type 1 and 2 into account together 
	 - Before AI would only look at the type it encountered first in a list search
     - AI will now treat a move as neutral if type 1 makes it supereffective but type 2 makes it not effective
  - Stat changes from burn and paralyze are applied when the ai sends out a pkmn with those conditions
  - AI routine #2 (prioritize buffing or use a status move) now activates on the 1st turn after sendout instead of the 2nd
  - New custom function for undoing the stat changes of burn and paralysis
    - undoing paralysis is accurate to within 0 to -3 points
    - undoing burn is accurate to within 0 to -1 point
  
- Move fixes
  - dire hit/focus energy now quadruples crit rate instead of quarters
  - sleep now normal-chance hits a pkmn recharging from hyperbeam, but has no effect if it's already status-effected
  - the fly/dig invulnerability bit is cleared when a pkmn hurts itself from confusion or is fully paralyzed
  - psywave damage is always min 1 be it an opponent or yourself (prevents desync)
  - Substitute fixes
    - all hp drain moves (including dream eater and leech seed) miss against substitute
    - substitute will not work if it would bring you to exactly 0 hp
    - zero power moves that inflict stat-downs, sleep, or paralyze will not affect a substitute
    - the confusion side-effect of damaging moves is blocked by a substitute
	- recoil damage from jump kicks or hurting oneself in confusion is now applied to user's substitute
  - healing moves work with restoring exactly 255 or 511 hp 
  - light screen and reflect now have a cap of 999
  - Haze removing sleep/freeze will not prevent a multi-turn move from getting stuck
     - Fixed by allowing sleeping/frozen pkmn to use a move after haze restores them
     - on the plus size, haze now restores both opponent and user's status conditions as was intended in gen 1
  - Haze resets the enemy and player toxic counter
  - Rest now does the following:
     - clears the toxic bit and toxic counter
     - undoes the stat changes of burn and paralysis
  - fixed-damage moves (seismic toss, dragon rage, etc) can no longer critically hit
  - fixed-damage moves now obey type immunities
  - Transform will no longer copy the opponent's Transform move. It's swapped-out for Struggle
  - Struggle is now TYPELESS so that it can always neutrally damage something
  - Metronome & mirror move will not increment PP if the user is transformed
     - This prevents adding PP to hidden dummy moves that prevent a pkmn from going into Struggle
     - This also prevents Disable from freezing the game by targeting a dummy move
  - Mirror Move is checked against partial trapping moves in a link battle to prevent desync
  - Bide's accumulated damage bytes are now both set to zero on an enemy faint in order to prevent desync
  - Jump Kick moves now do the correct recoil damage on a miss
  - The effects of Leech Seed and Toxic no longer stack
  - Trapping effects only clear the hyperbeam recharge bit on a hit, preventing its automatic use on a miss
  - Trapping move PP can no longer underflow due to an opponent switching pkmn
  - Raging and Thrashing no longer suffers from accuracy degradation
  - Breaking a substitute does not nullify explosion/self-destruct, hyper beam recharge, or recoil damage
  - Hyper beam must recharge if it knocks out the opposing pkmn
  - Bugfixes involving Counter:
    - works against BIRD type, which is now typeless and assigned only to STRUGGLE
    - To prevent desync, pressing B to get out of the move selection menu zeros-out the ram location for selected move & move power
    - last damage dealt is zeroed in these cases (also fixes some issues with Bide):
	  - it's the start of the round without a trapping move active (fixes most issues since Counter always goes second)
	  - player/enemy pkmn is fully paralyzed or after hurting itself in confusion
    - Crash damage from jump kicks and pkmn hurting itself cannot be Countered

- Misc. fixes
  - Great ball has a ball factor of 12 now
  - Cinnabar/seafoam islands coast glitch fixed (no more missingo or artificially loading pokemon data)
  - Stone evolutions cannot be triggered via level-up anymore
  - Catching a transformed pokemon no longer defaults to catching a ditto
  - Returning from the status screen when an opponent is in substitute/minimize no longer glitches the graphics
  - PP-up uses are disregarded when determining to use STRUGGLE if one or more moves are disabled
  - PC graphic restored to celadon hotel
  - A tile in cinnabar mansion 3f is slightly modified to prevent getting permanently stuck
  - A tile in cerulean cave 1f adjusted so there isn't a walkable cliff tile
  - Ether and elixer now account for PP-ups used when determining if move is at full PP
  - Vending machine now checks for the correct amount of money
  - Prevented byte overflow when determining the trash can with 2nd switch in vermillion gym
  - Hidden nugget in safari entrance now obtainable
  - EXP ALL should now dispense the correct exp if multiple pokemon take place in a battle
  - EXP ALL no longer counts fainted pokemon when dividing exp
  - Enemy DVs can no longer be manipulated by having it use transform multiple times
  - Fixed a bug where itemfinder can't locate objects with a zero x or y coord
  - After defeating the cerulean burglar rocket, the guard itself always moves to prevent getting stuck in the front door
  - Slot machine reel bug fixed
  - Fixed oversights in reel functionality to better match Gamfreak's intent
  - Surfboard bugfixes:
	  - cannot use the surfboard if being forced to ride the bicycle
	  - no longer freezes the game when using it from the item menu to get back on land
	  - the menu text will glitch a little, but only for a split-second and does not impact gameplay
  - The Full Heal used by the AI now undoes brn/par stat changes
  - Condition healing items (including using Full Restore at max hp) no longer reset all stats
    - Burn heal undoes the attack stat changes
    - Paralyze heal undoes the speed stat changes
    - Full restore at max hp undoes the stat changes of brn/par
  - Full Restore when used in battle to heal HP now undoes the stat changes of brn/par
  - No more ABCD glitched sprites when using teleport without a super gameboy
  - The lift key in the rocket hideout drops during the end of battle text like in Yellow-version
  - An unused bit is now used to determine the ghost marowak battle
  - Pokedoll is disallowed during ghost marowak battle
  - Can't use surf/teleport/escape rope to escape from trainer encounters
  - Can't fish or surf in the bases of statues


#TWEAKS:
-----------

- Fixed mistakes and made adjustments to the game text
  - When a pkmn is caught and fills the box, a reminder is printed that the box is full
  - Man in cinnabar won't mention raichu evolving
  - Koga correctly says soul badge increases speed
  - Lt. Surge correctly says thunder badge increases defense
  - Correct type effectiveness information & sfx should now be displayed when attacking dual-type pkmn
  - Viridian girl's notebook 2nd page revised for pkmn-catching effectiveness
  - Viridian blackboard BRN info corrected (BRN does not reduce speed)
  - Viridian Blackboard PAR info updated
  - Made cinnabar mansion notes more true to the original japanese text
  - TM 18 given an actual explanation 
  - New student in viridian school explains ohko moves
  - Cerulean badge-house guy has updated text
  - Prof. oak's speech plays the correct Nidorino cry
  - Text for using a TM/HM now refers to the "machine" rather than just "TM"
  - Fixed daycare man capitalization
  - Clarified "chem" to mean grade in chemistry
  - Fixed capitalization in safari zone entrance
  - PC has a text prompt to tell you if its full after depositing
  - Exp.all now prints one message when splitting exp instead of for each party member

- Adjustments to moves  
  - Stat-down moves no longer have a 25% miss chance in AI matches
  - Moves that hit multiple times in a turn now calculate damage and critical hits for each individual attack
  - Trapping moves nerfed big time to prevent the new AI from cheesing them:
    - Switching out of a trapping move ends it immediately and wastes its user's turn (prevents PP underflow glitch too)
	- Each time a trapping move is used and hits, user's speed reduced 25% until recalculated through other mechanics
    - A pkmn plays its cry to signal the last turn of the trapping move
  - Ghost moves (i.e. just Lick) do 2x against psychic as was always intended
  - Pay Day upped to 8x multiplier instead of 2x
    - It's 5x in later generations, but amulet coin doesn't exist in gen 1. 8x is a compromise.
  - Changes to Bide
    - damage accumulation is done after taking a damaging hit instead of during turn execution (less room for glitches)
	- side effect: bide is buffed because multi-hit moves now add damage to bide for each of the 2 to 5 hits
	- changed to Typeless to play nicer with AI routine 3 (it ignores the type chart regardless)
  - Rest's sleep condition increased to 3 turns since attacking on wakeup is now allowed.
  - Acid armor's animation changed so that does not make its user disappear
  - Metronome now classified as a Typeless special damage move to play better with the AI

- Adjustment to stat mods, conditions, and items
  - Sleep does not prevent choosing a move
  - Waking up from sleep does not waste the turn and the chosen move is used
  - Badge stat-ups are now only applied in wild pokemon battles to give parity to enemy trainers
  - The effect of X Accuracy is no longer applied to one-hit K.O. moves (it originally made them auto-hit)
  - The limiter on vitamins is raised to a max of 62720 stat exp after the elite 4 have been beaten
  - Pkmn added to the player's party (either as a gift or in-game trade) have at the least DVs of 9,8,8,8
  - New item M.GENE: re-randomizes a pkmn's DVs to values of 9,8,8,8 or more.
  - Win 5 matches in a row against the random team NPC to get M.GENE items (leaving the area resets the win streak)
  - Upped the power of safari balls
  - Escaping in the safari zone is now based on level instead of speed
  
- Trainer ai routine #1 (recognition of stats, hp, and conditions) has been modified
  - using a move with a dream eater effect is heavily discouraged against non-sleeping opponents
  - using a move with a dream eater effect is slightly encouraged against a sleeping opponent
  - using a zero-power confusion effect move is heavily discouraged against confused opponents
  - moves that would miss against an active substitute are heavily discouraged
  - stat buff/debuffs are heavily discouraged if it would have no effect due to hitting the buff/debuff stage limit
  - heavily discourage double-using lightscreen, reflect, mist, substitute, focus energy, and leech seed
  - leech seed won't be used against grass pkmn
  - do not use moves that would be blocked by an active mist effect
  - rules for using healing moves:
    - heavily discourage healing if at max hp
	- slightly encourage healing if below 1/3 hp
	- slightly discourage healing if above 1/2 hp
  - heavily discourage using Counter against a non-applicable move
  - heavily discourage roar, teleport, & whirlwind
  - heavily discourage disable against a pkmn already disabled
  - Substitute discouraged if less that 1/4 hp remains
  - Rage is heavily discouraged
  - Will discourage using Haze if unstatus'd or has net-neutral or better stat mods
  - Will heavily discourage boosting defense against special, OHKO, or static-damaging attacks

- Trainer ai routine #3 (choosing effective moves) has been modified
  - It now heavily discourages moves that would have no effect due to type immunity
  - zero-power buffing/debuffing moves are randomly preferenced 12.5% of the time to spice things up
  - zero-power buffing/debuffing moves are randomly discouraged 50% of the time to let ai always have a damage option
  - OHKO moves are heavily discouraged if the ai pkmn is slower than the player pkmn (they would never hit)
  - Static damage moves are randomly preferenced 25% of the time to spice things up
  - Thunder Wave is not used against immune types
  - Poisoning moves discouraged against poison types

- Trainer ai routine #4 is no longer unused. It now does rudimentary trainer switching.
  - 25% chance to switch if active pkmn is below 1/3 HP
  - chance to switch based on power of incoming supereffective move
  - 12.5% chance to switch if a move is disabled
  - 12.5% chance to switch if afflicted with leech seed
  - 50% chance to switch if afflicted with toxic poison
  - 25% chance to switch if opponent is using a trapping move
  - 25% chance to switch if active pkmn is confused
  - on the lowest stat mod, 12.5% chance to switch per lowered stage
  
- Trainer ai routine #3 added to the following trainer classes
  - jr trainer M, jr trainer F, hiker, supernerd, engineer, lass, chief, bruno, brock, gentleman, agatha
- Trainer ai routine #4 added to the following trainer classes
  -lass, jr trainer m/f, pokemaniac, supernerd, hiker, engineer, beauty, psychic, rocker, tamer, birdkeeper, cooltrainer m/f, gentleman
  -prof.oak, chief, gym leaders, e4
  
- Trainer stat DVs are now randomly generated to a degree
  - Attack DV is between 9 and 15 and always odd-numbered
  - Defense, special, and speed DVs are between 8 and 15
  - HP DV is a minimum of 8 since attack DV is always odd-numbered
- Trainer AI battles now track which enemy pkmn have already been sent out, so allows for new functionality:
  - Trainer pkmn DVs are remembered between switching, and new ones won't be generated on every send-out
  - Trainer pkmn now have stat experience assigned to them that is scaled to their level
  - These are real DVs and statEXP values that utilize the existing enemy party_struct which is normally unused by trainer AI
- Special trainers, e4, and gym leaders are slightly adjusted in their item use
- Agatha & cooltrainers will not randomly switch since they now have ai routine 4
- Flags for dividing exp among active pokemon are now only reset after fainting an enemy pkmn
  - Originally these get reset every time the opponent send out a pkmn (even swithing)
  - Was never really noticed since most trainers never switch nor would have the opportunity
  - Changed based on user feedback since many trainers now try to switch
- There is an option to scale trainer rosters to the level of your 1st roster pkmn
  - Talk to the right aide in Oak's lab to toggle on/off
  - Enemy pkmn will evolve by level if applicable
  - Gym leaders and the E4 scale slightly higher than normal trainers
  - This is a good option to turn on for a pseudo-"New Game +" where you rematch all possible trainers in order
- Playing on "Shift" style sets trainer stat exp back to zero and re-enables badge boosts during trainer battles
  
- Adjustments to learnsets and base stats
  - Pokemon have gained their TMs and Moves from yellow
  - Kadabra & Alakazam can access Kinesis via the move relearner
  - Raichu gains some attacks back via level
  - Arcanine gains some attacks back via level
  - Ninetails gains some attacks back via level
  - Poliwrath gains some attacks back via level
  - Cloyster gains some attacks back via level
  - Starmie gains some attacks back via level
  - Exeggcutor gains some attacks back via level
  - Vileplume gains some attacks back via level
  - Victreebel gains some attacks back via level
  - Mewtwo can learn Swift by TM 
  - Kakuna and Metapod learn harden by level-up
  - pikachu and kadabra have their catch rates adjusted to yellow version
  - Give haunter/machoke/kadabra/graveler an evo by level option (level 45 to 48)
  - Butterfree and Beedrill have their prior evolutions' moves added to their level-0 move list

- You can now play as a girl when starting a new game
  - Has front, back, walking, and cycling sprites
  - Has unique default names when starting a new game
- Softlock Warp 
  - instantly teleport back to your mom's house if you get stuck or are unable to move after updating to a new patch
  - Intructions to perform:
    - go to the start menu and put the cursor on OPTION
	- press and hold DOWN on the d-pad (the cursor will now be on EXIT)
	- while continuing to hold DOWN, press and hold SELECT
	- while continuing to hold those two buttons, press B
	- the start menu should close and you will warp back to your mom's house
- Context-sensitive SELECT button for using HMs (must have the right badge and the move on one of your pkmn)
  - press select against a shore to surf
  - press select when facing a shrub or grass tile to use cut
  - press select in a dark area to light it with flash
  - in all other instances, pressing select activates strength
- Press Select while holding A to automatically get on/off your bike or use the best rod in your inventory
- You can now check DVs or stat exp by holding down a button and entering the status screen
  - hold SELECT for stat exp
  - hold START for DVs
- In-battle way to check if enemy pokemon is owned in the pokedex
  - On the main battle menu, place the cursor over an option in the left column
  - Press the Select button
  - The enemy pokemon will play its cry if registered as owned
- Game corner prize costs re-balanced
- Slightly increased slot odds
- Slot machine coin counter runs twice as fast
- There are four lucky slot machines instead of one
- Interaction of slot reel modes tweaked for better gameplay
- A pkmn with Pay Day in the 1st party slot will play its cry when interacting with a lucky slot machine
- A pkmn with Pay Day in the 1st party slot will play its cry when a slot machine enters payout modes
  - 1 cry for a normal payout on the next pull
  - 2 cries to signal the possibility of all 7s/bars on the next pull
  - 3 cries to signal that super payout mode had been entered
- Bushes moved around so Erika can be battled without CUT
- The bush blocking the Vermilion gym has been replaced with a blocking pkmn that goes away after the ss anne leaves
- The surfboard, a nugget, and TM 15 are hidden items added to the vermilion dock
- Gym leaders and elite 4 have their rosters, levels, & movesets slightly tweaked for gradual difficulty
- Can rematch most non gym-leader trainers
- Rematch with Karate Master
- Rematch with Brock
- Rematch with Misty
- Rematch with Surge
- Rematch with Erika
- Rematch with Sabrina
- Rematch with Koga 
- Rematch with Blaine
- Rematch with Giovanni (respawns after leaving the gym)
- Blaine has a touched-up battle sprite so he doesn't look like an alien
  - Snagged this off reddit, but original artist unknown (let me know if this is yours)
- The elite 4 now use the gym battle music rather than the standard trainer music
- The juggler rosters, especially in fuchsia gym, have been slightly altered for flavor
- Just for fun, the last juggler in the fuchsia gym is replaced with a cameo of Janine
  - Though at this point she's still just a cooltrainer and doesn't have a unique battle sprite
- S.S. Anne can be re-entered after defeating the elite 4.
  - minor text change indicating its return
  - the captain's text has been slightly altered for a more generic context
- There is a new NPC in the west-east underground path that generates random battles after beating the elite 4
- New NPC in celadon hotel will reward coins for showing him requested pkmn
- Talking to prof oak after beating the elite 4 let's you challenge him to a battle
- Trainer Green (named Seiga) can be battled next to the ss anne dock truck after beating the elite 4
- Can battle Mr. Fuji after beating the elite 4
- Can battle the Silph Chief after beating the elite 4
- Mind battle with future Trainer RED after beating the elite 4 via the new girl outside Bill's villa
- Move deleter/relearner added to the saffron house below COPYCAT's house
  - Code comes from Mateo's Red++ hack. It's simply the best gen-1 implementation and I cannot come up with something better.
  - Talk to the little girl to delete moves.
  - Talk to her tutor to relearn moves.
  - I have expanded Mateo's code so that it also detects default level-0 moves from the baseStats header files.
- Pkmn with levels > 100 give 255 stat exp for each stat
- Pkmn with levels > 100 have 255 base exp yield
- If a pkmn has DVs that would make it shiny in Gen 2, the Reflect animation plays when it enters battle
- If playing on a super gameboy, shiny pkmn will have a palette swap on the status screen and also change color in battle
- If a level 100 chansey is first in your roster:
  - Shiny wild random encounters are much more common (1 in 256)
  - Repel effects will not block shiny encounters
- Added an exp bar using code by Danny-E 33 
- There's a tournament being held in the SS Anne's kitchen after the elite 4 are beaten
  - Talk to the Gym Guy you find there
  - win 7 matches in a row for a master ball
  - Battles use teams of 3 pokemon
  - Your team is healed in-between battles
  - Enemy pokemon levels are based on the level of your 1st party pokemon
  - You must have an open item slot to claim your prize
  - Any trainer can appear with any three pokemon
  - No breaks allowed in-between battles
- You can now battle missingno on the infamous cinnabar shoreline
  - You must have gotten the pokedex diploma first
  - Activated the traditional way via the "old man in viridian" method
  - Uses trainer battle routines (different music, uses AI, and uncatchable)
  - Uses fossil kabutops graphics and has its own defined base stats data
    - Prevents terrible glitches
	- Won't mess up your hall of fame
  - Upon encountering, it still gives 128 of the item in the 6th slot


#Added Encounter Locations for the following pokemon (rare if not normally in the chosen version):
- charmander on route 25
- squirtle on route 6
- bulbasaur on route 4 
- sandshrew/ekans on route 3
- version-swapped sandslash/arbok in unknown dungeon 1f
- vulpix/growlithe on route 8
- oddish/bellsprout on route 24
- meowth/mankey on route 5
- farfetchd on route 12 & 13
- cubone added as rare encounter in rock tunnel
- dodrio is rare on route 17
- version-swapped pinser/scyther in safari zone main
- electabuzz in power plant in both versions (slightly more encountered in red version)
- magmar in pkmn mansion basement in both versions
- snorlax is a rare find in digletts cave
- eevee is a rare find in the route 21 grass
- unknown dungeon changes
  - encounter rates between pokemon slightly re-balanced
  - chansey is rarer
  - articuno is rare on 1f
  - zapdos is rare on 2f
  - moltres is rare on b1
  - mew is very rare on b1 and will only show up after getting the pokedex diploma
  - dittos are rare and only on 2f & b1
  - scripted mewtwo is now at lvl 74
  - super rod in the unknown dungeon basement will yield either a lvl 70 mewtwo clone or glitch-level experiment dittos (a trap encounter)
- route 22 super rod data has changed to give psyduck & polywag
- hitmonchan & hitmonlee in victory road 3f
- lickitung in safari zone 1
- jynx in safari zone 2
- mr mime in safari zone 3
- lapras replaces krabby when using super rod in safari zone
- porygon is in the power plant in red version while blue has increased rate of raichu
- magnemite on route 10
- ponyta on route 7
- tentacruel to routes 19, 20, and 21
- seaking to routes 19, 20, and 21
- After beating the elite 4, there is a rare chance for any pokemon to be encountered in the safari zone (depends on location)
- All pokemon in the safari zone have above-average DVs


#Changes to pokemart inventories:
- Vendor added to Celadon Dept. Store 3F
  - Sells moon stones, amber, fossils, exp all, master balls, and rare candy
  - Only opens up after beating elite 4
- TMs of all kinds at all stores. All TMs are now re-purchaseable at various stages of the game.
- pewter city has ethers
- lavender town has max ethers
- saffron city has elixers
- cinnabar island has max elixers


#CREDITS / SPECIAL THANKS:
-----------
- The Pret team for providing the base disassembly and all the code comments that came with it.
- Rangi for the tool Polished Map
- Exp bar coded by Danny-E 33
- Move deleter/relearner coded by TheFakeMateo for Pokemon Red++
- The following folks for their great tutorials, glitch videos, and explanations across the internet:
  - TheFakeMateo 
  - Crystal_
  - ChickasaurusGL
  - v0id19
- The following Redditors for their help in pointing out and diagnosing bugs 
  - kadetPirx
  - JOBOalthor1992
  - krazsen