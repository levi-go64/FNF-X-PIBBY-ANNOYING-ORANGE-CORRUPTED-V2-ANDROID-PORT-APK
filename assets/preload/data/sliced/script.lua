local allowCountdown = false
function onStartCountdown()


	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('apple');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;


	
end

function onSongStart()

	noteTweenX("NoteMove1", 4, 390, 2, 'QuartOut' )
	noteTweenX("NoteMove2", 5, 520, 2, 'QuartOut' )
	noteTweenX("NoteMove3", 6, 654, 2, 'QuartOut' )
	noteTweenX("NoteMove4", 7, 778, 2, 'QuartOut' )


	addVCREffect('healthText',true)
	for i = 0, getProperty('opponentStrums.length')-1 do
		setPropertyFromGroup('opponentStrums',i,'visible',false)
		setPropertyFromGroup('opponentStrums',i,'y',130)
		setPropertyFromGroup('opponentStrums',i,'x',-9999)
	end

end


function onBeatHit()


	if curBeat == 214 then
		objectPlayAnimation('pibby','pibby2',true)

		setTextSize('textlol', 36)
		setTextFont('healthText', 'scary.ttf')
		HudGame()
        triggerEvent('Change Scroll Speed', 0.7,0.001)
       
		doTweenY('11', 'pibby', 2000, 3, 'QuartOut')
		doTweenY('21', 'boyfriend', 3000, 3, 'QuartOut')
		doTweenY('31', 'pear', 3000, 3, 'QuartOut')
		doTweenY('51', 'pibby', 2299, 3, 'QuartOut')
		doTweenY('2tt', 'stag2', 2299, 3, 'QuartOut')

	    setPropertyFromClass('PlayState', 'SONG.arrowSkin', 'ETON_assets'); --

	    
		if not downScroll then
		
			
	     	noteTweenY("NoteMove5", 4, 250, 0.5, 'BounceOut' )
            noteTweenY("NoteMove6", 5, 250, 0.5, 'BounceOut' )
            noteTweenY("NoteMove7", 6, 250, 0.5, 'BounceOut' )
    	    noteTweenY("NoteMove8", 7, 250, 0.5, 'BounceOut' )
       

            setPropertyFromGroup('playerStrums',0,'direction',180 )--1
	        setPropertyFromGroup('playerStrums',1,'direction',90 )--2
	        setPropertyFromGroup('playerStrums',2,'direction',-90 )--3
    	    setPropertyFromGroup('playerStrums',3,'direction',0 )--4
	    end
	end
	if curBeat == 279 then


	    doTweenY('31', 'pear', 150, 2.2, 'cubeInOut')
		doTweenY('21', 'boyfriend', 540, 2.1, 'cubeInOut')
	    doTweenY('2tt', 'stag2', -200, 2.4, 'cubeInOut')
		doTweenY('41', 'pibby', 430, 2.6, 'cubeInOut')
	    doTweenY('111', 'stag1', -2000, 2.6, 'QuartOut')
	    doTweenY('222', 'dad', -2000, 2.6, 'QuartOut')

	end
	if curBeat == 339 then
		objectPlayAnimation('pibby','pibby1',true)
		doTweenY('111', 'stag1', -200, 2, 'QuartOut')
		doTweenY('222', 'dad', 223, 2, 'QuartOut')
	end

	if curBeat == 351 then




		endHudGame()
		setTextSize('textlol', 40)
		setTextFont('healthText', 'exi.ttf')
		setTextFont('textlol', 'sus.ttf')

		
        triggerEvent('Change Scroll Speed', 1,0.001)

	    if not downScroll then
            noteTweenY("NoteMove5", 4, 47, 0.5, 'BounceIn' )
            noteTweenY("NoteMove6", 5, 47, 0.5, 'BounceIn' )
            noteTweenY("NoteMove7", 6, 47, 0.5, 'BounceIn' )
    	    noteTweenY("NoteMove8", 7, 47, 0.5, 'BounceIn' )


            setPropertyFromGroup('playerStrums',0,'direction',90 )--1
	        setPropertyFromGroup('playerStrums',1,'direction',90 )--2
	        setPropertyFromGroup('playerStrums',2,'direction',90 )--3
    	    setPropertyFromGroup('playerStrums',3,'direction',90 )--4
        end
        
	end


	if curBeat == 504 then
		objectPlayAnimation('pibby','pibby2',true)

		doTweenY('11', 'pibby', 2000, 3, 'QuartOut')
		doTweenY('21', 'boyfriend', 3000, 3, 'QuartOut')
		doTweenY('31', 'pear', 3000, 3, 'QuartOut')
		doTweenY('51', 'pibby', 2299, 3, 'QuartOut')
		doTweenY('2tt', 'stag2', 2299, 3, 'QuartOut')

		HudGame()
		setTextSize('textlol', 36)
		setTextFont('healthText', 'scary.ttf')
		setTextFont('textlol', 'scary.ttf')

        triggerEvent('Change Scroll Speed', 0.7,0.001)

        triggerEvent('Change Scroll Speed', 0.7,0.001)

	    if not downScroll then
            noteTweenY("NoteMove5", 4, 250, 0.5, 'BounceIn' )
            noteTweenY("NoteMove6", 5, 250, 0.5, 'BounceIn' )
            noteTweenY("NoteMove7", 6, 250, 0.5, 'BounceIn' )
        	noteTweenY("NoteMove8", 7, 250, 0.5, 'BounceIn' )
       

            setPropertyFromGroup('playerStrums',0,'direction',180 )--1
	        setPropertyFromGroup('playerStrums',1,'direction',90 )--2
	        setPropertyFromGroup('playerStrums',2,'direction',-90 )--3
    	    setPropertyFromGroup('playerStrums',3,'direction',0 )--4
	    end
	end

	if curBeat == 569 then

		doTweenY('21', 'boyfriend', 540, 2.1, 'cubeInOut')
	    doTweenY('31', 'pear', 150, 2.2, 'cubeInOut')
	    doTweenY('41', 'pibby', 430, 2.6, 'cubeInOut')
	    doTweenY('2tt', 'stag2', -200, 2.4, 'cubeInOut')

	    doTweenY('111', 'stag1', -2000, 2.6, 'QuartOut')
	    doTweenY('222', 'dad', -2000, 2.6, 'QuartOut')

	end

	if curBeat == 638 then
		objectPlayAnimation('pibby','pibby1',true)
		doTweenY('111', 'stag1', -200, 2, 'QuartOut')
		doTweenY('222', 'dad', 223, 2, 'QuartOut')
	end

	if curBeat == 641 then
		setTextSize('textlol', 40)
		setTextFont('healthText', 'exi.ttf')
		setTextFont('textlol', 'sus.ttf')

        triggerEvent('Change Scroll Speed', 1,0.001)
		endHudGame()
	    if not downScroll then
            noteTweenY("NoteMove5", 4, 47, 0.5, 'BounceOut' )
            noteTweenY("NoteMove6", 5, 47, 0.5, 'BounceOut' )
            noteTweenY("NoteMove7", 6, 47, 0.5, 'BounceOut' )
        	noteTweenY("NoteMove8", 7, 47, 0.5, 'BounceOut' )
	    	

            setPropertyFromGroup('playerStrums',0,'direction',90 )--1
	        setPropertyFromGroup('playerStrums',1,'direction',90 )--2
	        setPropertyFromGroup('playerStrums',2,'direction',90 )--3
    	    setPropertyFromGroup('playerStrums',3,'direction',90 )--4

	    end
    end
end




function HudGame()

	addChromaticAbberationEffect('stag1',0.004)
	addChromaticAbberationEffect('stag2',-0.004)

	addChromaticAbberationEffect('pibby',0.004)
	addChromaticAbberationEffect('hud',-0.002)
	addChromaticAbberationEffect('boyfriend',0.001,true)

	addChromaticAbberationEffect('pear',0.002)
	doTweenAngle('ttrn', 'timeBar', 180, crochet*0.00001, 'linear')
	addChromaticAbberationEffect('iconP2',0.03)
	addChromaticAbberationEffect('iconP1',0.03)
end

function endHudGame()

	addChromaticAbberationEffect('stag1',-0)
	addChromaticAbberationEffect('stag2',-0)


	addChromaticAbberationEffect('pibby',-0)
	addChromaticAbberationEffect('pear',-0)
	addChromaticAbberationEffect('hud',0.002)
	addChromaticAbberationEffect('boyfriend',-0,true)

	doTweenAngle('ttrn', 'timeBar', 0, crochet*0.00001, 'linear')
	addChromaticAbberationEffect('iconP2',-0)
	addChromaticAbberationEffect('iconP1',-0)

end

function onCreatePost()

	doTweenY('ttrn', 'timeBar', 34, crochet*0.00001, 'linear')
	--addVCREffect('staorag',false,false,false,false)




 --	noteTweenY("NoteMove5", 4, 250, 0.5, cubeInOut )
 --	noteTweenY("NoteMove6", 5, 250, 0.5, cubeInOut )
 --	noteTweenY("NoteMove7", 6, 250, 0.5, cubeInOut )
 --	noteTweenY("NoteMove8", 7, 250, 0.5, cubeInOut )

end 

function onCreate()
	
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-death'); --Character json file for the death animation
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'PibbyDeath'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'hugging_death_loop2'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'hugging_death_end2'); --put in mods/music/




end


