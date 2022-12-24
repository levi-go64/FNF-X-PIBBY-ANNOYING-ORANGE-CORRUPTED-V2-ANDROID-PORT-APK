function onCreate()



	precacheImage('osts2');
	precacheImage('aaa');

	setProperty('cameraSpeed', 0.5);

	makeLuaSprite('aaa', 'aaa', -510, -100,true);
	scaleObject('aaa', 1.1, 1.1);


	addGrainEffect('iconP2',6.1 ,1.8 ,90)
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-death'); --Character json file for the death animation
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'PibbyDeath'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'hugging_death_loop2'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'hugging_death_end2'); --put in mods/music/



	makeLuaSprite('ttagee', 'ttagee', -900, -190);

	scaleObject('ttagee', 2, 2);

	addLuaSprite('ttagee', false);

	makeLuaSprite('vignette2', 'vignette2', 0, 0);
	scaleObject('vignette2', 10, 10);
	scaleObject('vignette2', 1, 1);
	setObjectCamera('vignette2', 'hud')
	addLuaSprite('vignette2',true)
	doTweenAlpha('textAlpha', 'vignette2', 0.8, 3, 'linear');

	makeAnimatedLuaSprite('osts2','osts2',-675,309)
    addAnimationByPrefix('osts2','song','song',60,false)
    addLuaSprite('osts2',false)
    objectPlayAnimation('osts2','song',true)
	setObjectCamera('osts2', 'hud')
	scaleObject('osts2', 0.7, 0.7);
	doTweenAlpha('textAlpha77', 'osts2', 0, 0.0001, 'linear');



	--scaleObject('gun', 2, 2);



	makeAnimatedLuaSprite('pibby','pibbyscared',700,430)
    addAnimationByPrefix('pibby','pibby','pibby',20,true)
    addLuaSprite('pibby',false)
    objectPlayAnimation('pibby','pibby',true)
	scaleObject('pibby', 0.8, 0.8);

	makeAnimatedLuaSprite('orangealive','orangealive',1000,330)
    addAnimationByPrefix('orangealive','idle','idle',24,true)
    addLuaSprite('orangealive',false)
	scaleObject('orangealive', 1.03, 1.03);

	makeLuaSprite('gun', 'gunbf', 550, 530);
	addLuaSprite('gun', false);
	scaleObject('gun', 1, 1);
	doTweenAlpha('ggg', 'gun', 0, 0.0001, 'linear');
end

function onSongStart()
	doTweenAlpha('textAlpha77', 'osts2', 10, 0.0001, 'linear');
	objectPlayAnimation('osts2','song',true)
end
function onStepHit()

	if curStep == 687 then
		doTweenAlpha('ggg', 'gun', 10, 0.01, 'linear');
		

	end

	if curStep == 824 then
		doTweenAlpha('ggg', 'gun', 0, 0.01, 'linear');
		

	end

	if curStep == 1376 then
		doTweenAlpha('ggg', 'gun', 10, 0.01, 'linear');
		

	end

	if curStep == 1486 then
		doTweenAlpha('ggg', 'gun', 0, 0.001, 'linear');
		

	end


	if curStep == 40 then

		removeLuaSprite('osts2', true);

	end

end


function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('pibby','pibby',true)
		objectPlayAnimation('orangealive','idle',false)
	end

end


function onMoveCamera(c)

	if c == 'dad' then
		setProperty('defaultCamZoom',0.8)
	else
		setProperty('defaultCamZoom',0.9)
	end

end

    
function onUpdate(elapsed)


	local lol = math.random(1,2)

	if (lol >= 1) then
	
		doTweenAngle('tt', 'iconP2', -3, stepCrochet*0.00000000009, 'circOut')
	end

	if (lol >= 2) then

		doTweenAngle('tt', 'iconP2', 3, stepCrochet*0.00000000009, 'circOut')
	end
end