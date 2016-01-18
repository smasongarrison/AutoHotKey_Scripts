;------------------------------------------------------------------------------
; INTRODUCTION
; 
; This is an AutoHotKey script that implements stylistic changes to a given text file.
; 
; Original source code inspired from http://rosettacode.org/wiki/Globally_replace_text_in_several_files#AutoHotkey
;------------------------------------------------------------------------------

FileSelectFolder, WhichFolder,*%A_ScriptDir% ; Ask the user to pick a folder.
SetWorkingDir %WhichFolder%
Loop, %WhichFolder%\*.*
	FileList = %FileList%%A_LoopFileName%`n
Loop, parse, FileList, `n	
{
fileread, contents, %A_LoopField% ; Read the file
fileAppend, %contents%, %A_LoopField%.bak ; Re-create the file with new contents
fileDelete, %A_LoopField%         ; Delete the file

; Simplify
stringReplace, contents, contents, a.m. in the morning, a.m., All
stringReplace, contents, contents, aid and abet, abet, All
stringReplace, contents, contents, old adage, adage, All
stringReplace, contents, contents, add an additional, add, All
stringReplace, contents, contents, add up, add, All
stringReplace, contents, contents, add an additional, add a, All
stringReplace, contents, contents, advance forward, advance, All
stringReplace, contents, contents, alternative choice, alternative, All
stringReplace, contents, contents, veiled ambush, ambush, All
stringReplace, contents, contents, completely annihilate, annihilate, All
stringReplace, contents, contents, annual anniversary, anniversary, All
stringReplace, contents, contents, yearly anniversary, anniversary, All
stringReplace, contents, contents, unnamed anonymous, anonymous, All
stringReplace, contents, contents, favorable approval, approval, All
stringReplace, contents, contents, aquamarine in color, aquamarine, All
stringReplace, contents, contents, as per usual, as usual, All
stringReplace, contents, contents, ascend up, ascend, All
stringReplace, contents, contents, ask a question, ask, All
stringReplace, contents, contents, ask the question, ask, All
stringReplace, contents, contents, assemble together, assemble, All
stringReplace, contents, contents, at the present time, at present, All
stringReplace, contents, contents, ATM machine, ATM, All
stringReplace, contents, contents, attach together, attach, All
stringReplace, contents, contents, autobiography of his life, autobiography, All
stringReplace, contents, contents, autobiography of her own life, autobiography, All
stringReplace, contents, contents, autobiography of his own life, autobiography, All
stringReplace, contents, contents, autobiography of her life, autobiography, All
stringReplace, contents, contents, little baby, baby, All
stringReplace, contents, contents, bald-headed, bald, All
stringReplace, contents, contents, balsa wood, balsa, All
stringReplace, contents, contents, first began, began, All
stringReplace, contents, contents, new beginning, beginning, All
stringReplace, contents, contents, first beginnings, beginnings, All
stringReplace, contents, contents, new beginnings, beginnings, All
stringReplace, contents, contents, first begins, begins, All
stringReplace, contents, contents, desirable benefit, benefit, All
stringReplace, contents, contents, best ever, best, All
stringReplace, contents, contents, biography of her life, biography, All
stringReplace, contents, contents, biography of his life, biography, All
stringReplace, contents, contents, tiny bit, bit, All
stringReplace, contents, contents, black in color, black, All
stringReplace, contents, contents, blend together, blend, All
stringReplace, contents, contents, blue in color, blue, All
stringReplace, contents, contents, preboard as an airplane, board , All
stringReplace, contents, contents, added bonus, bonus, All
stringReplace, contents, contents, bouquet of flowers, bouquet, All
stringReplace, contents, contents, brass in color, brass, All
stringReplace, contents, contents, major breakthrough, breakthrough, All
stringReplace, contents, contents, brief in duration, brief, All
stringReplace, contents, contents, brown in color, brown, All
stringReplace, contents, contents, cacophony of sound, cacophony, All
stringReplace, contents, contents, came at a time when, came when, All
stringReplace, contents, contents, cameo appearance, cameo, All
stringReplace, contents, contents, cancel out, cancel, All
stringReplace, contents, contents, cash money, cash, All
stringReplace, contents, contents, cease and desist, cease, All
stringReplace, contents, contents, absolutely certain, certain, All
stringReplace, contents, contents, circle around, circle, All
stringReplace, contents, contents, circulate around, circulate, All
stringReplace, contents, contents, classify into groups, classify, All
stringReplace, contents, contents, fellow classmate, classmate, All
stringReplace, contents, contents, old cliche, cliche, All
stringReplace, contents, contents, overused cliche, cliche, All
stringReplace, contents, contents, collaborate together, collaborate, All
stringReplace, contents, contents, joint collaboration, collaboration, All
stringReplace, contents, contents, fellow colleague, colleague, All
stringReplace, contents, contents, combine together, combine, All
stringReplace, contents, contents, commute back and forth, commute, All
stringReplace, contents, contents, compete with each other, compete, All
stringReplace, contents, contents, first conceive, conceive, All
stringReplace, contents, contents, final conclusion, conclusion, All
stringReplace, contents, contents, confer together, confer, All
stringReplace, contents, contents, direct confrontation, confrontation, All
stringReplace, contents, contents, confused state, confused, All
stringReplace, contents, contents, connect together, connect, All
stringReplace, contents, contents, connect up, connect, All
stringReplace, contents, contents, consensus of opinion, consensus, All
stringReplace, contents, contents, take into consideration, consider, All
stringReplace, contents, contents, new construction, construction, All
stringReplace, contents, contents, oral conversation, conversation, All
stringReplace, contents, contents, cooperate together, cooperate, All
stringReplace, contents, contents, mutual cooperation, cooperation, All
stringReplace, contents, contents, copper in color, copper, All
stringReplace, contents, contents, could possibly, could, All
stringReplace, contents, contents, originally creat, creat, All
stringReplace, contents, contents, crisis situation, crisis, All
stringReplace, contents, contents, curative process, curative, All
stringReplace, contents, contents, usual custom, custom, All
stringReplace, contents, contents, old custom, custom, All
stringReplace, contents, contents, cyan in color, cyan, All
stringReplace, contents, contents, on a daily basis, daily, All
stringReplace, contents, contents, do damage to, damage, All
stringReplace, contents, contents, serious danger, danger, All
stringReplace, contents, contents, definite decision, decision, All
stringReplace, contents, contents, depreciate in value, depreciate, All
stringReplace, contents, contents, descend down, descend, All
stringReplace, contents, contents, completely destroy, destroy, All
stringReplace, contents, contents, total destruction, destruction, All
stringReplace, contents, contents, difficult dilemma, dilemma, All
stringReplace, contents, contents, disappear from sight, disappear, All
stringReplace, contents, contents, illustrated drawing, drawing, All
stringReplace, contents, contents, drop down, drop, All
stringReplace, contents, contents, sand dune, dune, All
stringReplace, contents, contents, during the course of, during, All
stringReplace, contents, contents, during a course of, during a, All
stringReplace, contents, contents, during the course of, during the, All
stringReplace, contents, contents, dwindle down, dwindle, All
stringReplace, contents, contents, each and every, each, All
stringReplace, contents, contents, earlier in time, earlier, All
stringReplace, contents, contents, completely eliminate, eliminate, All
stringReplace, contents, contents, eliminate altogether, eliminate, All
stringReplace, contents, contents, entirely eliminate, eliminate, All
stringReplace, contents, contents, burning embers, embers, All
stringReplace, contents, contents, emergency situation, emergency, All
stringReplace, contents, contents, unexpected emergency, emergency, All
stringReplace, contents, contents, empty out, empty, All
stringReplace, contents, contents, enclosed herein, enclosed, All
stringReplace, contents, contents, final end, end, All
stringReplace, contents, contents, completely engulf, engulf, All
stringReplace, contents, contents, enter in, enter, All
stringReplace, contents, contents, equal to one another, equal, All
stringReplace, contents, contents, eradicate completely, eradicate, All
stringReplace, contents, contents, absolutely essential, essential, All
stringReplace, contents, contents, basic essential, essential, All
stringReplace, contents, contents, estimated at about, estimated, All
stringReplace, contents, contents, estimated roughly, estimated, All
stringReplace, contents, contents, estimated at about, estimated at, All
stringReplace, contents, contents, estimates at about, estimates, All
stringReplace, contents, contents, estimates roughly, estimates, All
stringReplace, contents, contents, and etc., etc., All
stringReplace, contents, contents, evolve over time, evolve, All
stringReplace, contents, contents, overexaggerate, exaggerate, All
stringReplace, contents, contents, over exaggerate, exaggerate, All
stringReplace, contents, contents, with the exception of, except, All
stringReplace, contents, contents, actual experience, experience, All
stringReplace, contents, contents, past experience, experience, All
stringReplace, contents, contents, knowledgeable expert, expert, All
stringReplace, contents, contents, suddenly explod, explod, All
stringReplace, contents, contents, extradite back, extradite, All
stringReplace, contents, contents, actual fact, fact, All
stringReplace, contents, contents, true fact, fact, All
stringReplace, contents, contents, actual facts, facts, All
stringReplace, contents, contents, passing fad, fad, All
stringReplace, contents, contents, fall down, fall, All
stringReplace, contents, contents, major feat, feat, All
stringReplace, contents, contents, few in number, few, All
stringReplace, contents, contents, completely fill, fill, All
stringReplace, contents, contents, completely filled, filled, All
stringReplace, contents, contents, filled to capacity, filled , All
stringReplace, contents, contents, completely finish, finish, All
stringReplace, contents, contents, first and foremost, first, All
stringReplace, contents, contents, first of all, first , All
stringReplace, contents, contents, closed fist, fist, All
stringReplace, contents, contents, flesh in color, flesh, All
stringReplace, contents, contents, fly through the air, fly , All
stringReplace, contents, contents, follow after, follow , All
stringReplace, contents, contents, for a number of days, for days, All
stringReplace, contents, contents, for a period of days, for days, All
stringReplace, contents, contents, first and foremost, foremost, All
stringReplace, contents, contents, personal friend, friend, All
stringReplace, contents, contents, full to capacity, full , All
stringReplace, contents, contents, basic fundamentals, fundamentals, All
stringReplace, contents, contents, basic fundamental, fundamentals, All
stringReplace, contents, contents, fuse together, fuse , All
stringReplace, contents, contents, gather together, gather , All
stringReplace, contents, contents, free gift, gift, All
stringReplace, contents, contents, ultimate goal, goal, All
stringReplace, contents, contents, gold in color, gold, All
stringReplace, contents, contents, GOP party, GOP , All
stringReplace, contents, contents, former graduate, graduate, All
stringReplace, contents, contents, gray in color, gray, All
stringReplace, contents, contents, GRE exam, GRE , All
stringReplace, contents, contents, green in color, green, All
stringReplace, contents, contents, grey in color, grey, All
stringReplace, contents, contents, grow in size, grow , All
stringReplace, contents, contents, absolutely guarantee, guarantee, All
stringReplace, contents, contents, invited guest, guest, All
stringReplace, contents, contents, armed gunm, gunm, All
stringReplace, contents, contents, native habitat, habitat, All
stringReplace, contents, contents, had done previously, had done , All
stringReplace, contents, contents, two equal halves, halves, All
stringReplace, contents, contents, do harm to, harm, All
stringReplace, contents, contents, safe haven, haven, All
stringReplace, contents, contents, preheat, heat, All
stringReplace, contents, contents, heat up, heat , All
stringReplace, contents, contents, past history, history, All
stringReplace, contents, contents, HIV virus, HIV , All
stringReplace, contents, contents, hoist up, hoist , All
stringReplace, contents, contents, empty hole, hole, All
stringReplace, contents, contents, head honcho, honcho, All
stringReplace, contents, contents, hurry up, hurry , All
stringReplace, contents, contents, frozen ice, ice, All
stringReplace, contents, contents, same identical, identical, All
stringReplace, contents, contents, positive identification, identification, All
stringReplace, contents, contents, foreign import, import, All
stringReplace, contents, contents, sudden impulse, impulse, All
stringReplace, contents, contents, outside in the yard, in the yard, All
stringReplace, contents, contents, incredible to believe, incredible , All
stringReplace, contents, contents, current incumbent, incumbent, All
stringReplace, contents, contents, present incumbent, incumbent, All
stringReplace, contents, contents, indicted on a charge, indicted , All
stringReplace, contents, contents, private industry, industry, All
stringReplace, contents, contents, harmful injuries, injuries, All
stringReplace, contents, contents, new innovation, innovation, All
stringReplace, contents, contents, input into, input , All
stringReplace, contents, contents, natural instinct, instinct, All
stringReplace, contents, contents, integrate together, integrate , All
stringReplace, contents, contents, integrate with each other, integrate , All
stringReplace, contents, contents, mutually interdependent, interdependent, All
stringReplace, contents, contents, interdependent on each other, interdependent , All
stringReplace, contents, contents, introduced a new, introduced , All
stringReplace, contents, contents, introduced for the first time, introduced , All
stringReplace, contents, contents, new invention, invention, All
stringReplace, contents, contents, ISBN number, ISBN , All
stringReplace, contents, contents, join together, join, All
stringReplace, contents, contents, join together, join , All
stringReplace, contents, contents, khaki in color, khaki, All
stringReplace, contents, contents, different kind, kind, All
stringReplace, contents, contents, kneel down, kneel , All
stringReplace, contents, contents, lag behind, lag , All
stringReplace, contents, contents, as of late, lately, All
stringReplace, contents, contents, of late , lately , All
stringReplace, contents, contents, later time, later , All
stringReplace, contents, contents, LCD display, LCD , All
stringReplace, contents, contents, number-one leader in , leader in , All
stringReplace, contents, contents, lift up, lift , All
stringReplace, contents, contents, look back in retrospect, look back , All
stringReplace, contents, contents, look ahead to the future, look to the future, All
stringReplace, contents, contents, three-way love triangle, love triangle, All
stringReplace, contents, contents, made out of, made of, All
stringReplace, contents, contents, magenta in color, magenta, All
stringReplace, contents, contents, constantly maintain, maintain, All
stringReplace, contents, contents, manually by hand, manually , All
stringReplace, contents, contents, boat marina, marina, All
stringReplace, contents, contents, maroon in color, maroon, All
stringReplace, contents, contents, face mask, mask, All
stringReplace, contents, contents, may possibly, may , All
stringReplace, contents, contents, meet together, meet, All
stringReplace, contents, contents, meet together, meet , All
stringReplace, contents, contents, meet with each other, meet , All
stringReplace, contents, contents, past memor, memor, All
stringReplace, contents, contents, merge together, merge, All
stringReplace, contents, contents, merge together, merge , All
stringReplace, contents, contents, twelve midnight, midnight, All
stringReplace, contents, contents, possibly might, might, All
stringReplace, contents, contents, might possibly, might , All
stringReplace, contents, contents, minestrone soup, minestrone , All
stringReplace, contents, contents, unintended mistake, mistake, All
stringReplace, contents, contents, unintentional mistake, mistake, All
stringReplace, contents, contents, mix together, mix , All
stringReplace, contents, contents, brief moment, moment, All
stringReplace, contents, contents, majority of, most, All
stringReplace, contents, contents, wall mural, mural, All
stringReplace, contents, contents, mutual respect for each other, mutual respect , All
stringReplace, contents, contents, myriad of, myriad, All
stringReplace, contents, contents, nape of his neck, nape , All
stringReplace, contents, contents, nape of her neck, nape , All
stringReplace, contents, contents, absolutely necessary, necessary, All
stringReplace, contents, contents, basic necessities, necessities, All
stringReplace, contents, contents, in need of, need, All
stringReplace, contents, contents, never before, never , All
stringReplace, contents, contents, none at all, none , All
stringReplace, contents, contents, twelve noon, noon, All
stringReplace, contents, contents, nostalgia for the past, nostalgia , All
stringReplace, contents, contents, advance notice, notice, All
stringReplace, contents, contents, off of, off , All
stringReplace, contents, contents, open up, open , All
stringReplace, contents, contents, exposed opening, opening, All
stringReplace, contents, contents, personal opinion, opinion, All
stringReplace, contents, contents, completely opposite, opposite, All
stringReplace, contents, contents, polar opposite, opposite, All
stringReplace, contents, contents, orange in color, orange, All
stringReplace, contents, contents, orchid in color, orchid, All
stringReplace, contents, contents, final outcome, outcome, All
stringReplace, contents, contents, output out of, output , All
stringReplace, contents, contents, outside of, outside , All
stringReplace, contents, contents, over with, over , All
stringReplace, contents, contents, overly aggressive, overaggressive, All
stringReplace, contents, contents, overly careful, overcareful, All
stringReplace, contents, contents, p.m. in the evening, p.m., All
stringReplace, contents, contents, palm of the hand, palm , All
stringReplace, contents, contents, universal panacea, panacea, All
stringReplace, contents, contents, component part, part, All
stringReplace, contents, contents, now pending, pending, All
stringReplace, contents, contents, penetrate into, penetrate , All
stringReplace, contents, contents, as per, per, All
stringReplace, contents, contents, period of time, period , All
stringReplace, contents, contents, still persist, persist, All
stringReplace, contents, contents, pick and choose, pick , All
stringReplace, contents, contents, PIN number, PIN , All
stringReplace, contents, contents, pizza pie, pizza , All
stringReplace, contents, contents, plan ahead, plan, All
stringReplace, contents, contents, proposed plan, plan, All
stringReplace, contents, contents, plan ahead, plan , All
stringReplace, contents, contents, plan in advance, plan , All
stringReplace, contents, contents, advanced planning, planning, All
stringReplace, contents, contents, advance planning, planning, All
stringReplace, contents, contents, future plans, plans, All
stringReplace, contents, contents, plunge down, plunge , All
stringReplace, contents, contents, sharp point, point, All
stringReplace, contents, contents, postpone until later, postpone, All
stringReplace, contents, contents, postpone until later, postpone , All
stringReplace, contents, contents, pouring down rain, pouring rain, All
stringReplace, contents, contents, very pregnant, pregnant, All
stringReplace, contents, contents, present time, present , All
stringReplace, contents, contents, false pretense, pretense, All
stringReplace, contents, contents, advance preview, preview, All
stringReplace, contents, contents, previously listed above, previously listed , All
stringReplace, contents, contents, proceed ahead, proceed , All
stringReplace, contents, contents, in a prompt manner, promptly, All
stringReplace, contents, contents, artificial prosthesis, prosthesis, All
stringReplace, contents, contents, protest against, protest, All
stringReplace, contents, contents, protest against, protest , All
stringReplace, contents, contents, protesting against, protesting, All
stringReplace, contents, contents, old proverb, proverb, All
stringReplace, contents, contents, close proximity, proximity, All
stringReplace, contents, contents, general public, public, All
stringReplace, contents, contents, pursue after, pursue , All
stringReplace, contents, contents, quartz in color, quartz, All
stringReplace, contents, contents, raise up, raise , All
stringReplace, contents, contents, RAM memory, RAM , All
stringReplace, contents, contents, reason why, reason , All
stringReplace, contents, contents, reason is because, reason is , All
stringReplace, contents, contents, past record, record, All
stringReplace, contents, contents, all-time record, record, All
stringReplace, contents, contents, prerecord, record, All
stringReplace, contents, contents, new recruit, recruit, All
stringReplace, contents, contents, recur again, recur , All
stringReplace, contents, contents, future recurrence, recurrence, All
stringReplace, contents, contents, red in color, red, All
stringReplace, contents, contents, re-elect for another term, re-elect , All
stringReplace, contents, contents, refer back, refer , All
stringReplace, contents, contents, reflect back, reflect , All
stringReplace, contents, contents, irregardless, regardless, All
stringReplace, contents, contents, on a regular basis, regularly, All
stringReplace, contents, contents, on a relative basis , relatively, All
stringReplace, contents, contents, still remain, remain, All
stringReplace, contents, contents, current trend, rend, All
stringReplace, contents, contents, repeat again, repeat, All
stringReplace, contents, contents, repeat again, repeat , All
stringReplace, contents, contents, reply back, reply , All
stringReplace, contents, contents, advanced reservation, reservation, All
stringReplace, contents, contents, advance reservations, reservations, All
stringReplace, contents, contents, local residents, residents, All
stringReplace, contents, contents, end result, result, All
stringReplace, contents, contents, retreat back, retreat , All
stringReplace, contents, contents, revert back, revert, All
stringReplace, contents, contents, revert back, revert , All
stringReplace, contents, contents, rise up, rise , All
stringReplace, contents, contents, round in shape, round , All
stringReplace, contents, contents, regular routine, routine, All
stringReplace, contents, contents, Please RSVP, RSVP, All
stringReplace, contents, contents, exact same, same, All
stringReplace, contents, contents, same exact, same , All
stringReplace, contents, contents, safe sanctuary, sanctuary, All
stringReplace, contents, contents, full satisfaction, satisfaction, All
stringReplace, contents, contents, scarlet in color, scarlet, All
stringReplace, contents, contents, scrutinize in detail, scrutinize , All
stringReplace, contents, contents, close scrutiny, scrutiny, All
stringReplace, contents, contents, careful scrutiny, scrutiny, All
stringReplace, contents, contents, separated apart from each other, separated , All
stringReplace, contents, contents, share together, share , All
stringReplace, contents, contents, shiny in appearance, shiny , All
stringReplace, contents, contents, shut down, shut , All
stringReplace, contents, contents, sienna in color, sienna, All
stringReplace, contents, contents, since the time when, since, All
stringReplace, contents, contents, truly sincere, sincere, All
stringReplace, contents, contents, skipped over, skipped , All
stringReplace, contents, contents, slow speed, slow , All
stringReplace, contents, contents, small size, small , All
stringReplace, contents, contents, white snow, snow, All
stringReplace, contents, contents, soft to the touch, soft , All
stringReplace, contents, contents, soft in texture, soft , All
stringReplace, contents, contents, sole of the foot, sole , All
stringReplace, contents, contents, empty space, space, All
stringReplace, contents, contents, small speck, speck, All
stringReplace, contents, contents, spell out in detail, spell out, All
stringReplace, contents, contents, spell out in detail, spell out , All
stringReplace, contents, contents, spliced together, spliced , All
stringReplace, contents, contents, start off, start , All
stringReplace, contents, contents, start on, start , All
stringReplace, contents, contents, anonymous stranger, stranger, All
stringReplace, contents, contents, fellow student, student, All
stringReplace, contents, contents, live studio audience, studio audience, All
stringReplace, contents, contents, underground subway, subway, All
stringReplace, contents, contents, brief summary, summary, All
stringReplace, contents, contents, absolutely sure, sure, All
stringReplace, contents, contents, unexpected surprise, surprise, All
stringReplace, contents, contents, completely surround, surround, All
stringReplace, contents, contents, surrounded on all sides, surrounded , All
stringReplace, contents, contents, tall in height, tall , All
stringReplace, contents, contents, tall in stature, tall , All
stringReplace, contents, contents, tan in color, tan, All
stringReplace, contents, contents, temper tantrum, tantrum, All
stringReplace, contents, contents, mental telepathy, telepathy, All
stringReplace, contents, contents, on a temporary basis, temporarily, All
stringReplace, contents, contents, ten in number, ten , All
stringReplace, contents, contents, time period, time , All
stringReplace, contents, contents, in order to, to, All
stringReplace, contents, contents, sum total, total, All
stringReplace, contents, contents, therapeutic treatment, treatment, All
stringReplace, contents, contents, open trench, trench, All
stringReplace, contents, contents, made an effort, tried, All
stringReplace, contents, contents, make an effort, try, All
stringReplace, contents, contents, hollow tube, tube, All
stringReplace, contents, contents, tuna fish, tuna , All
stringReplace, contents, contents, frozen tundra, tundra, All
stringReplace, contents, contents, turquoise in color, turquoise, All
stringReplace, contents, contents, final ultimatum, ultimatum, All
stringReplace, contents, contents, undergraduate student, undergraduate , All
stringReplace, contents, contents, very unique, unique, All
stringReplace, contents, contents, single unit, unit, All
stringReplace, contents, contents, UPC code, UPC , All
stringReplace, contents, contents, utilize, use, All
stringReplace, contents, contents, utilizable, useable, All
stringReplace, contents, contents, utilizing, using, All
stringReplace, contents, contents, vacillate back and forth, vacillate , All
stringReplace, contents, contents, former veteran, veteran, All
stringReplace, contents, contents, violet in color, violet, All
stringReplace, contents, contents, visible to the eye, visible , All
stringReplace, contents, contents, warn in advance, warn , All
stringReplace, contents, contents, advanced warning, warning, All
stringReplace, contents, contents, advance warning, warning, All
stringReplace, contents, contents, weather conditions, weather , All
stringReplace, contents, contents, weather situation, weather , All
stringReplace, contents, contents, from whence, whence, All
stringReplace, contents, contents, whether or not, whether , All
stringReplace, contents, contents, whilst, while, All
stringReplace, contents, contents, white in color, white, All
stringReplace, contents, contents, live witness, witness, All
stringReplace, contents, contents, write down, write, All
stringReplace, contents, contents, writes down, writes, All
stringReplace, contents, contents, writing down, writing, All
stringReplace, contents, contents, written down, written, All
stringReplace, contents, contents, wrote down, wrote, All
stringReplace, contents, contents, on a yearly basis, yearly, All
stringReplace, contents, contents, yellow in color, yellow, All
stringReplace, contents, contents, affirmative yes, yes, All

stringReplace, contents, contents, A.m. in the morning, A.m., All
stringReplace, contents, contents, Aid and abet, Abet, All
stringReplace, contents, contents, Old adage, Adage, All
stringReplace, contents, contents, Add an additional, Add, All
stringReplace, contents, contents, Add up, Add, All
stringReplace, contents, contents, Add an additional, Add a, All
stringReplace, contents, contents, Advance forward, Advance, All
stringReplace, contents, contents, Alternative choice, Alternative, All
stringReplace, contents, contents, Veiled ambush, Ambush, All
stringReplace, contents, contents, Completely annihilate, Annihilate, All
stringReplace, contents, contents, Annual anniversary, Anniversary, All
stringReplace, contents, contents, Yearly anniversary, Anniversary, All
stringReplace, contents, contents, Unnamed anonymous, Anonymous, All
stringReplace, contents, contents, Favorable approval, Approval, All
stringReplace, contents, contents, Aquamarine in color, Aquamarine, All
stringReplace, contents, contents, As per usual, As usual, All
stringReplace, contents, contents, Ascend up, Ascend, All
stringReplace, contents, contents, Ask a question, Ask, All
stringReplace, contents, contents, Ask the question, Ask, All
stringReplace, contents, contents, Assemble together, Assemble, All
stringReplace, contents, contents, At the present time, At present, All
stringReplace, contents, contents, ATM machine, ATM, All
stringReplace, contents, contents, Attach together, Attach, All
stringReplace, contents, contents, Autobiography of his life, Autobiography, All
stringReplace, contents, contents, Autobiography of her own life, Autobiography, All
stringReplace, contents, contents, Autobiography of his own life, Autobiography, All
stringReplace, contents, contents, Autobiography of her life, Autobiography, All
stringReplace, contents, contents, Little baby, Baby, All
stringReplace, contents, contents, Bald-headed, Bald, All
stringReplace, contents, contents, Balsa wood, Balsa, All
stringReplace, contents, contents, First began, Began, All
stringReplace, contents, contents, New beginning, Beginning, All
stringReplace, contents, contents, First beginnings, Beginnings, All
stringReplace, contents, contents, New beginnings, Beginnings, All
stringReplace, contents, contents, First begins, Begins, All
stringReplace, contents, contents, Desirable benefit, Benefit, All
stringReplace, contents, contents, Best ever, Best, All
stringReplace, contents, contents, Biography of her life, Biography, All
stringReplace, contents, contents, Biography of his life, Biography, All
stringReplace, contents, contents, Tiny bit, Bit, All
stringReplace, contents, contents, Black in color, Black, All
stringReplace, contents, contents, Blend together, Blend, All
stringReplace, contents, contents, Blue in color, Blue, All
stringReplace, contents, contents, Preboard as an airplane, Board , All
stringReplace, contents, contents, Added bonus, Bonus, All
stringReplace, contents, contents, Bouquet of flowers, Bouquet, All
stringReplace, contents, contents, Brass in color, Brass, All
stringReplace, contents, contents, Major breakthrough, Breakthrough, All
stringReplace, contents, contents, Brief in duration, Brief, All
stringReplace, contents, contents, Brown in color, Brown, All
stringReplace, contents, contents, Cacophony of sound, Cacophony, All
stringReplace, contents, contents, Came at a time when, Came when, All
stringReplace, contents, contents, Cameo appearance, Cameo, All
stringReplace, contents, contents, Cancel out, Cancel, All
stringReplace, contents, contents, Cash money, Cash, All
stringReplace, contents, contents, Cease and desist, Cease, All
stringReplace, contents, contents, Absolutely certain, Certain, All
stringReplace, contents, contents, Circle around, Circle, All
stringReplace, contents, contents, Circulate around, Circulate, All
stringReplace, contents, contents, Classify into groups, Classify, All
stringReplace, contents, contents, Fellow classmate, Classmate, All
stringReplace, contents, contents, Old cliche, Cliche, All
stringReplace, contents, contents, Overused cliche, Cliche, All
stringReplace, contents, contents, Collaborate together, Collaborate, All
stringReplace, contents, contents, Joint collaboration, Collaboration, All
stringReplace, contents, contents, Fellow colleague, Colleague, All
stringReplace, contents, contents, Combine together, Combine, All
stringReplace, contents, contents, Commute back and forth, Commute, All
stringReplace, contents, contents, Compete with each other, Compete, All
stringReplace, contents, contents, First conceive, Conceive, All
stringReplace, contents, contents, Final conclusion, Conclusion, All
stringReplace, contents, contents, Confer together, Confer, All
stringReplace, contents, contents, Direct confrontation, Confrontation, All
stringReplace, contents, contents, Confused state, Confused, All
stringReplace, contents, contents, Connect together, Connect, All
stringReplace, contents, contents, Connect up, Connect, All
stringReplace, contents, contents, Consensus of opinion, Consensus, All
stringReplace, contents, contents, Take into consideration, Consider, All
stringReplace, contents, contents, New construction, Construction, All
stringReplace, contents, contents, Oral conversation, Conversation, All
stringReplace, contents, contents, Cooperate together, Cooperate, All
stringReplace, contents, contents, Mutual cooperation, Cooperation, All
stringReplace, contents, contents, Copper in color, Copper, All
stringReplace, contents, contents, Could possibly, Could, All
stringReplace, contents, contents, Originally creat, Creat, All
stringReplace, contents, contents, Crisis situation, Crisis, All
stringReplace, contents, contents, Curative process, Curative, All
stringReplace, contents, contents, Usual custom, Custom, All
stringReplace, contents, contents, Old custom, Custom, All
stringReplace, contents, contents, Cyan in color, Cyan, All
stringReplace, contents, contents, On a daily basis, Daily, All
stringReplace, contents, contents, Do damage to, Damage, All
stringReplace, contents, contents, Serious danger, Danger, All
stringReplace, contents, contents, Definite decision, Decision, All
stringReplace, contents, contents, Depreciate in value, Depreciate, All
stringReplace, contents, contents, Descend down, Descend, All
stringReplace, contents, contents, Completely destroy, Destroy, All
stringReplace, contents, contents, Total destruction, Destruction, All
stringReplace, contents, contents, Difficult dilemma, Dilemma, All
stringReplace, contents, contents, Disappear from sight, Disappear, All
stringReplace, contents, contents, Illustrated drawing, Drawing, All
stringReplace, contents, contents, Drop down, Drop, All
stringReplace, contents, contents, Sand dune, Dune, All
stringReplace, contents, contents, During the course of, During, All
stringReplace, contents, contents, During a course of, During a, All
stringReplace, contents, contents, During the course of, During the, All
stringReplace, contents, contents, Dwindle down, Dwindle, All
stringReplace, contents, contents, Each and every, Each, All
stringReplace, contents, contents, Earlier in time, Earlier, All
stringReplace, contents, contents, Completely eliminate, Eliminate, All
stringReplace, contents, contents, Eliminate altogether, Eliminate, All
stringReplace, contents, contents, Entirely eliminate, Eliminate, All
stringReplace, contents, contents, Burning embers, Embers, All
stringReplace, contents, contents, Emergency situation, Emergency, All
stringReplace, contents, contents, Unexpected emergency, Emergency, All
stringReplace, contents, contents, Empty out, Empty, All
stringReplace, contents, contents, Enclosed herein, Enclosed, All
stringReplace, contents, contents, Final end, End, All
stringReplace, contents, contents, Completely engulf, Engulf, All
stringReplace, contents, contents, Enter in, Enter, All
stringReplace, contents, contents, Equal to one another, Equal, All
stringReplace, contents, contents, Eradicate completely, Eradicate, All
stringReplace, contents, contents, Absolutely essential, Essential, All
stringReplace, contents, contents, Basic essential, Essential, All
stringReplace, contents, contents, Estimated at about, Estimated, All
stringReplace, contents, contents, Estimated roughly, Estimated, All
stringReplace, contents, contents, Estimated at about, Estimated at, All
stringReplace, contents, contents, Estimates at about, Estimates, All
stringReplace, contents, contents, Estimates roughly, Estimates, All
stringReplace, contents, contents, And etc., Etc., All
stringReplace, contents, contents, Evolve over time, Evolve, All
stringReplace, contents, contents, Overexaggerate, Exaggerate, All
stringReplace, contents, contents, Over exaggerate, Exaggerate, All
stringReplace, contents, contents, With the exception of, Except, All
stringReplace, contents, contents, Actual experience, Experience, All
stringReplace, contents, contents, Past experience, Experience, All
stringReplace, contents, contents, Knowledgeable expert, Expert, All
stringReplace, contents, contents, Suddenly explod, Explod, All
stringReplace, contents, contents, Extradite back, Extradite, All
stringReplace, contents, contents, Actual fact, Fact, All
stringReplace, contents, contents, True fact, Fact, All
stringReplace, contents, contents, Actual facts, Facts, All
stringReplace, contents, contents, Passing fad, Fad, All
stringReplace, contents, contents, Fall down, Fall, All
stringReplace, contents, contents, Major feat, Feat, All
stringReplace, contents, contents, Few in number, Few, All
stringReplace, contents, contents, Completely fill, Fill, All
stringReplace, contents, contents, Completely filled, Filled, All
stringReplace, contents, contents, Filled to capacity, Filled , All
stringReplace, contents, contents, Completely finish, Finish, All
stringReplace, contents, contents, First and foremost, First, All
stringReplace, contents, contents, First of all, First , All
stringReplace, contents, contents, Closed fist, Fist, All
stringReplace, contents, contents, Flesh in color, Flesh, All
stringReplace, contents, contents, Fly through the air, Fly , All
stringReplace, contents, contents, Follow after, Follow , All
stringReplace, contents, contents, For a number of days, For days, All
stringReplace, contents, contents, For a period of days, For days, All
stringReplace, contents, contents, First and foremost, Foremost, All
stringReplace, contents, contents, Personal friend, Friend, All
stringReplace, contents, contents, Full to capacity, Full , All
stringReplace, contents, contents, Basic fundamentals, Fundamentals, All
stringReplace, contents, contents, Basic fundamental, Fundamentals, All
stringReplace, contents, contents, Fuse together, Fuse , All
stringReplace, contents, contents, Gather together, Gather , All
stringReplace, contents, contents, Free gift, Gift, All
stringReplace, contents, contents, Ultimate goal, Goal, All
stringReplace, contents, contents, Gold in color, Gold, All
stringReplace, contents, contents, GOP party, GOP , All
stringReplace, contents, contents, Former graduate, Graduate, All
stringReplace, contents, contents, Gray in color, Gray, All
stringReplace, contents, contents, GRE exam, GRE , All
stringReplace, contents, contents, Green in color, Green, All
stringReplace, contents, contents, Grey in color, Grey, All
stringReplace, contents, contents, Grow in size, Grow , All
stringReplace, contents, contents, Absolutely guarantee, Guarantee, All
stringReplace, contents, contents, Invited guest, Guest, All
stringReplace, contents, contents, Armed gunm, Gunm, All
stringReplace, contents, contents, Native habitat, Habitat, All
stringReplace, contents, contents, Had done previously, Had done , All
stringReplace, contents, contents, Two equal halves, Halves, All
stringReplace, contents, contents, Do harm to, Harm, All
stringReplace, contents, contents, Safe haven, Haven, All
stringReplace, contents, contents, Preheat, Heat, All
stringReplace, contents, contents, Heat up, Heat , All
stringReplace, contents, contents, Past history, History, All
stringReplace, contents, contents, HIV virus, HIV , All
stringReplace, contents, contents, Hoist up, Hoist , All
stringReplace, contents, contents, Empty hole, Hole, All
stringReplace, contents, contents, Head honcho, Honcho, All
stringReplace, contents, contents, Hurry up, Hurry , All
stringReplace, contents, contents, Frozen ice, Ice, All
stringReplace, contents, contents, Same identical, Identical, All
stringReplace, contents, contents, Positive identification, Identification, All
stringReplace, contents, contents, Foreign import, Import, All
stringReplace, contents, contents, Sudden impulse, Impulse, All
stringReplace, contents, contents, Outside in the yard, In the yard, All
stringReplace, contents, contents, Incredible to believe, Incredible , All
stringReplace, contents, contents, Current incumbent, Incumbent, All
stringReplace, contents, contents, Present incumbent, Incumbent, All
stringReplace, contents, contents, Indicted on a charge, Indicted , All
stringReplace, contents, contents, Private industry, Industry, All
stringReplace, contents, contents, Harmful injuries, Injuries, All
stringReplace, contents, contents, New innovation, Innovation, All
stringReplace, contents, contents, Input into, Input , All
stringReplace, contents, contents, Natural instinct, Instinct, All
stringReplace, contents, contents, Integrate together, Integrate , All
stringReplace, contents, contents, Integrate with each other, Integrate , All
stringReplace, contents, contents, Mutually interdependent, Interdependent, All
stringReplace, contents, contents, Interdependent on each other, Interdependent , All
stringReplace, contents, contents, Introduced a new, Introduced , All
stringReplace, contents, contents, Introduced for the first time, Introduced , All
stringReplace, contents, contents, New invention, Invention, All
stringReplace, contents, contents, ISBN number, ISBN , All
stringReplace, contents, contents, Join together, Join, All
stringReplace, contents, contents, Join together, Join , All
stringReplace, contents, contents, Khaki in color, Khaki, All
stringReplace, contents, contents, Different kind, Kind, All
stringReplace, contents, contents, Kneel down, Kneel , All
stringReplace, contents, contents, Lag behind, Lag , All
stringReplace, contents, contents, As of late, Lately, All
stringReplace, contents, contents, Of late , Lately , All
stringReplace, contents, contents, Later time, Later , All
stringReplace, contents, contents, LCD display, LCD , All
stringReplace, contents, contents, Number-one leader in , Leader in , All
stringReplace, contents, contents, Lift up, Lift , All
stringReplace, contents, contents, Look back in retrospect, Look back , All
stringReplace, contents, contents, Look ahead to the future, Look to the future, All
stringReplace, contents, contents, Three-way love triangle, Love triangle, All
stringReplace, contents, contents, Made out of, Made of, All
stringReplace, contents, contents, Magenta in color, Magenta, All
stringReplace, contents, contents, Constantly maintain, Maintain, All
stringReplace, contents, contents, Manually by hand, Manually , All
stringReplace, contents, contents, Boat marina, Marina, All
stringReplace, contents, contents, Maroon in color, Maroon, All
stringReplace, contents, contents, Face mask, Mask, All
stringReplace, contents, contents, May possibly, May , All
stringReplace, contents, contents, Meet together, Meet, All
stringReplace, contents, contents, Meet together, Meet , All
stringReplace, contents, contents, Meet with each other, Meet , All
stringReplace, contents, contents, Past memor, Memor, All
stringReplace, contents, contents, Merge together, Merge, All
stringReplace, contents, contents, Merge together, Merge , All
stringReplace, contents, contents, Twelve midnight, Midnight, All
stringReplace, contents, contents, Possibly might, Might, All
stringReplace, contents, contents, Might possibly, Might , All
stringReplace, contents, contents, Minestrone soup, Minestrone , All
stringReplace, contents, contents, Unintended mistake, Mistake, All
stringReplace, contents, contents, Unintentional mistake, Mistake, All
stringReplace, contents, contents, Mix together, Mix , All
stringReplace, contents, contents, Brief moment, Moment, All
stringReplace, contents, contents, Majority of, Most, All
stringReplace, contents, contents, Wall mural, Mural, All
stringReplace, contents, contents, Mutual respect for each other, Mutual respect , All
stringReplace, contents, contents, Myriad of, Myriad, All
stringReplace, contents, contents, Nape of his neck, Nape , All
stringReplace, contents, contents, Nape of her neck, Nape , All
stringReplace, contents, contents, Absolutely necessary, Necessary, All
stringReplace, contents, contents, Basic necessities, Necessities, All
stringReplace, contents, contents, In need of, Need, All
stringReplace, contents, contents, Never before, Never , All
stringReplace, contents, contents, None at all, None , All
stringReplace, contents, contents, Twelve noon, Noon, All
stringReplace, contents, contents, Nostalgia for the past, Nostalgia , All
stringReplace, contents, contents, Advance notice, Notice, All
stringReplace, contents, contents, Off of, Off , All
stringReplace, contents, contents, Open up, Open , All
stringReplace, contents, contents, Exposed opening, Opening, All
stringReplace, contents, contents, Personal opinion, Opinion, All
stringReplace, contents, contents, Completely opposite, Opposite, All
stringReplace, contents, contents, Polar opposite, Opposite, All
stringReplace, contents, contents, Orange in color, Orange, All
stringReplace, contents, contents, Orchid in color, Orchid, All
stringReplace, contents, contents, Final outcome, Outcome, All
stringReplace, contents, contents, Output out of, Output , All
stringReplace, contents, contents, Outside of, Outside , All
stringReplace, contents, contents, Over with, Over , All
stringReplace, contents, contents, Overly aggressive, Overaggressive, All
stringReplace, contents, contents, Overly careful, Overcareful, All
stringReplace, contents, contents, P.m. in the evening, P.m., All
stringReplace, contents, contents, Palm of the hand, Palm , All
stringReplace, contents, contents, Universal panacea, Panacea, All
stringReplace, contents, contents, Component part, Part, All
stringReplace, contents, contents, Now pending, Pending, All
stringReplace, contents, contents, Penetrate into, Penetrate , All
stringReplace, contents, contents, As per, Per, All
stringReplace, contents, contents, Period of time, Period , All
stringReplace, contents, contents, Still persist, Persist, All
stringReplace, contents, contents, Pick and choose, Pick , All
stringReplace, contents, contents, PIN number, PIN , All
stringReplace, contents, contents, Pizza pie, Pizza , All
stringReplace, contents, contents, Plan ahead, Plan, All
stringReplace, contents, contents, Proposed plan, Plan, All
stringReplace, contents, contents, Plan ahead, Plan , All
stringReplace, contents, contents, Plan in advance, Plan , All
stringReplace, contents, contents, Advanced planning, Planning, All
stringReplace, contents, contents, Advance planning, Planning, All
stringReplace, contents, contents, Future plans, Plans, All
stringReplace, contents, contents, Plunge down, Plunge , All
stringReplace, contents, contents, Sharp point, Point, All
stringReplace, contents, contents, Postpone until later, Postpone, All
stringReplace, contents, contents, Postpone until later, Postpone , All
stringReplace, contents, contents, Pouring down rain, Pouring rain, All
stringReplace, contents, contents, Very pregnant, Pregnant, All
stringReplace, contents, contents, Present time, Present , All
stringReplace, contents, contents, False pretense, Pretense, All
stringReplace, contents, contents, Advance preview, Preview, All
stringReplace, contents, contents, Previously listed above, Previously listed , All
stringReplace, contents, contents, Proceed ahead, Proceed , All
stringReplace, contents, contents, In a prompt manner, Promptly, All
stringReplace, contents, contents, Artificial prosthesis, Prosthesis, All
stringReplace, contents, contents, Protest against, Protest, All
stringReplace, contents, contents, Protest against, Protest , All
stringReplace, contents, contents, Protesting against, Protesting, All
stringReplace, contents, contents, Old proverb, Proverb, All
stringReplace, contents, contents, Close proximity, Proximity, All
stringReplace, contents, contents, General public, Public, All
stringReplace, contents, contents, Pursue after, Pursue , All
stringReplace, contents, contents, Quartz in color, Quartz, All
stringReplace, contents, contents, Raise up, Raise , All
stringReplace, contents, contents, RAM memory, RAM , All
stringReplace, contents, contents, Reason why, Reason , All
stringReplace, contents, contents, Reason is because, Reason is , All
stringReplace, contents, contents, Past record, Record, All
stringReplace, contents, contents, All-time record, Record, All
stringReplace, contents, contents, Prerecord, Record, All
stringReplace, contents, contents, New recruit, Recruit, All
stringReplace, contents, contents, Recur again, Recur , All
stringReplace, contents, contents, Future recurrence, Recurrence, All
stringReplace, contents, contents, Red in color, Red, All
stringReplace, contents, contents, Re-elect for another term, Re-elect , All
stringReplace, contents, contents, Refer back, Refer , All
stringReplace, contents, contents, Reflect back, Reflect , All
stringReplace, contents, contents, Irregardless, Regardless, All
stringReplace, contents, contents, On a regular basis, Regularly, All
stringReplace, contents, contents, On a relative basis , Relatively, All
stringReplace, contents, contents, Still remain, Remain, All
stringReplace, contents, contents, Current trend, Rend, All
stringReplace, contents, contents, Repeat again, Repeat, All
stringReplace, contents, contents, Repeat again, Repeat , All
stringReplace, contents, contents, Reply back, Reply , All
stringReplace, contents, contents, Advanced reservation, Reservation, All
stringReplace, contents, contents, Advance reservations, Reservations, All
stringReplace, contents, contents, Local residents, Residents, All
stringReplace, contents, contents, End result, Result, All
stringReplace, contents, contents, Retreat back, Retreat , All
stringReplace, contents, contents, Revert back, Revert, All
stringReplace, contents, contents, Revert back, Revert , All
stringReplace, contents, contents, Rise up, Rise , All
stringReplace, contents, contents, Round in shape, Round , All
stringReplace, contents, contents, Regular routine, Routine, All
stringReplace, contents, contents, Please RSVP, RSVP, All
stringReplace, contents, contents, Exact same, Same, All
stringReplace, contents, contents, Same exact, Same , All
stringReplace, contents, contents, Safe sanctuary, Sanctuary, All
stringReplace, contents, contents, Full satisfaction, Satisfaction, All
stringReplace, contents, contents, Scarlet in color, Scarlet, All
stringReplace, contents, contents, Scrutinize in detail, Scrutinize , All
stringReplace, contents, contents, Close scrutiny, Scrutiny, All
stringReplace, contents, contents, Careful scrutiny, Scrutiny, All
stringReplace, contents, contents, Separated apart from each other, Separated , All
stringReplace, contents, contents, Share together, Share , All
stringReplace, contents, contents, Shiny in appearance, Shiny , All
stringReplace, contents, contents, Shut down, Shut , All
stringReplace, contents, contents, Sienna in color, Sienna, All
stringReplace, contents, contents, Since the time when, Since, All
stringReplace, contents, contents, Truly sincere, Sincere, All
stringReplace, contents, contents, Skipped over, Skipped , All
stringReplace, contents, contents, Slow speed, Slow , All
stringReplace, contents, contents, Small size, Small , All
stringReplace, contents, contents, White snow, Snow, All
stringReplace, contents, contents, Soft to the touch, Soft , All
stringReplace, contents, contents, Soft in texture, Soft , All
stringReplace, contents, contents, Sole of the foot, Sole , All
stringReplace, contents, contents, Empty space, Space, All
stringReplace, contents, contents, Small speck, Speck, All
stringReplace, contents, contents, Spell out in detail, Spell out, All
stringReplace, contents, contents, Spell out in detail, Spell out , All
stringReplace, contents, contents, Spliced together, Spliced , All
stringReplace, contents, contents, Start off, Start , All
stringReplace, contents, contents, Start on, Start , All
stringReplace, contents, contents, Anonymous stranger, Stranger, All
stringReplace, contents, contents, Fellow student, Student, All
stringReplace, contents, contents, Live studio audience, Studio audience, All
stringReplace, contents, contents, Underground subway, Subway, All
stringReplace, contents, contents, Brief summary, Summary, All
stringReplace, contents, contents, Absolutely sure, Sure, All
stringReplace, contents, contents, Unexpected surprise, Surprise, All
stringReplace, contents, contents, Completely surround, Surround, All
stringReplace, contents, contents, Surrounded on all sides, Surrounded , All
stringReplace, contents, contents, Tall in height, Tall , All
stringReplace, contents, contents, Tall in stature, Tall , All
stringReplace, contents, contents, Tan in color, Tan, All
stringReplace, contents, contents, Temper tantrum, Tantrum, All
stringReplace, contents, contents, Mental telepathy, Telepathy, All
stringReplace, contents, contents, On a temporary basis, Temporarily, All
stringReplace, contents, contents, Ten in number, Ten , All
stringReplace, contents, contents, Time period, Time , All
stringReplace, contents, contents, In order to, To, All
stringReplace, contents, contents, Sum total, Total, All
stringReplace, contents, contents, Therapeutic treatment, Treatment, All
stringReplace, contents, contents, Open trench, Trench, All
stringReplace, contents, contents, Made an effort, Tried, All
stringReplace, contents, contents, Make an effort, Try, All
stringReplace, contents, contents, Hollow tube, Tube, All
stringReplace, contents, contents, Tuna fish, Tuna , All
stringReplace, contents, contents, Frozen tundra, Tundra, All
stringReplace, contents, contents, Turquoise in color, Turquoise, All
stringReplace, contents, contents, Final ultimatum, Ultimatum, All
stringReplace, contents, contents, Undergraduate student, Undergraduate , All
stringReplace, contents, contents, Very unique, Unique, All
stringReplace, contents, contents, Single unit, Unit, All
stringReplace, contents, contents, UPC code, UPC , All
stringReplace, contents, contents, Utilize, Use, All
stringReplace, contents, contents, Utilizable, Useable, All
stringReplace, contents, contents, Utilizing, Using, All
stringReplace, contents, contents, Vacillate back and forth, Vacillate , All
stringReplace, contents, contents, Former veteran, Veteran, All
stringReplace, contents, contents, Violet in color, Violet, All
stringReplace, contents, contents, Visible to the eye, Visible , All
stringReplace, contents, contents, Warn in advance, Warn , All
stringReplace, contents, contents, Advanced warning, Warning, All
stringReplace, contents, contents, Advance warning, Warning, All
stringReplace, contents, contents, Weather conditions, Weather , All
stringReplace, contents, contents, Weather situation, Weather , All
stringReplace, contents, contents, From whence, Whence, All
stringReplace, contents, contents, Whether or not, Whether , All
stringReplace, contents, contents, Whilst, While, All
stringReplace, contents, contents, White in color, White, All
stringReplace, contents, contents, Live witness, Witness, All
stringReplace, contents, contents, Write down, Write, All
stringReplace, contents, contents, Writes down, Writes, All
stringReplace, contents, contents, Writing down, Writing, All
stringReplace, contents, contents, Written down, Written, All
stringReplace, contents, contents, Wrote down, Wrote, All
stringReplace, contents, contents, On a yearly basis, Yearly, All
stringReplace, contents, contents, Yellow in color, Yellow, All
stringReplace, contents, contents, Affirmative yes, Yes, All


fileAppend, %contents%, %A_LoopField% ; Re-create the file with new contents
}
