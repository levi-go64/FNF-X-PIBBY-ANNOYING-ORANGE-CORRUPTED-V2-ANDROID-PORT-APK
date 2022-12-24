local allowCountdown = false
function onStartCountdown()


	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('pearcut');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;


	
end

function onSongStart()


	noteTweenX("NoteMove1", 4, 390, 2, 'BounceOut' )
	noteTweenX("NoteMove2", 5, 520, 2, 'BounceOut' )
	noteTweenX("NoteMove3", 6, 654, 2, 'BounceOut' )
	noteTweenX("NoteMove4", 7, 778, 2, 'BounceOut' )


	addVCREffect('textlol',true)
	for i = 0, getProperty('opponentStrums.length')-1 do
		setPropertyFromGroup('opponentStrums',i,'visible',false)
		setPropertyFromGroup('opponentStrums',i,'y',130)
		setPropertyFromGroup('opponentStrums',i,'x',-9999)
	end

end

function onBeatHit()
    
	   
	

	if curBeat == 172 then

		doTweenX('2tt', 'pibby', 2090, 2.6, 'QuartIn')
		doTweenX('3tt', 'orangealive', 2100, 2, 'QuartIn')
		doTweenAlpha('textAlpha', 'vignette2', 1, 1, 'linear');
		setPropertyFromGroup('playerStrums',0,'direction',70 )--1
	    setPropertyFromGroup('playerStrums',1,'direction',80 )--2
	    setPropertyFromGroup('playerStrums',2,'direction',100 )--3
    	setPropertyFromGroup('playerStrums',3,'direction',110 )--4
		addChromaticAbberationEffect('game',0.001)

		noteTweenX("NoteMove1", 4, 230, math.pi/10, 'ElasticOut' )
		noteTweenX("NoteMove2", 5, 470, math.pi/10, 'ElasticOut' )
		noteTweenX("NoteMove3", 6, 754, math.pi/10, 'ElasticOut' )
		noteTweenX("NoteMove4", 7, 978, math.pi/10, 'ElasticOut' )
	
	
	end


	if curBeat == 201 then

		doTweenX('2tt', 'pibby', 700, 2.6, 'BackOut')
		doTweenX('3tt', 'orangealive', 1000, 1, 'BackOut')
		addChromaticAbberationEffect('game',-0.001)
		doTweenAlpha('textAlpha', 'vignette2', 0.8, 1, 'linear');
		setPropertyFromGroup('playerStrums',0,'direction',90 )--1
	    setPropertyFromGroup('playerStrums',1,'direction',90 )--2
	    setPropertyFromGroup('playerStrums',2,'direction',90 )--3
    	setPropertyFromGroup('playerStrums',3,'direction',90 )--4

		noteTweenX("NoteMove1", 4, 390, 1, 'BounceOut' )
		noteTweenX("NoteMove2", 5, 520, 1, 'BounceOut' )
		noteTweenX("NoteMove3", 6, 654, 1, 'BounceOut' )
		noteTweenX("NoteMove4", 7, 778, 1, 'BounceOut' )
	
	
	
	end

	if curBeat == 344 then

		doTweenX('2tt', 'pibby', 2090, 2.6, 'QuartIn')
		doTweenX('3tt', 'orangealive', 2100, 2, 'QuartIn')		
		doTweenAlpha('textAlpha', 'vignette2', 1, 1, 'linear');
		setPropertyFromGroup('playerStrums',0,'direction',70 )--1
	    setPropertyFromGroup('playerStrums',1,'direction',80 )--2
	    setPropertyFromGroup('playerStrums',2,'direction',100 )--3
    	setPropertyFromGroup('playerStrums',3,'direction',110 )--4
		addChromaticAbberationEffect('game',0.001)

		noteTweenX("NoteMove1", 4, 230, math.pi/10, 'ElasticOut')
		noteTweenX("NoteMove2", 5, 470, math.pi/10, 'ElasticOut' )
		noteTweenX("NoteMove3", 6, 754, math.pi/10, 'ElasticOut' )
		noteTweenX("NoteMove4", 7, 978, math.pi/10, 'ElasticOut' )
	
	
	end

	if curBeat == 372 then

		doTweenX('2tt', 'pibby', 700, 2.6, 'BackOut')
		doTweenX('3tt', 'orangealive', 1000, 1, 'BackOut')
		doTweenAlpha('textAlpha', 'vignette2', 0.8, 1, 'linear');
		setPropertyFromGroup('playerStrums',0,'direction',90 )--1
	    setPropertyFromGroup('playerStrums',1,'direction',90 )--2
	    setPropertyFromGroup('playerStrums',2,'direction',90 )--3
    	setPropertyFromGroup('playerStrums',3,'direction',90 )--4
		addChromaticAbberationEffect('game',-0.001)

		noteTweenX("NoteMove1", 4, 390, 1, 'BounceOut' )
		noteTweenX("NoteMove2", 5, 520, 1, 'BounceOut' )
		noteTweenX("NoteMove3", 6, 654, 1, 'BounceOut' )
		noteTweenX("NoteMove4", 7, 778, 1, 'BounceOut' )
	
	
	
	end

	if curBeat == 375 then
		playSound('shoot', 0.8);
		cameraFade('game', '000000', 1.5, true);
		cameraShake('camGame', 0.02, 0.8)
		addLuaSprite('aaa', true);
	end

end

function onUpdate(elapsed)
  
end
