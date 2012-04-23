def death()
  quips = [
    "As darkness envelops your vision, you enjoy a sense of unity with your surroundings.\nEverything melts into a blissful euphoria.  You drift off into this oceanic wonder, never to think\nof your troubled, mortal existence ever again.",
    "A searing pain rushes from the center of your brain through your entire body\nproducing the most excruciating agony.  Your attempts to stay clear and aware fail as you succumb to the fire\n of your nerve endings.  Consciousness is lost forever.",
    "As quickly as the final blow is landed, you find yourself laying in a field of\n beautiful grain staring up at the heavens.  The white clouds drift through an open blue sky as you wonder\n \"Perhaps this is heaven?\"  Then you hear the most sinister laugh...",
    "You always knew this moment was approaching, but nothing could prepare you for\nthe impending doom of annihilation.  Will there be any experience after your heart and brain cease activity?\n  This happens as quickly as you consider it.  And you learn... only one thing remains...\n... suffering.",
    "You watch your body fall to the ground and it occurs to you... You are still standing.\nYou look around and everything has a strange, orange glow.  What is this?  \"Come home,\" resonates a booming\n voice from the center of your mind.  You feel your essence begin to vibrate and then dissipate altogether...",
    "A bright, pure, white light appears that penetrates your even your eyelids.\nYou try to shield your face, but for you lack of extremeties you would!  Your ego falls away and your mind quietens... Welcome to the void of the non-game ecstacy.",
    "As you meet your demise, a tunnel appears as everything around it becomes hazy in its spinning horizon.\nYou immediately shy from it, if not for a welcoming presence.  You find yourself drifting towards it regardless.\n  You feel extreme elation as you see your fallen siblings and parents."
  ]
  puts quips[rand(quips.length())]
  reincarnate = true
  Process.exit(1)
end
  
def prompt()
  print "> "
end

def reincarnation(reincarnate, jewel_hallway, jewel_cavern, jewel_stairway)
  if reincarnate == false
    puts "A gate at the bottom of the stairs slams shut and locks as soon as you enter the room."
    puts "It was never your intention to become the stalwart of the Kingdom, but alas,"
    puts "you have arrived at the chambers of the Beast.  You see before you an enormous,"
    puts "wooden and steel framed door.  Both sides feature a socket, perhaps meant to be" 
    puts "encrusted with a jewel of some sort, with a final socket in the center of the door."
    return :beginning_room   
  elsif jewel_hallway == true and jewel_cavern == true and jewel_stairway == true
    puts "As you walk back into the atrium, the jewels from the sword, shield, and book all"
    puts "tear themselves away and float into the jewel sockets in the door.  You hear a deep"
    puts "rumbling.  The door hinges creak and the door slowly opens itself toward you, revealing"
    puts "a new path, the only path now available as the others have been sealed off by a glow"
    puts "the same color as its jewel... You take a deep breath and begin walking through"
    puts "the giant doorway..."
    return :giant_doorway    
  else
    puts "Strangely enough, you find yourself in the atrium before the giant door again."
    puts "You have a vague memory of some extremely important event occurring, but what"
    puts "it was, you can't quite recall...  Anyways..."
    return :beginning_room
  end
end
  
def beginning_room()
  puts "Around the perimeter of this atrium are three passageways, representing your only options forward."
  puts "How will you proceed? (Choose a number)"
  puts "1. Go down the hallway to the left, well-lit with torches displaying tapestries and a runner."
  puts "2. Tread through the cavern tunnel to the extreme right, with a strange smoke hovering out of the entrance."
  puts "3. Climb the stairs to the far left, which appear to lead to some form of sanctuary."  
  prompt()
  choice = gets.chomp()
  if choice == "1"
    puts "As you move towards the opening of the hallway, you feel the warmth of the torches"
    puts "and enjoy the images of the tapestry.  They appear to tell the history of the kingdom"
    puts "from an alternate perspective, making it appear very malevolent and ill-intented."
    puts "It shows a seemingly heroic knight who becomes more and more victimized..."
    return :trap_first
  elsif choice == "2"
    puts "You step into the cold mist floating out of the entrance to the cavern and notice"
    puts "a foul, pungent aroma wafting out from the depths.  Nevertheless, you persist."
    puts "There are strange mushrooms growing from the moss on the walls, and vines hanging"
    puts "from the ceiling.  You've now stirred the native creatures.  A frog leaps past you,"
    puts "startled from this alien monster entering its safe abode."
    return :cavern_room      
  elsif choice == "3"
    puts "The closer you get to the opening of the stairway, the more you hear a deep,"
    puts "repetitive chant being murmured.  You climb the spiral staircase and run your hand"
    puts "along the cold stone of the walls.  You make your way and stand in the doorway to"
    puts "see a group of hooded monks having some kind of service."  
    return :sanctuary_room      
  else
    puts "One must face the choices Providence has offered."
    return :beginning_room
  end
end
      
def trap_first
  puts "You suddenly hear a clicking noise, then that of a crank and chains."
  puts "A slight breeze brushes across your cheek.  You know intuitively you must move now."
  puts "Without thinking, you... (Choose a number)"
  puts "1. Leap forward with a rolling front-flip."
  puts "2. You duck and cover your head with your arms."
  puts "3. You leap straight up and grab a beam from the ceiling."
  prompt()
  trap_choice = gets.chomp()   
  if trap_choice == "1"
    puts "You, without hesitation, leap head first down the hallway in order to leap over"
    puts "the coming threat.  However, you before you get the chance to perform your forward"
    puts "roll, you see the spiked plank swinging down from the ceiling.  You note how"
    puts "amazingly slow time seems to go in moments like these as you levitate over the hallway"
    puts "runner.  It has the most amazing colors and threading..."
    return :death      
  elsif trap_choice == "2"
    puts "Like the coward your friends always said you were, you drop to the ground in a"
    puts "squatting fetal position and cover your head and face as you whimper."
    puts "As you recalled these moments when your friends teased you, the single tear"
    puts "that was forming on your cheek immediately evaporated under the heat of the"
    puts "torches on the wall as they fill the hallway with flame.  You think to yourself"
    puts "it is such a shame to incinerate these nice tapestries..."
    return :death      
  elsif trap_choice == "3"
    puts "Your agility training has paid off!  You jump to the beams in the ceiling and lift"
    puts "your body up just in time to dodge the flurry of arrows zinging down the hall."
    puts "The sound of chains and cogs slows and eventually becomes silent.  You again notice"
    puts "the warmth of the torches as you drop back into the hallway."
    return :hallway_boss      
  else
    puts "There's no time for questioning decisions!  You must choose!"
    return :trap_first
  end
end
  
def hallway_boss()
  puts "You continue down the hallway, very anxious now knowing there is likely to be"
  puts "some unidentifiable threat looming within the next few steps.  And you were right."
  puts "The hallway opens into a room with a throne, upon which sits a suit of armor."
  puts "From the helmet you hear an echoed voice, \"Count he among the wise who know to fear"
  puts "the sound of my voice.\"  The armor stands up, almost twice your own heigth, and"
  puts "unsheaths it\'s blade, in which you notice a blue jewel in the handle.  \"Ready yourself"
  puts "for a extermination, mortal...\""
  puts "You have no clue what to do, so you simply... (Choose a number)"
  puts "1. Charge at the armor with the intent to tackle!"
  puts "2. Run back up the hallway!"
  puts "3. Take a fist-fighting stance and steady your balance."  
  prompt()
  hallway_boss_choice = gets.chomp()  
  if hallway_boss_choice == "1"
    puts "You charge with all of your might and leap at the armor before he has a chance"
    puts "to lift his weapon.  With all of your body weight you knock this animated suit"
    puts "of armor back into its thrown.  It shatters into individual pieces, and slowly"
    puts "starts sliding back together.  You kick and throw the pieces as far apart as you"
    puts "can, grab the sword, and run back up the hallway!"
    reincarnate = true
    jewel_hallway = 1
    return :reincarnation
  elsif hallway_boss_choice == "2"
    puts "You freak out and run back up through the hallway.  You make it about three steps in"
    puts "when you hear a strange crunch and splashing sound.  You look down to see the tip"
    puts "of the sword sticking out of your sternum."
    return :death      
  elsif hallway_boss_choice == "3"
    puts "As quickly as you get into your boxing stance, you realize you no longer have hands."
    puts "As you look down to find them on the ground, you see the blade also remove your feet."
    puts "Falling to the ground has never been so easy..."
    return :death      
  else
    puts "If you don't make a choice, he's going to run you through!"
    return :hallway_boss
  end
end
  
def cavern_room()
  puts "You make your way to the end of the cave which opens up into a large swampish area."
  puts "There are large fungi, flying insects, snakes, and more critters moving about."
  puts "Above you notice a warrior's shield hanging from a single thread which extends up into"
  puts "the darkness above the cavern.  That's when you notice the shining, red jewel in it."
  puts "You must have this shield."
  puts "How will you get to it? (Choose a number)"
  puts "1.  You step over the swamp and onto a giant mushroom and reach out for the shield."
  puts "2.  You grab a log from the swamp and throw it at the thread."
  puts "3.  You step into the swamp to move under the shield for a closer look."    
  prompt()
  cavern_choice = gets.chomp()    
  if cavern_choice == "1"
    puts "You stretch your legs and manage to step onto the mushroom and gain your balance."
    puts "You reach forward and above.  Stretch!  Your fingertips just barely brush the bottom"
    puts "of the shield when a giant black spider runs down the thread and sinks it's"
    puts "venemous fangs into the back of your neck.  Well, there goes that idea!"
    return :death      
  elsif cavern_choice == "2"
    puts "You sling the log underhand style with precision.  Biting your tongue and squinting"
    puts "has always increased your accuracy!  The log tears through the soft string and the"
    puts "shield bounces off of the mushroom's cap and lands at your feet!  You notice that"
    puts "the thread was connected to a very huge network of spider webs above the cavern."
    puts "good thing you didn't get too close.  You walk back out of the cave while admiring"
    puts "your new piece of equipment."
    jewel_cavern = 1
    reincarnate = true
    return :reincarnation    
  elsif cavern_choice == "3"
    puts "No quicker than your foot hits the water does a swampy hand reach out and grab your"
    puts "ankle. Another grabs your calf and another grabs your other leg!  You are swiftly"
    puts "pulled under water.  You don't know what to focus on... the swamp water filling your"
    puts "lungs or the hands tugging you deeper into the muck and slime of the swamp bottom."
    return :death    
  else
    puts "You have to have that jewel or there's no getting out of here!"
    return :cavern_room
  end
end  
  
def sanctuary_room()
  puts "They all stop chanting and the head priest lifts his head and says"
  puts "Step forward, my son.\"  For some odd reason, you feel compelled to do so."
  puts "You walk down the aisle and kneel to your new lord.  \"Look into the eyes of your savior.\""
  puts "You look up and... (Choose a number)"
  puts "1.  Stare deeply into the eyes of your loving master."
  puts "2.  Jump up and sprint back down the aisle."
  puts "3.  Cry out \"I'm not worthy!  Allow me to serve a place under your gaze, my god!\""      
  prompt()
  sanctuary_choice = gets.chomp()  
  if sanctuary_choice == "1"
    puts "You lose all track of time staring lovingly into the eyes of your lord."
    puts "Your eyes glaze over and madness descends upon your soul.  Madness descends"
    puts "upon blore coal.  Madness kepends puffed bomb prole.  Blabber blop roat."
    return :death
  elsif sanctuary_choice == "2"
    puts "You jump up and make it halfway down the aisle before a hoarde of monks descend"
    puts "upon you like lions upon their prey.  Their hoods fall back as they begin gnawing"
    puts "on your flesh!  You can feel the undead virus already coursing through your veins."
    puts "Your body begins hungering for the flesh of the living as your mind goes blank..."
    return :death      
  elsif sanctuary_choice == "3"
    puts "\"Your humility amuses me, child.  Arise before your brethren.\"  You stand and"
    puts "notice on the pulpit a holy book with an \"X\" embossed onto it.  In the middle"
    puts "of this \"X\" is a beautiful, purple colored jewel.  You pretend not to notice."
    return :priest_room      
  else
    puts "Do not disappoint your master!  Choose, lowly dog!"
    return :sanctuary_room
  end
end
  
def priest_room()
  puts "\"Welcome to the Brotherhood of the Lost.  You will serve as my minion as a"
  puts "member of the Fallen.  You will wash my feet with your hair and annoint me"
  puts "with oils.  How does this sit with you, my son?\""
  puts "How will you respond? (Choose a number)"
  puts "1.  \"It suits me well, for I am a lowly servant unto my lord.\""
  puts "2.  \"Oh! I can't express how happy it makes me!  I love you!\""
  puts "3.  \"It makes me absolutely sick, you vile creature!\""  
  prompt()
  priest_choice = gets.chomp()  
  if priest_choice == "1"
    puts "\"And serve me you will.  But first you must drop your fragile frame like"
    puts "a dirty garment before your slumber!\"  The priest chants an incantation"
    puts "and you feel your heart begin to pump entirely too hard.  You feel blood"
    puts "vessels begin bursting in your eyes as the migraine becomes too much to stand."
    return :death      
  elsif priest_choice == "2"
    puts "\"I love you!\" You scream your praises as you jump up and hug your master."
    puts "\"Get off me, wench!\" You knock the priest and yourself into the pulpit and you"
    puts "purposefully fall to the floor.  You land on top of the holy book and grab it"
    puts "quickly while screaming \"Get back before I destroy it!\"  The monks all push their"
    puts "hoods back to reveal their true nature.  Their rotten faces glare at you as they"
    puts "hiss and claw in your direction.  You hold the book in front of you as you carefully"
    puts "walk back to the stairway.  You back down it slowly, but the monks stop at the doorway"
    puts "as if there is some magical barrier they cannot cross."
    jewel_stairway = 1
    reincarnate = true
    return :reincarnation
  elsif priest_choice == "3"
    puts "You attempt to deliver a swift uppercut to the priest!  Your fist would have delivered"
    puts "a fierce blow if it did not hault and crush under the unbelievable strength"
    puts "of the priest's hand.  \"You are slow and stupid, among elder souls.  Perhaps you"
    puts "will view things differently once you cross over the transcendental migration...\""
    return :death      
  else
    puts "What will you say to your lord and savior?"
    return :priest_room
  end
end
  
def giant_doorway()
  puts "You pass through the doorway into the most glorious sight ever!  The treasure room!"
  puts "You see diamonds, emeralds, rubies, sapphires, amethysts, and every precious stone"
  puts "you can imagine!  There are blades forged by master blacksmiths and cloths"
  puts "woven from the finest of foreign threads.  So many necklaces, rings, and crowns!"
  puts "Maybe you can just sneak a few of these with you in case you survive?  That would be"
  puts "okay, wouldn't it?  Nobody would miss just a few gold coins would they?"
  puts "Take a valuable and place it in your pocket."
  i = 1
  pockets = []
  return :money_loop
end
    
def money_loop()
  while i < 7
    puts "Type \"take\""
    prompt()
    input = gets.chomp
    if input == "take"
      puts "There are #{i} valuables in your pockets!"
      i = i + 1
      puts "You have room for more!  Get rich!"
      return :money_loop
    else
      puts "Are you going to take the money or not!?!?"
      return :money_loop
    end
  end
  return :to_the_beast
end
    
def to_the_beast()
  puts "You have manage to stuff your pockets full of the most precious metals and jewels"
  puts "the Kingdom has ever seen!  Now to complete the mission you were sent here for..."
  puts "You pass through the only exit in the room into a long corridor.  This corridor"
  puts "features a slight incline with a blue rug and gentle candle lights dancing in the"
  puts "cool draft.  The smell of incense fills your nostrils as you continue up the long"
  puts "corridor.  You hear a noise and turn to look backwards as you see little gnomes"
  puts "and pixies scurrying off with gold coins and colorful jewels.  You check your"
  puts "pockets and drats!  Your hands go through the holes in your pockets that grew under"
  puts "the weight of the valuable treasure!  That's what happens to greedy adventurers..."
  puts "What do you think about this?"
  prompt()
  puts "It doesn't matter what you think because you are now broke and about to face"
  puts "the threat of the entire Kingdom.  You finally reach the top of the incline to see"
  puts "your enemy, Bakarosh the Lifebane!  This great beast lies before you, already aware"
  puts "of the new smell in it's lair.  \"Human, step forward and introduce yourself.\""
  puts "Proudly tell Bakarosh who you are! (Type your name)"
  prompt()
  name = gets.chomp()
  puts "Mighty Bakarosh, it is I, #{name}, son of Brennus the Blacksmith and Faelan the"
  puts "Seamstress.  For generations you have plundered the Kingdom's treasures and"
  puts "terrorized its people with the wind of your wing and breath of your flame.  For"
  puts "these trespasses I have come to slay you.  I have met the challenges of your lair"
  puts "and obtained the triple gems.  And now I will strike a blow true to and end"
  puts "your tyranny once and for all!  Prepare for your demise, dragon-beast!"
  puts "You make the first move! (Choose a number)"
  puts "1. Make a dash at the dragon with the sword!"
  puts "2. Throw the shield at the dragon's face!"
  puts "3. Flip the book open to a random page and read!"
  prompt()
  first_move = gets.chomp()  
  if first_move == "1"
    puts "You make a mad dash towards the beast.  Without as much as an eye blink, he swipes"
    puts "at you, knocking you across the room and into the stone wall.  You hear several"
    puts "cracking noises as your spine crushes under the weight.  Your head bashes against"
    puts "the wall and your vision flashes bright white.  Suddenly there is no more pain."
    return :death
  elsif first_move == "2"
    puts "You throw the shield like a circular blade, sending it whizzing at the dragon's face!"
    puts "The dragon bats its wing once, sending the shield crashing to the floor from the wind."
    puts "With the other wing he sends the shield crashing back at you.  It hits you in the chest"
    puts "crushing every rib.  You gasp for breath but can't seem to find it.  Bakarosh laughs"
    puts "as you fall to your knees.  Everything becomes blurry as you begin to panic..."
    return :death
  elsif first_move == "3"
    puts "You trust Providence and flip the book open to a random page.  Without any recognition"
    puts "of what it is, you begin reading, \"Darkness, ,may your plague of pestilence be a peril"
    puts "unto my foe, and may...\" as you continue reading, a swarm of large, green and purple"
    puts "hornets appears in front of Bakarosh.  One stings the beast below his left eye as another"
    puts "injects its poison into its snout."
    return :dragon_two
  else
    puts "Accept the options Providence has presented to you."
    return :to_the_beast
  end
end
      
def dragon_two()  
  puts "\"What form of witchery is this!? I took you not for a practitioner"
  puts "of the black arts!\"  The dragon begins stirring, and you..."
  puts "What do you do? (Choose a number)"
  puts "1. Ready your blade."
  puts "2. Ready your shield."
  puts "3. Flip to another page in the book."
  prompt()
  second_drag = gets.chomp()
  if second_drag == "1"
    puts "You hold the sword in front of you.  It melts as quickly as your face before"
    puts "you realize the foul demon incinerated everything in front of it with its"
    puts "fiery breath.  You don't feel pain for long as your nerve endings ash to"
    puts "the floor..."
    return :death
  elsif second_drag == "2"
    puts "You lift the shield in front of you just before the flames arrive.  They come"
    puts "with such a force it actually knocks you back a bit.  The shield begins"
    puts "glowing orange under the heat, however it protects you from the onslaught."
    return :dragon_three
  elsif second_drag == "3"
    puts "Before you are even able to flip the pages of the book, they become ash in your"
    puts "hands.  You watch the flesh of your hands tear away leaving bones holding"
    puts "an empty book spine.  You see no more after your eyes explode under the pressure."
    return :death
  else
      puts "There are no other choices.  Use the weapons you have!"
      return :dragon_two
  end
end
        
def dragon_three()    
  puts "The hellish attack ends and you rush forward with the shield on your arm"
  puts "and bash the beast under the chin in an upward-swinging strike.  The dragon"
  puts "lets out an \"oomph\" and a poof of smoke.  Its throat is exposed!  This is"
  puts "your chance!"
  puts "What do you do? (Choose a number)"
  puts "1. Bring the shield back down for another hit!"
  puts "2. Bite at its throat like a wild man!"
  puts "3. Swing the sword!"
  prompt()
  drag_three = gets.chomp()
  if drag_three == "1"
    puts "You withdraw your arm and shield for another fierce smash, but before you"
    puts "can even make the up-turn, the dragon's jaws come crashing down on you."
    puts "The teeth break every bone in your legs.  This excruciating pain is nothing"
    puts "compared to the feeling of sliding down the throat of your enemy."
    return :death
  elsif drag_three == "2"
    puts "You leap and grab onto the demon's neck!  You start gnawing at its throat"
    puts "before you realize you aren't doing any damage.  Its scales are too thick!"
    puts "It grabs you from its neck and tears you into two pieces."
    return :death
  elsif drag_three == "3"
    puts "With your body already in position for the finish, you swing the blade swiftly."
    puts "The scales of the dragon's neck separate in two as its throat opens up,"
    puts "spilling snakes, lizards, and bugs all over the chamber floor.  The beast"
    puts "flails its tail and limbs around before settling into a limp position sprawled"
    puts "out before its slayer, #{name} the Dragonbane!  You walk behind the beast to its"
    puts "secret entrance that opens into the mountain overlooking the Kingdom."
    puts "As you overlook the Kingdom, feeling the cool breeze and breathing the fresh air"
    puts "of the land you've always called home, you notice a shining object at your feet."
    puts "It is a ring that bears the insignia of the lineage of the King!  You have"
    puts "recovered the Kingdom's most prized relic, for which you will be handsomely"
    puts "rewarded.  You daydream of the fame you will achieve as you return,"
    puts "Sir #{name}, Defender of the Kingdom!"
    puts "-----------------------"
    puts "The End... or is it!??!?!?!"
    Process.exit(0)
  else
    puts "Wilt thou not slay the beast?"
    return :dragon_three
  end
end
    
ROOMS = {
  :death => method(:death),
  :reincarnation => method(:reincarnation(reincarnate, jewel_hallway, jewel_cavern, jewel_stairway)),
  :beginning_room => method(:beginning_room),
  :trap_first => method(:trap_first),
  :hallway_boss => method(:hallway_boss),
  :cavern_room => method(:cavern_room),
  :sanctuary_room => method(:sanctuary_room),
  :priest_room => method(:priest_room),
  :giant_doorway => method(:giant_doorway),
  :money_loop => method(:money_loop),
  :to_the_beast => method(:to_the_beast),
  :dragon_two => method(:dragon_two),
  :dragon_three => method(:dragon_three)
}
    
def runner(map, start)
  next_one = start    
  while true
    room = map[next_one]
    puts "\n--------"
    next_one = room.call()
  end
end
  
reincarnate = false
jewel_hallway = false
jewel_cavern = false
jewel_stairway = false
runner(ROOMS, :reincarnation(reincarnate, jewel_hallway, jewel_cavern, jewel_stairway))