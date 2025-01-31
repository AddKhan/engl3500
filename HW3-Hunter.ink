//Adrina Khan
//1/27/25
//HW03

VAR weapon = false
VAR barBool = false
VAR warehouseBool = false
//VAR friendliness = -2
-> start

=== start ===
Nine's phone pings as he is alerted of his next assignment.
"TARGET: PSYCHIC NUMBER 1297", his phone reads.
"ABILITIES: UNKNOWN."

*Nine puts his phone away[] and shoves it into his pocket.
    He straightens his collar, gets off the coach in the reception area, and leaves the headquarters.
*Nine decides to look into it[] and browses the YOU homepage for more info on his target.
    The YOU, an organization dedicated to eradicating "humans" with supernatural abilities, is the top union of psychic hunters.

-He takes pride in his work at the YOU which ranks its members by ability. Nine, being the ninth best member, has never failed an assignment.

Though that might change with this one.

Ranked as an SS class job, PSYCHIC NUMBER 1297, aka Seven, has no information on him. Thus, leads Nine to begin his investigation at the...

* bar, where he can speak to his broker
    ~ barBool = true
    -> bar
* warehouse, where he can speak to his weapon supplier
    ~warehouseBool = true
    -> warehouse

= bar
Nine begins his trek to The Lazy Cat, an underground bar ran by Golden.

The Lazy Cat hid amongst the sprawling buildings of the Upper Red District, named after the fact that the area was a "RED" zone where psychics usually hid. Nine's skin crawled as he shuttered in disgust.

"Filthy beasts," he muttered as he looked over at an unruly passerby. His demeanor was off; the man held his head low in an attempt to avoid eye contact, though he snuck a few glances at Nine.


{weapon:
    The man eyed the gun hanging from Nine's waist.
    *He bumps into Nine[] and pulls the gun off of his waist. Nine, too focused on the task at hand, doesn't realize that the weapon is gone.
            ~ weapon = false
            ->  enter_bar
    *[He strolls past Nine]He strolls past the unassuming Nine.
        ->  enter_bar
    *"One thousand two hundred nintey-seven"[] he whispers
        Nine recoils in shock and draws his gun.
            -> END
    - else:
        ->  enter_bar
}


= enter_bar
 The Lazy Cat's sign board glows brightly under the rain. Nine quickly runs down the stairs and pushes open the door to the bar. The smell of alcohol and cigarettes engulfs him.

"Nine!" a regular shouts out.

He waves back and rests himself at the bar. Before him sat a bell...

*[Ring the bell]
    The bell chimes but it can hardly be heard in the bustling bar.
*[Don't ring the bell]"I shouldn't ring it," Nine thinks to himself.

-Nine taps his finger against the counter as he impatiently waits for the bartender to appear. "Earlier... that man," Nine thinks aloud.

"What is it, honey?" the girl next to him chimes.

"You-"

"Don't," a man says as he appears behind the counter. He stood there, towering over Nine with his intimidating stature. His golden hair was kept well, tie properly situated, and glass in hand. He glanced down at Nine with a curt grin.

"Golden," Nine began, "I didn't think you were the type to stoop so low."

"What do you mean?" the bartender replied with the smile still plastered on his face.

* "This girl..."
* "This thing..."

-"How much are they paying you?" Nine sneered. He was appalled, but he should've seen it coming. He knew Golden would do anything for pocket change.

"Nine, this is Polly. She's new around here."

"She won't be here for long," Nine threatened.

Polly looked at him with a smile as she rest her hand upon his. She held an unlit cigarette as she replied, "don't be like that. We haven't even gotten to know each other and you're already acting so cold."

*"Don't touch me!"
*"I don't think I would ever like to know you."

-He began to recoil but he was too slow.

Fwsssh

He looked down at the top of his hand, and there lay a small burn mark in the shape of a smiley face.

"What number is she?!" Nine asked Golden.

"You know the deal, Nine. You put the money down and then you ask."

"Tch." Nine suddenly got up and grabbed Golden by the collar. He held him close to his face as he sneered, "The second I find another info broker I'll kill you."

"Surely that's not all you came to say? Where's my 'I miss you' or 'I really appreciate all you do for me, Goldy'?"

* "Shut it."[] He looked back at the girl beside him, who was lighting the cigarette with her hands. He wanted to exterminate her in that instant, but the law prohibited the killing of psychics without danger rankings and identification numbers.

"1297," Nine says as he places the company's card on the table.

Golden completes the transaction as he replies, "ahh, I thought you were here for him. He's a sweet guy, Nine. Worked at my bar in exchange for a meal here and there."
- 

*"Golden. I'm being serious."
    "I don't have much time left."
    "And why is that?"
        **"He's an SS rank."[] Nine shook his head, "I don't know how much damage he'll do before I can finish the job."
*"Have I met him?"
    "Not that I know of," Golden replied. "Poor boy doesn't have many friends so he's not out very often."

-"Well, he's told me that he does frequent the lake out in Orange. That's as good of a start as any."

*"And his ability?"

- "He's a strange one- has the ability to rewrite others' thoughts. I don't see why he doesn't use it on me to get free meals." He laughed.

*"Is that really all there is to it?"

-"No," Polly replied. "Each of us hone our talent, so that's just the surface." She looked down at her cigarette, its ashes scatterd on the table. "...Please go easy on him."

*"Hahaha"
*"..."

-"Relax," Nine replied, "I don't see joy in killing. It's just work."
    -> lake_orange

-> DONE

= warehouse
VAR knock = 0
warehouse = true;
"The warehouse might be a good place to start... but it's by the wharf downtown." Nine thinks aloud.

He ponders how he'll get there. ///give options on how to go there, ie car motorcycle etc
*[Ride motorcycle]Nine steals someones deep red motorcycle; he accelerates down to the wharf zipping through traffic.
*[Take a taxi]Nine calls a taxi. Thankfully it's paid for by the YOU under "Assignment Spendings".

-He arrives at the warehouse, it's looming figure engulfs his surroundings.

The steel door lays ahead of him, "how many times do I knock, again?"
- (start_knocking_tag)
+ [Once] 
     ~ knock++
    Nine knocks once. For a total of {knock} time(s).
    {knock == 9:
        -> open_warehouse
    }
    {knock > 9:
        I think he knocked too many times... let's start over.
        ~ knock = 0
    }
+ [Twice]
    ~ knock+=2
    Nine knocks twice. For a total of {knock} times.
    {knock == 9:
        -> open_warehouse
    }
    {knock > 9:
        I think he knocked too many times... let's start over.
        ~ knock = 0
    }
+ [Three times]
    ~ knock+=3
    Nine knocks three times. For a total of {knock} times.
    {knock == 9:
        -> open_warehouse
    }
    {knock > 9:
        I think he knocked too many times... let's start over.
        ~ knock = 0
    }
 -  -> start_knocking_tag
 
 = open_warehouse
 "Nine..." a deep, eerie voice from inside the warehouse hisses. "What is it?"
 
 "I need a weapon," Nine says as he enters the dimly lit warehouse.
 
 "Wow, who would've thought," the weapons supplier sarcastically replies.
 
 Nine browses the items laid out on the walls and tables. The suppliers wares cover every inch of the warehouse, housing items Nine doesn't even know the use of.
 
 He grabs a handgun off the table, drops the payment off at the door, and heads out.
    ~ weapon = true
    
"Now that I've restocked, I should look into the target. Golden should know where that demon, Seven, is."
        -> bar

-> DONE

=== lake_orange ===
Nine arrives at Lake Orange; the setting sun reflected in the still water's light.

"It looks just like an orange, doesn't it?" The familiar man beside him says.

Nine steps back, "how did I not see him?" He thought.

"We haven't formally met yet, right?" He laughed, "it's odd though because it feels like I've known you forever. Or at least I've been around you forever."

"Why are you here?"

{warehouseBool:
    "I could ask you the same. Why did you choose to go to the warehouse? Or did you choose that?"
    - else :
         "I could ask you the same. Why did you choose to go to the bar? Or did you choose that?"
}

"How did you know that?"

"I told you, Nine. I've been with you for a long time. And is it really so surprising that a psychic like me would know where you've been?"

"That's enough. I don't know why I bother wasting my time with demons like you." Nine says as he reaches for his gun.

{not weapon:
    But it's not there. He could've sworn he had it on him.
    He looks at him embarassed. "My gun... if I had my gun you would be done for." He hurries off, swearing to kill me another day.
    - else:
        -> gun
}
->DONE

= gun
VAR point = false
VAR choice = 0

Nine removes the safety off of his gun. "Number 1297, do you have anything you want to say before you die?"

"Where's this sudden sympathy coming from? You seemed pretty eager to kill me on the street, and poor Polly was scared too."

- (gun_tag)
+ Nine points the gun at Seven's chest.
    ~ point = true
    ~ choice++
    
    {choice == 1:
    Are you sure you're making the right choice?
    -> gun_tag
    }
    {choice == 2:
    "Is this really what you want?"
    *"Shut up!"
     -> gun_tag
    }
    {choice == 3:
    "Are you really in control?"
    *"I'll finish this job."
     -> gun_tag
    }
    {choice == 4:
    "It's okay. Did you really have another choice?"
    *[Pull the trigger]
        -> pull_trigger
    *[Pull the trigger]
        -> pull_trigger
    *[Pull the trigger]
        -> pull_trigger
    *[Pull the trigger]
        -> pull_trigger
    *[Pull the trigger]
        -> pull_trigger
    *[Pull the trigger]
        -> pull_trigger
    *[Pull the trigger]
        -> pull_trigger
    }
*{point} Nine puts the gun back in his holester. []He walks away from me, seemingly possesed.
        I don't think you've made the right choice. I'd rather have seen the end. It's alright, I'll just have to have another hunter come for me.

->DONE

= pull_trigger
Nine pulls the trigger...
BANG!
    
-> END