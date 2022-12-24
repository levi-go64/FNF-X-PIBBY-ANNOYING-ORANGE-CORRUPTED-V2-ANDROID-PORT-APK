function onCreate()
	
	setPropertyFromClass('PlayState', 'SONG.arrowSkin', 'NOTE_assets'); --

	setProperty('cameraSpeed', 0.5);

	makeLuaSprite('stage3', 'stage3', -430, -200);

	scaleObject('stage3', 2, 2);

	addLuaSprite('stage3', false);

	
	makeAnimatedLuaSprite('babor','babor',-130,550)
    addAnimationByPrefix('babor','babaorange','babaorange',24,true)
    addLuaSprite('babor',true)
    objectPlayAnimation('babor','babaorange',false)
	scaleObject('babor', 0.8, 0.8);



	makeAnimatedLuaSprite('pibby','pibbyhappyyyy',700,430)
    addAnimationByPrefix('pibby','pibby','pibby',24,true)
    addLuaSprite('pibby',false)
    objectPlayAnimation('pibby','pibby',true)
	scaleObject('pibby', 0.8, 0.8);

	

	makeAnimatedLuaSprite('grape','grape',-450,250)
    addAnimationByPrefix('grape','grapef','grapef',24,true)
    addLuaSprite('grape',false)
    objectPlayAnimation('grape','grapef',true)
	scaleObject('grape', 1, 1);
	setLuaSpriteScrollFactor('grape', 1.1, 1);


	makeAnimatedLuaSprite('apple','apple',1050,550)
    addAnimationByPrefix('apple','smallaple','smallaple',24,true)
    addLuaSprite('apple',true)
    objectPlayAnimation('apple','smallaple',true)
	scaleObject('apple', 0.8, 0.8);

	
	makeAnimatedLuaSprite('pearalive','pearalive',1200,150)
    addAnimationByPrefix('pearalive','peara','peara',24,true)
    addLuaSprite('pearalive',false)
    objectPlayAnimation('pearalive','peara',true)
	scaleObject('pearalive', 1.5, 1.5);
	setLuaSpriteScrollFactor('pearalive', 1.1, 1);


	makeLuaSprite('fyou', 'fyou', 550, 330);
	addLuaSprite('fyou', true);
	scaleObject('fyou', 1, 1);
	doTweenAlpha('fyou', 'fyou', 0, 0.0001, 'linear');


	

end


function onBeatHit()


	
	if curBeat % 2 == 0 then
		objectPlayAnimation('pibby','pibby',true)
		objectPlayAnimation('babor','babaorange',true)
	    objectPlayAnimation('pearalive','peara',true)
		objectPlayAnimation('apple','smallaple',true)
	    objectPlayAnimation('babor','babaorange',true)
	end

	if curBeat == 1 then
		for i = 0, getProperty('opponentStrums.length')-1 do
			setPropertyFromGroup('opponentStrums',i,'visible',false)
			setPropertyFromGroup('opponentStrums',i,'y',111)
			setPropertyFromGroup('opponentStrums',i,'x',-111)
		end
	end
	if curBeat == 620 then
		doTweenAlpha('fyou', 'fyou', 10, 0.1, 'linear');

	end


	if curBeat == 624 then

		doTweenAlpha('fyou', 'fyou', 0, 0.8, 'BouceOut');
	end
	if curBeat >= 624 and curBeat < 688 then
	    triggerEvent('Add Camera Zoom', 0.07,0.08)
	end
	if curBeat == 200 then

		
		setPropertyFromGroup('playerStrums',0,'direction',160 )--1
		setPropertyFromGroup('playerStrums',1,'direction',130 )--2
		setPropertyFromGroup('playerStrums',2,'direction',110 )--3
		setPropertyFromGroup('playerStrums',3,'direction',100 )--4

		noteTweenY("NoteMove1", 4, 50, 2, 'BounceOut' )
		noteTweenY("NoteMove2", 5, 100, 2, 'BounceOut' )
		noteTweenY("NoteMove3", 6, 150, 2, 'BounceOut' )
		noteTweenY("NoteMove4", 7, 200, 2, 'BounceOut' )

	end

	if curBeat == 328 then
		setPropertyFromGroup('playerStrums',0,'direction',90 )--1
		setPropertyFromGroup('playerStrums',1,'direction',90 )--2
		setPropertyFromGroup('playerStrums',2,'direction',90 )--3
		setPropertyFromGroup('playerStrums',3,'direction',90 )--4

		noteTweenY("NoteMove1", 4, 50, 2, 'BounceOut' )
		noteTweenY("NoteMove2", 5, 50, 2, 'BounceOut' )
		noteTweenY("NoteMove3", 6, 50, 2, 'BounceOut' )
		noteTweenY("NoteMove4", 7, 50, 2, 'BounceOut' )



	end

	if curBeat == 472 then

		
		setPropertyFromGroup('playerStrums',0,'direction',160 )--1
		setPropertyFromGroup('playerStrums',1,'direction',130 )--2
		setPropertyFromGroup('playerStrums',2,'direction',110 )--3
		setPropertyFromGroup('playerStrums',3,'direction',100 )--4

		noteTweenY("NoteMove1", 4, 50, 2, 'BounceOut' )
		noteTweenY("NoteMove2", 5, 100, 2, 'BounceOut' )
		noteTweenY("NoteMove3", 6, 150, 2, 'BounceOut' )
		noteTweenY("NoteMove4", 7, 200, 2, 'BounceOut' )

	end

	if curBeat == 600 then
		setPropertyFromGroup('playerStrums',0,'direction',90 )--1
		setPropertyFromGroup('playerStrums',1,'direction',90 )--2
		setPropertyFromGroup('playerStrums',2,'direction',90 )--3
		setPropertyFromGroup('playerStrums',3,'direction',90 )--4

		noteTweenY("NoteMove1", 4, 50, 2, 'BounceOut' )
		noteTweenY("NoteMove2", 5, 50, 2, 'BounceOut' )
		noteTweenY("NoteMove3", 6, 50, 2, 'BounceOut' )
		noteTweenY("NoteMove4", 7, 50, 2, 'BounceOut' )



	end


	if curBeat == 667 then
	
	end
	if curBeat == 502 then

	end

	if curBeat == 641 then
	
	end
end


function onMoveCamera(c)

	if c == 'dad' then
		setProperty('defaultCamZoom',0.7)
	else
		setProperty('defaultCamZoom',0.9)
	end

end
