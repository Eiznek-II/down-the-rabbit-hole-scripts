#!/usr/bin/env bash


#stops program if something is not possible
set -e

#random git comits messages (all quotes from alice in wonderland)
messages=(
    "Would YOU like cats if you were me"
    "The Caterpillar and Alice looked at each other for some time insilence"
    "Im never sure what Im going to be, from one minute to another!"
    "This piece of rudeness was more than Alice could bear"
    "Alice joined the procession, wondering very much what would happen next"
    "Alice began to feel very uneasy"
    "Im doubtful about the temper of your flamingo"
    "I never heard of Uglification"
    "Mystery, ancient and modern, with Seaography"
    "See how eagerly the lobsters and the turtles all advance"
    "The Hatter looked at the March Hare, who had followed him into the court, arm-in-arm with the Dormouse"
    "the jury eagerly wrote down all three dates on their slates"
    "in his confusion he bit a large piece out of his teacup instead of the bread-and-butter"
    "Bring me the list of the singers in the last concert"
    "Of course twinkling begins with a T"
    "but the Dormouse denied nothing, being fast asleep"
    "Here one of the guinea-pigs cheered"
    "Then you may SIT down"
    "Id rather finish my tea"
    "The next witness was the Duchesss cook"
    "she tipped over the jury-box with the edge of her skirt"
    "ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT"
    "Down, down, down"
    "it is almost certain to disagree with you"
    "it seemed quite dull and stupid for life to go on in the common way"
    "Curiouser and curiouser"
    "Poor Alice"
    "You ought to be ashamed of yourself"
    "How queer everything is to-day"
    "THATS the great puzzle"
    "she could have been changed for any of them"
    "THATS all wrong, Im certain"
    "How doth the little crocodile Improve his shining tail"
    "How CAN I have done that"
    "and in another moment, splash"
    "she had wept when she was nine feet high"
    "Everything is so out-of-the-way down here"
    "The Mouse looked at her rather inquisitively"
    "Perhaps it doesnt understand English"
    "daresay its a French mouse"
    "I think youd take a fancy to cats"
    "Well, perhaps not"
    "always HATED cats:  nasty, low, vulgar things"
    "Alice led the way"
    "Sit down, all of you"
    "Silence all round"
    "I beg your pardon"
    "Found WHAT"
    "Found IT"
    "Speak English"
    "But who has won"
    "EVERYBODY has won"
    "The next thing was to eat the comfits"
    "It IS a long tail, certainly"
    "she kept on puzzling about it"
    "We must burn the house down"
    "A barrowful of WHAT"
    "Poor little thing"
    "What do you mean by that"
    "Explain yourself"
    "I dont see"
    "Im not myself, you see"
    "Here was another puzzling question"
    "HOW DOTH THE LITTLE BUSY BEE"
    "You are old, Father William"
    "You are old"
    "Alice said nothing"
    "Alice waited patiently"
    "One side will make you grow taller"
    "in another moment it was out of sight"
    "Come, my heads free at last"
    "What CAN all that green stuff be"
    "Serpent, I say again"
    "I--Im a little girl"
    "How puzzling all these changes"
    "Ive got back to my right size"
    "she stood looking at the house"
    "Then they both bowed low"
    "the Fish-Footman was gone"
    "it just grazed his nose"
    "ARE you to get in at all"
    "thats the first question, you know"
    "on and off, for days and days"
    "But what am I to do"
    "hes perfectly idiotic"
    "a large cat which was sitting on the hearth"
    "why your cat grins like that"
    "the baby was howling so much already"
    "Which would NOT be an advantage"
    "Speak roughly to your little boy"
    "just like a star-fish"
    "it makes rather a handsome pig"
    "which way I ought to go from here"
    "I dont much care where"
    "if only you walk long enough"
    "What sort of people live about here"
    "In THAT direction"
    "But I dont want to go among mad people"
    "were all mad here"
    "Im mad. youre mad"
    "how do you know Im mad"
    "I suppose so"
    "Do you play croquet"
    "Youll see me there"
    "Alice was not much surprised"
    "what became of the baby"
    "I thought it would"
    "I suppose it doesnt mind"
    "Your hair wants cutting"
    "Why is a raven like a writing-desk"
    "Two days wrong!"
    "It was the BEST butter"
    "Have you guessed the riddle yet"
    "Is that the way YOU manage"
    "Twinkle, twinkle, little bat!"
    "Like a tea-tray in the sky."
    "How dreadfully savage!"
    "Off with his head!"
    "A bright idea came into Alices head"
    "Then the Dormouse shall!"
    "They lived on treacle"
    "Then you shouldnt talk"
    "It was a treacle-well"
    "Alice was silent."
    "Ill never go THERE again!"
    "My name is Alice"
    "Idiot"
    "How should I know"
    "Its no business of MINE."
    "Off with her head!"
    "Nonsense!"
    "Off with their heads!"
    "Are their heads off"
    "Get to your places!"
    "Alice waited till the eyes appeared"
    "Alice put down her flamingo"
    "Alice looked up"
    "Alice did not quite like the look of the creature"
    "Alice was thoroughly puzzled"
    "Alice looked down at them"
    "Alice said nothing"
    "But about his toes"
    "he is gay as a lark"
    "Alice did not dare to disobey"
    "Alice was only too glad to do so"
    "Alice had never been in a court of justice before"
    "Alice felt a very curious sensation"
    "Dont talk nonsense"
    "but I grow at a reasonable pace"
    "Alice guessed who it was"
    "Alice had no idea what Latitude was"
    "Alice began to get rather sleepy"
    "Do cats eat bats  Do cats eat bats"
    "Alice was not a bit hurt"
    "Alice opened the door"
)

#random git branch messages (all quotes from alice in wonderland)
bmessages=(
    "would-you-like-cats-if-you-were-me"
    "the-caterpillar-and-alice-looked-at-each-other-for-some-time-insilence"
    "im-never-sure-what-im-going-to-be-from-one-minute-to-another"
    "this-piece-of-rudeness-was-more-than-alice-could-bear"
    "alice-joined-the-procession-wondering-very-much-what-would-happen-next"
    "alice-began-to-feel-very-uneasy"
    "im-doubtful-about-the-temper-of-your-flamingo"
    "i-never-heard-of-uglification"
    "mystery-ancient-and-modern-with-seaography"
    "see-how-eagerly-the-lobsters-and-the-turtles-all-advance"
    "the-hatter-looked-at-the-march-hare-who-had-followed-him-into-the-court,-arm-in-arm-with-the-dormouse"
    "the-jury-eagerly-wrote-down-all-three-dates-on-their-slates"
    "in-his-confusion-he-bit-a-large-piece-out-of-his-teacup-instead-of-the-bread-and-butter"
    "bring-me-the-list-of-the-singers-in-the-last-concert"
    "of-course-twinkling-begins-with-a-t"
    "but-the-dormouse-denied-nothing-being-fast-asleep"
    "here-one-of-the-guinea-pigs-cheered"
    "then-you-may-sit-down"
    "id-rather-finish-my-tea"
    "the-next-witness-was-the-duchesss-cook"
    "she-tipped-over-the-jury-box-with-the-edge-of-her-skirt"
    "all-persons-more-than-a-mile-high-to-leave-the-court"
    "down-down-down"
    "it-is-almost-certain-to-disagree-with-you"
    "it-seemed-quite-dull-and-stupid-for-life-to-go-on-in-the-common-way"
    "curiouser-and-curiouser"
    "poor-alice"
    "you-ought-to-be-ashamed-of-yourself"
    "how-queer-everything-is-to-day"
    "thats-the-great-puzzle"
    "she-could-have-been-changed-for-any-of-them"
    "thats-all-wrong-im-certain"
    "how-doth-the-little-crocodile-improve-his-shining-tail"
    "how-can-i-have-done-that"
    "and-in-another-moment-splash"
    "she-had-wept-when-she-was-nine-feet-high"
    "everything-is-so-out-of-the-way-down-here"
    "the-mouse-looked-at-her-rather-inquisitively"
    "perhaps-it-doesnt-understand-english"
    "daresay-its-a-french-mouse"
    "i-think-youd-take-a-fancy-to-cats"
    "well-perhaps-not"
    "always-hated-cats--nasty-low-vulgar-things"
    "alice-led-the-way"
    "sit-down-all-of-you"
    "silence-all-round"
    "i-beg-your-pardon"
    "found-what"
    "found-it"
    "speak-english"
    "but-who-has-won"
    "everybody-has-won"
    "the-next-thing-was-to-eat-the-comfits"
    "it-is-a-long-tail-certainly"
    "she-kept-on-puzzling-about-it"
    "we-must-burn-the-house-down"
    "a-barrowful-of-what"
    "poor-little-thing"
    "what-do-you-mean-by-that"
    "explain-yourself"
    "i-dont-see"
    "im-not-myself-you-see"
    "here-was-another-puzzling-question"
    "how-doth-the-little-busy-bee"
    "you-are-old-father-william"
    "you-are-old"
    "alice-said-nothing"
    "alice-waited-patiently"
    "one-side-will-make-you-grow-taller"
    "in-another-moment-it-was-out-of-sight"
    "come-my-heads-free-at-last"
    "what-can-all-that-green-stuff-be"
    "serpent-i-say-again"
    "i--im-a-little-girl"
    "how-puzzling-all-these-changes"
    "ive-got-back-to-my-right-size"
    "she-stood-looking-at-the-house"
    "then-they-both-bowed-low"
    "the-fish-footman-was-gone"
    "it-just-grazed-his-nose"
    "are-you-to-get-in-at-all"
    "thats-the-first-question-you-know"
    "on-and-off-for-days-and-days"
    "but-what-am-i-to-do"
    "hes-perfectly-idiotic"
    "a-large-cat-which-was-sitting-on-the-hearth"
    "why-your-cat-grins-like-that"
    "the-baby-was-howling-so-much-already"
    "which-would-not-be-an-advantage"
    "speak-roughly-to-your-little-boy"
    "just-like-a-star-fish"
    "it-makes-rather-a-handsome-pig"
    "which-way-i-ought-to-go-from-here"
    "i-dont-much-care-where"
    "if-only-you-walk-long-enough"
    "what-sort-of-people-live-about-here"
    "in-that-direction"
    "but-i-dont-want-to-go-among-mad-people"
    "were-all-mad-here"
    "im-mad.-youre-mad"
    "how-do-you-know-im-mad"
    "i-suppose-so"
    "do-you-play-croquet"
    "youll-see-me-there"
    "alice-was-not-much-surprised"
    "what-became-of-the-baby"
    "i-thought-it-would"
    "i-suppose-it-doesnt-mind"
    "your-hair-wants-cutting"
    "why-is-a-raven-like-a-writing-desk"
    "two-days-wrong"
    "it-was-the-best-butter"
    "have-you-guessed-the-riddle-yet"
    "is-that-the-way-you-manage"
    "twinkle-twinkle-little-bat"
    "like-a-tea-tray-in-the-sky."
    "how-dreadfully-savage"
    "off-with-his-head"
    "a-bright-idea-came-into-alices-head"
    "then-the-dormouse-shall"
    "they-lived-on-treacle"
    "then-you-shouldnt-talk"
    "it-was-a-treacle-well"
    "alice-was-silent."
    "ill-never-go-there-again"
    "my-name-is-alice"
    "idiot"
    "how-should-i-know"
    "its-no-business-of-mine."
    "off-with-her-head"
    "nonsense"
    "off-with-their-heads"
    "are-their-heads-off"
    "get-to-your-places"
    "alice-waited-till-the-eyes-appeared"
    "alice-put-down-her-flamingo"
    "alice-looked-up"
    "alice-did-not-quite-like-the-look-of-the-creature"
    "alice-was-thoroughly-puzzled"
    "alice-looked-down-at-them"
    "alice-said-nothing"
    "but-about-his-toes"
    "he-is-gay-as-a-lark"
    "alice-did-not-dare-to-disobey"
    "alice-was-only-too-glad-to-do-so"
    "alice-had-never-been-in-a-court-of-justice-before"
    "alice-felt-a-very-curious-sensation"
    "dont-talk-nonsense"
    "but-i-grow-at-a-reasonable-pace"
    "alice-guessed-who-it-was"
    "alice-had-no-idea-what-latitude-was"
    "alice-began-to-get-rather-sleepy"
    "do-cats-eat-bats--do-cats-eat-bats"
    "alice-was-not-a-bit-hurt"
    "alice-opened-the-door"

)

cha=(
    "hatter"
    "queen"
    "duchess"
    "cat"
    "caterpillar"
    "alice"
    "dodo"
    "king"
    "knave"
    "mockturle"
    "thegryphon"
    "tweedledum"
    "tweedledee"
)



#initialise-directory
mkdir down-the-rabbit-hole
cd down-the-rabbit-hole


git init


#create readme 

cat > README.md << 'EOF'

try find the white rabbit in wonderland, 
to begin head down the rabbit hole, navigate into 
the rabbit hole branch.

at each stage read the README file with "cat README.md"
use ls to see contents of directory
EOF


git add *

git commit -m "A curious beginning"

git branch start-here
git branch go-home
git branch rabbit-hole


git switch go-home


cat > README.md << 'EOF'
Alice heads home.... theres not much to do here
EOF

git add *

git commit -m "this is a message"


git switch rabbit-hole

cat > README.md << 'EOF'
Alice falls down the rabbit hole, she falls for what feels like forever
.
.
.
.
.
.
.
.
.
still falling
.
.
.
.
.
falling still
.
.
.
.
.
.

eventualy she reaches the bottom.
there is a bottle that reads DRINKME, a tiny locked door,
and a table that is too tall for her to reach with some items on it
F
to drink the drink look in the commit history and navigate to the correct commit 
(use git log to see commit history, and git check out to navigate to a specific commit)
EOF

for i in {1..2}; do
    msg=${messages[$((RANDOM % ${#messages[@]}))]}
    git commit --allow-empty -m "$msg"
done

cat > README.md << 'EOF'
Alice eats the biscuit and begins to shrink

She can now fit through the door but she needs the key to open it

switch to the appropriate branch (hint git switch <branch name>)

if you dont know the key you might need to drink the drink again

EOF

git add *
git commit -m "EATME"

cat > README.md << 'EOF'
Alice falls down the rabbit hole, she falls for what feels like forever
.
.
.
.
.
.
.
.
.
still falling
.
.
.
.
.
falling still
.
.
.
.
.
.

eventualy she reaches the bottom.
there is a bottle that reads DRINKME, a tiny locked door,
and a table that is too tall for her to reach with some items on it

to drink the drink look in the commit history and navigate to the correct commit
(use git log to see commit history, and git check out to navigate to a specific commit)
EOF
git add *


for i in {1..2}; do
    msg=${messages[$((RANDOM % ${#messages[@]}))]}
    git commit --allow-empty -m "$msg"
done


#some random commits before real commit
for i in {1..4}; do
    msg=${messages[$((RANDOM % ${#messages[@]}))]}
    git commit --allow-empty -m "$msg"
done

cat > README.md << 'EOF'
before she had drunk half the bottle, she found her head pressing
against the ceiling, and had to stoop to save her neck from being
broken. 

Alice could now see the things on the table, there is a letter that reads "digging-for-apples".
how curious, thought alice, she should remeber the key for later!!!

there is also a biscuit on the table that reads "EATME", to eat it look 
for the relevant commit
EOF
git add *

git commit -m "DRINKME"

cat > README.md << 'EOF'
Alice falls down the rabbit hole, she falls for what feels like forever
.
.
.
.
.
.
.
.
.
still falling
.
.
.
.
.
falling still
.
.
.
.
.
.

eventualy she reaches the bottom.
there is a bottle that reads DRINKME, a tiny locked door,
and a table that is too tall for her to reach with some items on it

to drink the drink look in the commit history and navigate to the correct commit
EOF
git add *



for i in {1..2}; do
    msg=${messages[$((RANDOM % ${#messages[@]}))]}
    git commit --allow-empty -m "$msg"
done






for i in {1..10}; do
    msg=${bmessages[$((RANDOM % ${#bmessages[@]}))]}

    if git check-ref-format --branch "$msg" >/dev/null 2>&1; then
        if ! git show-ref --verify --quiet "refs/heads/$msg"; then
            git branch "$msg"
        fi
    fi

done


git branch digging-for-apples
msg=${messages[$((RANDOM % ${#messages[@]}))]}
git commit --allow-empty -m "$msg"


for i in {1..5}; do
    msg=${bmessages[$((RANDOM % ${#bmessages[@]}))]}

    if git check-ref-format --branch "$msg" >/dev/null 2>&1; then
        if ! git show-ref --verify --quiet "refs/heads/$msg"; then
            git branch "$msg"
        fi
    fi

done

git branch wake-up-alice-dear
git switch wake-up-alice-dear

cat > README.md << 'EOF'
You've found the rabbit well done!!!
                      .".
                     /  |
                    /  /
                   / ,"
       .-------.--- /
      "._ __.-/ o. o\
         "   (    Y  )
              )     /
             /     (
            /       Y
        .-"         |
       /  _     \    \
      /    `. ". ) /' )
     Y       )( / /(,/
    ,|      /     )
   ( |     /     /
    " \_  (__   (__        [nabis]
        "-._,)--._,)
EOF

git add *
msg=${messages[$((RANDOM % ${#messages[@]}))]}
git commit --allow-empty -m "$msg"

git switch rabbit-hole


for i in {1..18}; do
    msg=${bmessages[$((RANDOM % ${#bmessages[@]}))]}

    if git check-ref-format --branch "$msg" >/dev/null 2>&1; then
        if ! git show-ref --verify --quiet "refs/heads/$msg"; then
            git branch "$msg"
        fi
    fi

done



git switch digging-for-apples

cat > README.md << 'EOF'
Welcome to Wonderland

to find the rabbit you still have a bit more exploring to do, put the clues together and you will find the way

ech charecter will give you a word put these words together in the right order and cofiguration and figure out how this key should be used
EOF

git add *

msg=${messages[$((RANDOM % ${#messages[@]}))]}
git commit -m "$msg"




#queens quiz
mkdir queens-croque-lawn

cd queens-croque-lawn

cat > README.md << 'EOF'
                                            _,,,_         .::
                  ,ndMMMMMMMn.  .. ::::       "h,  .,,
                ,dMMMMMMMMMMM"  ::.`....       $PF""?$
               ;MMMMMMMMMMMMM :'` .::::::    4cccc$F<$ccc
               MMMMMMMMMMMMMM,uM :````...   z$$$$$$L """
               4MMMMMMMMMMMMMMMP  :::::::: z$$$$$$$$$P""
             dL 4MMMMMMMMMMMM" .::::::::::."$$$$$$$F'
             MMx 4MMMMMMMMMP' ::::::::::'`.,."?$$P"
            ;MMMh "MMMMMMMM' ::::::`::' .d$$$$ccc,``:::
            4MMMMh.`4MMMMP'_,``::`.:` -`:."?$?$P"..
            `MMMMMMh "4P > ??$,`  : z$$P=`:." $P?c,
             4MMMMMMMn.`nrd$",$cF  d$$" "h,`,< c,`>
          ..  MMMMMMMMMu`,,",d$$ ,$$PF   `" ?'  ?'
   ...::::::: `MMMMMMMMM.`P 4$$$c$",zc$$$P,$cccc "
:::::::::::::: `4MMMMMMMM. ,$$$$$$$$$$$$P `????$F L
:::::::::::::::  "MMMMMMMMx "?$$$$$$$$$F $ccc,,.-d$,
:::::::::::::::::  4MMMMMMMMn.`$$$$$$$",$$$$$$$$c $$
::::::::::::::::::: "MMMMMMMf z$$$$$$F $$$$$$$$$$ $$b
:::::::::::::::::::: `4MMMMf z$$$$$$$ d$$$$$$$$$F,$$$h
::::::::''``````'':::: 4MMM  $$$$$$$F,$$$$$$$$$$'d$$$$
:::::' ,;!!!!!!!!>;,`': 4M> d$$$$$$$$J$$$$"   "$ $$$$P
::',;<!!!!!!!!!!!!!!!!;  4> $$$$$$$$$$$$$$$c,cc$ $$$$F
' ;!!!!!!!!!!!!!!!!!!!!! `> $$$$$$$$$$$$$c,"",$$$$$$$'
 !!!!!!!!!!!!!!!!!!!!!!!! ' $$$$$$$$$$$$$$$$$$$$$$$$'
'!!!!!!!!!!!!!!!!!!!!!!!!!  ?$$$$$$$$$$$$$$$$$$$$$P'
4!!!!!!!!!!!!!!!!!!!!!!!!!! `$$$$$$$$$$$$$?$$$$$$"
'!!!!!!!!!!!!!!!!!!!!!!!!!!> $C"??????"" ,d$$PF",;;,
 '!!!!!!!!!!!!!!!!!!!!!!!!!!:`$$$ccccc=="" .,;;!!!!!!!
h '!!!!!!!!!!!!!!!!!!!!!!!!!! :. ,. ===<'`_,,,,,. `'!!,
..  `!!!!!!!!!!!!!!!!!!!!!!!! :: !>';!>,`="""?$$$$$c `<
!!!> `'!!!!!!!!!!!!!!!!!!!!!  ::.`;!!!!!!!! <$P$$$$$$c `
!!!!!>  `'!!!!!!!!!!!!!!!!`.::::  `!!'''''<>;;, ,$$$$$L
!!!!!! `::. ```'''''''``.::::::.:: <!'```,,,,zcd$$$$$$F
`<!!!!!: `'::::::::::::::::::::::   -$$$$P",3$$$$$$$$F
.    ````    :::::::::::::::::'`,z$$c ?",zc$$$$$$$P"
:: `<!!!!!!!;,`''::::::'''`` ,zd$$$$$b."CC,zdPF""
:::: `!!!!!!!!>,    .,,,,zcd$$$$$$$$$$$. ",$F
::::::`<!!!!!!!!>    "?$$$$$$$$$$$$$$$$$c ""
::::::: `!!!!!!!!!;     `"?$$$$$$$$$$$$$$,.
::::::::.`!!!!!!!!!;        ""?$$$$$$$$$$$$$c,.
:::::::::: <!!!!!!!!>            ""??$$$$$$$$$$F3r
::::::::::: `!!!!!!!!!,              c,J"$$$$$$F4"
:::::::::::: `!!!!!!!!!;             `?$$$$$$$$ c,      .
::::::::::::: `!!!!!!!!!;               """?`$F $$b     $,
::::::::::::::.`<!!!!!!!!>                    " "$$c,. "'?-
:::::::::::::::: <!!!!!!!!>                   ?, $$$$$$$$bcc,
::::::::::::::::: <!!!!!!!!!                   `? ?$$$$$$$$$$$c
:::::::::::::::::. <!!!!!!!!!;                 4 ?c "?$$$$$$$$$$c
::::::::::::::::::  !!!!!!!!!!;                 ?c`$cc,""?$$$$$$$b.
::::::::::::::::::: `!!!!!!!!!!;                 "b,"$$$$c,."?$$$$$
:::::::::::::::::::: <!!!!!!!!!!>                ,`?b,$$$$$$$c,"$$$b
::::::::::::::::::::. !!!!!!!!!!!                `$c,"$$$$$$$$$c`$$$
::::::::::::::::::::: `!!!!!!!!!!>                `$$$e$$$$$$$$$.`$$F
:::::::::::::::::::::. !!!!!!!!!!!;                 ?$$$$$$$$$$$$ ?$$
:::::::::::::::::::::: `!!!!!!!!!!!                   "?$$$$$$$$$ <$$
::::::::::::::::::::::: !!!!!!!!!!!>                     "$$$$$$$F $$.
::::::::::::::::::::::: `!!!!!!!!!!!>                       "?$$$b $$b
::::::::::::::::::::::: `!!!!!!!!!!!!                          "?$c`$$r
:::::::::::::::::::::::: !!!!!!!!!!!!>                            `?J$$c
:::::::::::::::::::::::: !!!!!!!!!!!!!                              "$$$.
:::::::::::::::::::::::: !!!!!!!!!!!!!                               '$$$
:::::::::::::::::::::::: !!!!!!!!!!!!!>                               $$$L
:::::::::::::::::::::::: !!!!!!!!!!!!!>         _                     4$$$
::::::::::::::::::::::: ;!!!!!!!!!!!!!!       _.,\.,,r==,            4$$$P
:::::::::::::::::::::',;!!!!!!!!!!!!!!!     ,' )h.="??,L,`         ,c$$$$'
:::::::::::::::'''`,;<!!!!!!!!!!!!!'`.,,.   <cc$F  ,h,?$F       ,zd$$$$F'
:::::::'''`  ,;;<!!!!!!!!!!!!!!!! ,d$$$$$$$,,"", $$$P'J$' ,,zcd$$$$$P"
`  .,,,;;;!!!!!'!!!!!!!!!!!!!!!',$$$$$$$$$$$`$$$c ccc?$$,<$$$$$$P"'
!!!!'`,cccccc,. ,,``!`!!!!!!!!! $$$$$$$$$$$F,??$$$=,C"cb' """"'
! ,cd$$$$$$$$$$$$$$c  _`!!!!!!> $$$$$$$$$$F ===rrc$P",?-
,F3$$$$$$$$$$$$$$$$$$cdb `!!!!> ?$$$$$$$$"
 c$$$$$$$$$$$$$$$$$F_, -,"=,`    ?$$$$P"
$$$$$$$$$$$$$$PFF",r?$>,`$czb=    "$P"
"$$$$$$$$$$$$$'::),-,$$c ==$$b$"
J$$$$$$$$$$$$F cc$$$$$$$$L`ccc$$"
 ?4$$$$$$$F?$L $$$$$",,-J',$$$$b=
  `$$$$$$$$ ??c`?$$$$$$$'d$$$$"
  `"?$$$$$F ,4$$c`.,3$$$ $5??""
     `$$$$  b,"$$$c"""",P"=`,$$,
      `$?L     `$$$$"'"      "$$L
                 ?$$b         `?=
                  "?, 


If you can answer my question and it'll a hint to where the rabbit is hidding otherwise its OFF WITH YOUR HEAD!!!!

take a look at the example text file in this directory, if you were to run these commands (you can run them here to test them) where does the HEAD go

reaseach what the head is to find the answer

I'm the most important person in wonderland, then the caterpillar, then the cat, and right at the bottom is the hatter.
EOF

cat > example.txt<< 'EOF'

 git switch -c dear

 git switch -c love

 git switch -c honey

 git switch -c pumpkin

 git switch love

 git switch dear

EOF

git add *

msg=${messages[$((RANDOM % ${#messages[@]}))]}
git commit --allow-empty -m "$msg"


cd ..


#tags
mkdir hatters-tea-party

cd hatters-tea-party


cat > README.md << 'EOF'
                       .,,;;;;;!!!!!!!!!;;;,.
                    .,;;!!!!!!!!!!!!!!!!!!!!!!!!!!!;
               .,;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!>
           ,;;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!>
        ,;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
      ,<!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    ,<!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!>
   ;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!>
  <!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!>''''``''
 <!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!''` ....:::::::::
;!!!!!!!!!!!!!!!!!!!'`!!!!!!!!''`...:::::::::::::::::
!!!!!!!!!!!!!!!!!' ,z `!!!'` .:::::::::::::::::::::::
``'!!!!!!!!!!!'',c$$$b ` .::::::::::::::::::::::::::::
     `'!!!!!' z$$$ $$$b `:::::::::::::::::::::::::::::
        `!' c$$$$$h`$$$$ `:::::::::::::::::::::::::::::     _,;;;
          z$P"_"?$$ $$"$$. `::::::::::::::::::::::::::::  '` .. `!
        z$$$ $$$c ",`F ,"?c,`::'''```````''':::::::::::::   <!' <!
       J$?$$,`?$$$ 3 $c,,d$P" ,;;!!!!!!!!!!;;,.```'::::::::   ,!'
      d$$,,`?bc,"" Jh`$$P",;!!!!!!!!!!!!!!!!!!!!!!;;;,,,,,,,;'`,nPP"""=-
     `"""??$-` .,nmnn,.  `~h '``!!!!!!!!!!!!!!!''`````````   =MMMMMMMMMbn
           cdMMMMMMMMMMMMn, ` "n.`<!!!!!!!' ,-=~"??$$"$P"     `MMMP"   `""
            .,n,."?MMMMMMMMb,  MMb  `!'`,c$"        "?" ,cc$c ,MMMMMMP4x
         ,nMMMMMMMb,3MMMMMMMM, dMMr   c$$$F ,cd$$$?$ccd$$P??? MMMMMMMM,"b
       nMMMMMMMMMMMMMMMMMMMMMMMMMM> h ?$$$$$$$$$"<$$c`$$'cd$, "MMMMMP4M M
     uMMMMMMMMMMMMMMMMMMMMMMMMMMMMLM>. "$$$$$$$$.`$"  $$c   ",= """T' '
    JP MMMMP MMMMMMMMMMMMMMMMMMMMMMM.M> $$$$$$$$$c,,,c$$$$bc,cc$$$b,
    ' dMMM",MMMMMMMMMMMMMMMMMMMMMP""""" ?$$F<$$$$$$$$$$P???$$$$$$$$$
     dMP" ,MMMMMMMMMMMMMMMMMMMMM zJF"??cc,` $$$$$$$$$$$ $bcJ$$$$$$$P
     M    MMMMMMMMMMMMMMMMMMMMM:<$$$$c  "$ J$$$$$$$PF" ."$$$$$$$$P" .
         4M4MMMMM4MMMMMMMMMMMMML ?$$$$ <c, $$$$?$P ,cd$$cc,"""   cc$$r
         `M'MMMM>4MMMMMMMMMMMMMMx "$$$b,"" $$$$ $ '$$$$$$$$$$ 4$,"$$$F
            MMMM> MMMMMMMM""?MM> "?n `"??? $$$$ ? -`?$$$$$$$$c`?$c$$$F
             "MML ."?MMMM     ""       "$$.`""$bJ.4  "?$$$$$$F  $$$$$'
               "?< ?   ""-              ,;;!> $$$$ b "cc ,, c $$$$$$F  ,,-
                                     ,;!!!!!! `$$$c`b."$ $$ $ "$$$$$',!!!
                                  ,;!!!!!!!!!! `$$$$$$, "====",$$$$',!!'
                                ,<!!!!!!!!!!!!> `$$$$$$$$ccc$$$F,$',!!
                               ``<!!!!!!!!!!!!!!.`??$$$$$$$$$$"," ;!'
                                   ``'!!!!!!!!!!! ;; "$$$$$$P" ,;>
                                       `<!!!!!!!';!!! `$$$P" ;!!!!>
                                           .,.`` `!!!!  "" -''!'' ,!
                                        ,!!!!!!!>;, `'\ <!>   ,;<!!!

    the March Hare and the Hatter were having tea

    sit and have tea with us and i'll tell you about the rabbit

    look for the tea-time tag and start there

    to checkout a tage use git checkout <tag name>, similar to commits

    after checing out the tag use ls to see if the dirctory has changed
    and read the files to see the clues

    to list all tags use git tag

    Before you go remember the queen has an upside down view of wonderland


EOF

git add *

for i in {1..2}; do
    msg=${messages[$((RANDOM % ${#messages[@]}))]}
    git commit --allow-empty -m "$msg"
    tag_name=${cha[$((RANDOM % ${#cha[@]}))]}

    if ! git show-ref --tags --verify --quiet "refs/tags/$tag_name"; then
        git tag "$tag_name"
    fi
done

echo "The Hatter poured the first cup, "checkout" the doormouse" > tea.txt
git add tea.txt
git commit -m "The first cup is poured"

git tag tea-time

for i in {1..3}; do
    msg=${messages[$((RANDOM % ${#messages[@]}))]}
    git commit --allow-empty -m "$msg"
    tag_name=${cha[$((RANDOM % ${#cha[@]}))]}

    if ! git show-ref --tags --verify --quiet "refs/tags/$tag_name"; then
        git tag "$tag_name"
    fi
done


echo "he doormouse passes alice the wine, talk to the marchhare." >> tea.txt
git add tea.txt
git commit -m "Alice asks for the wine"

git tag doormouse

for i in {1..2}; do
    msg=${messages[$((RANDOM % ${#messages[@]}))]}
    git commit --allow-empty -m "$msg"
    tag_name=${cha[$((RANDOM % ${#cha[@]}))]}

    if ! git show-ref --tags --verify --quiet "refs/tags/$tag_name"; then
        git tag "$tag_name"
    fi
done


echo "the doormouse points to the hat. take a look" >> tea.txt
git add tea.txt
git commit -m "the doormose speaks"

git tag marchhare

for i in {1..2}; do
    msg=${messages[$((RANDOM % ${#messages[@]}))]}
    git commit --allow-empty -m "$msg"
    tag_name=${cha[$((RANDOM % ${#cha[@]}))]}

    if ! git show-ref --tags --verify --quiet "refs/tags/$tag_name"; then
        git tag "$tag_name"
    fi
done

echo "inside the hat on the table there is a lable that reads: wake. now head back to digging-for-apples" >> tea.txt
git add tea.txt
git commit -m "there is a hat on the table"

git tag hat

for i in {1..3}; do
    msg=${messages[$((RANDOM % ${#messages[@]}))]}
    git commit --allow-empty -m "$msg"
    tag_name=${cha[$((RANDOM % ${#cha[@]}))]}

    if ! git show-ref --tags --verify --quiet "refs/tags/$tag_name"; then
        git tag "$tag_name"
    fi
done


cd ..


#hidden in config
mkdir catapillars-mushroom
cd catapillars-mushroom

cat > README.md << 'EOF'
                    ,;;;;;,
                ;!!!'!!!!!;
                !!!!!! ` !!!'-
                !!!!!!! '' d??c
                `!!!!! d???`$cJc,
                `!!!`.cdbc ?,9`$$c
                    !' ; $$ 9  ,,"??$$c
                    ! $$ccd"3$$P'`?$$,
                    ! $$$P ,cccc$$$$$$        .,,.
                    !,$$$ d$$$$$$$$$$$   _;<!'`!!!!
                    ,>:$$$J$$$$" $$$$$" ,<!!';<!!!!!
    -, "c    ,,      <>`$$$$$$$$c,$$P",;!!!!! !!!!!!!
    _,J$$bcz"        <! "$$$$$$$P""  -!!. q`',!!!!!!
        "$%CL       ,<! cCcCC???"". < b_'',,3,,,,`!`
        """.   ,;<!'``,ccccCCCCc>,!!,"C"d$$???""
        !!!!! '!!! .cCCCCCCCCCCC',!!!! =""=,"
        '!!!!!;<! cCCCCCCCCCCCC'-'!!!!!:<!!; "=,_
        !!!!!!' cCCCCCCCCCC>'  qb,$,`!!!!!!!>   ",cc
        `'''' <CC'".,ccccc'<;`""$$$b,`''()!!    `""-._
        ,r=~"=, `,cCCCCCCCC',!!;,"""??,;!!!!!!          "=,
        `"???"' ,CCCCCCCC ' !!!!!!!!,`!!!!!!!!             "=,
        ccdd, <CCCCCC",pbbbcc,_,,,,,,``''`                  "=, __,,,_
        ,d$$$$$b CCCCC,  =="""")<!!!!!!                    _,,="""=,    ""=,
        ?$$$$$$',CCCCC',!!!!! `!!!!!!!               _,,=="         "=,     )
        ""',, CC'':<!!!!!!!!>,,,``,           _,=="                  "-=-"
        ?$$> ,cCC !!!!!!'`.,.'``''!     ,,+="
            ?$L'CCCC !!!!!!!!!!!!!!:  _,=""
            `$$ CCCC'!~`!!!!!!!!!',z="_,,,,.                .,,;;;;;;;,.
            .,c,`'CC' <!!!' -,',d"',!!!!!!!!!!!>;.   ,;;!!!!!!!!!!!!!!!!!!;
            J$$$b `'<!!!!!;'',cP',!!!!!!!!!!!!!' ,;!!!!!!!!!!!!!!!!!!!!!!!!!,
            `""' `;!!!!!!',eP',;;!!!!!!!!!!!!!;<!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            d$$$$c !!!!',d",;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!>
            ?$$$$F ,,` d",;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        ,c$bc,,,,c$$$P",;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!>
        "?$$P???""_,ccP",``~!!!!!!><!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    `?$cccd$P?""".zd$$$$b,'`!!!!;`<!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    ,c$bcccccccd$$$$$$$$$$$$$c.`!!!!,`!!!!!!!!!!!!!!!!!!!!!!!!!'!!',;!!!!'
    c$$$$$$$$$$$$$$$$$$$$$$$$$". !!!!!!,`'!!!!!!!!!!!!!!!!!!!!!  `<<''''
    $$$$$$$$$$$$$$$$$$$P??",ddP  `!!!!!!!;,`'<!!!!!!!!!!!!!!!' ;!!>
    ",,"",,"?P",ccc,",c$P $$ F      '``,,,      ````'```,<''  '<!'.,,r="
    <$$b`$$$b $$$$$$ d$P d$",'      `!!!!          <!!!!>      ?cP"
    "$$,"$$b ?$$$",$" ""    "=cccccc;;            <!>'
        "',_`"" _,,,,,=~"            """"     "=ccc=4cccc
            `""" 

    The Caterpillar and Alice looked at each other for some time in
    silence:  at last the Caterpillar took the hookah out of its
    mouth, and addressed her in a languid, sleepy voice.

    `If your looking for the white rabbit i've heard theres a clue in the CONFIGERATION of this world?' 
    said the Caterpillar

    to look at the git configeration use git config --list

    'you will need to head back to where you started to before you look for the rabbit, you wont find the rabbit here with me or the others'


EOF

git config caterpillar.hint "WHO ARE YOU (this is not a trick question)"

git add *

msg=${messages[$((RANDOM % ${#messages[@]}))]}
git commit  -m "$msg"
 
cd ..

#something is staged but not commited, go to specific branch first
mkdir cat-in-a-tree

cd cat-in-a-tree

cat > README.md << 'EOF'
                                        .,=,
                                   ,,   `P"?/ ,;,,;-      ,;;;;
                                   P"?b   !!;!!'<(      ,<!!!!!',;
                                  ,;;;;!!!!!!!  _,(;;;;!!!!`,umnmnn
                                ` ;!!!''`<!!!(;'.,,`<!!!!',P"`"MMMML
                                -``,;',;;-'''< d$$$$,`!! eMb`,c`4MMML
                                   !(<!`,c$$$c F  3$",! JMMML`?' MMMM
                                   `!! d???$$$-`""' '`.dMMMMf<$$F`MMM>
                                ,;!!!!,"._,$P" ;!!!!!!,MMMMP'cccr MMM
                        ;!''```''<!!!!!>>,,;;,`!!!!!',MMMMP'`?$$F,MMP
                      ,',nMMMMMMMmuuuuuumMMMMMbmnmnmdMMMM".$$$c` MMM'
                      / MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM".zc,"$P dMM'
                        MMMM". c,"4MMMMMMMMMMMMMMMMP",z,"$$$$ ,dMP'z$r
                        `MMMMMb ?$ ,."""PPPPP""""..=d$$$b ?F.uMMP zP"
                          ? 4MMMn"-$$$$ cccc.cc$$$$,`$$PP",nMMP' cF,$b
                             "MMMMbn,""-?$$$L`$$$PP".,nnMMMP" ,d$$$$$F
                               `TTMMMMMMnnnnnnnnndMMMMPF" , d$$$$$$$"
                                 ;;,?""4444MMMPPPP"" ,;;!!!  """"""
                                4bc.``''!!!;;<!!!!!!!''`,zr '``''`,c
                               <-  .,ccc,  cccc,,cccc$$$$$ 4$$$$$$$$c
                              ! ,d$$$$P""". "$$$$$$$$PF",  ?$$$$$$P".<:
                           c$$ z$$P" ,;!!!!!;  ,,,,,;<!!! <!;;;;;;!!!!!>
                        .< `$P $$" ;!!!!!!!!!' `<!!!!!!!! ,`'!!!!!!''`,,c,
                      z.`!!; ? $" <!!!!!!' ,cc$$c  ,,,,cc <$$ ,c.=$$$$$$$P
                     $$$.`!!!; ` !!!!!!! z$$$$$$"",."????" ? J$$F."",,"?,
                  ,> ?$$$,`'!!!, !!!!!' $$$$$P",<!!!! z..` -=$$$czd$$P `'
                 ;!!> ?$$$b, `!!; `!!! $$$$$$ ;!!!!! d$$$ !!.`$$$$$$Lzdb
               ..<!!!; "$$$$$c.`'!; `' ?$$$$F.!!!!! d$$$$ !!! ?$$$$$$$P"
              .$L <!!!!,`?$$$$$$c,```   "$$$F !!!!! $$$$F'!!! `??????=~
              $$$b `!!!!>,`?$$$$$$$$cc,    "" `'!!! $$$$ <!'`
          .,  ?$$$b.`!!!!!!;,`"?$$$$$$$$$$$$$cc,,.    .,,,zc$
       :<!!!   ?$$$$c.`'!!!!!!!:.`""?$$$$$$$$$$$$$$$$$$$$PFF
    c$$$cc,`- > "$$$$$P= ```````  `       """""""""',,,;;;;
  z$$$$$F,;;, ' ,,, ,;;;;',c$$$$$P".<!!!!!!>; .,`'<!!!!!' .,.
 z$$$P",<!!! c$$$",<!!!!',$$$$$$P <!!!!!!!',zd$$$b.``'` ,d$$$$c,
<$$$',!!!! z$$$$';!!!!!',$$$$$$P !!!!!!!! z$$$$$$$$$b. ?$$$$$$$$$c
<$$';!!!'<$$$$$'<!!!!!! $$$$$$$'<!!!!!!! d$$$$$$$$$$$$$.`?$$$$$$$$b
 $F;!!!! $$$$$$ !!!!!!! $$$$$$$ !!!!!!!',$$$$$$$$$$$$$$$c ?$$$$$$$$>
   !!!!! ?$$$$$,`!!!!!!,`$$$$$$>`!!!!!! d$$$$$$$$$$$$$$$$b ""???"""
   `'!!!.`$$$$$$ !!!!!!! ?$$$$$b !!!!!! ?$$$$$$$$$$$$$$$$$c ?$??$L"$c
      `'> ?$$$$$b'!!!!!!!`?$$$$$ <!!!!!,`$$$$$$$$$$$$$$$$$$ ?$$, $F P
           `"??$$c`!!!!!!:`$$$$$b <!!!!! $$$$$$$$$$$$$$$$$$  $$" "
                                   ````` `$$$$$$$$$$$$$$$$$  "
                                            "?$$$$$$$$$$$$F
                                               "?$$$$$$$$P
                                                 `"$$$$$$
                                                    `?$$P

    There is a large grinning cat in the tree.
    `Would you tell me, please, which way I
    ought to go from here?' asked alice

   `That depends a good deal on where you want to get to,' said
    the Cat.

    "i would start by looking "up""

    I've also heard the rabbit is hidding in a tree amoungst the branches


EOF


git add *

msg=${messages[$((RANDOM % ${#messages[@]}))]}
git commit  -m "$msg"



cd ..

#go to start
git switch start-here

git commit --allow-empty -m "back to start"





