function onCreate()
	setPropertyFromClass('PlayState', 'SONG.arrowSkin', 'NOTE_assets'); --



	makeLuaSprite('aaa', 'aaa', -510, -100,true);
	scaleObject('aaa', 1.1, 1.1);

	luaDebugMode = true

	



	setProperty('cameraSpeed', 0.5);


	makeAnimatedLuaSprite('wos','wos',-130,-130)
    addAnimationByPrefix('wos','sas','sas',12,true)
    addLuaSprite('wos',false)
    objectPlayAnimation('wos','sas',true)
	scaleObject('wos', 1.9, 1.4);
	addChromaticAbberationEffect('wos',0.0005)

	makeLuaText('healthText', 'Health: ' .. math.floor(getProperty("health") * 50), 300, screenWidth / 2 - 300 / 2, screenHeight / 2 - -220 / 1.5)
    addLuaText('healthText')
    setTextSize('healthText', 30);
	setTextFont('healthText', 'exi.ttf')
	setProperty('healthText.antialiasing',true)


	makeLuaSprite('stag1', 'stag1', -698, -200);

	scaleObject('stag1', 2, 2);

	addLuaSprite('stag1', false);

	makeLuaSprite('stag2', 'stag2', -700, -200);

	scaleObject('stag2', 2, 2);

	addLuaSprite('stag2', false);



	makeAnimatedLuaSprite('knife','knife',600,100)
    addAnimationByPrefix('knife','nife','nife',80,false)
    addLuaSprite('knife',true)
  
	scaleObject('knife', 0.9, 0.9);

	makeLuaSprite('vignette2', 'vignette2', 0, 0);
	scaleObject('vignette2', 10, 10);
	scaleObject('vignette2', 1, 1);
	setObjectCamera('vignette2', 'hud')
	addLuaSprite('vignette2',true)
	doTweenAlpha('textAlpha', 'vignette2', 0, 3, 'linear');



	makeAnimatedLuaSprite('pibby','pissby',700,430)
    addAnimationByPrefix('pibby','pibby1','pibby1',24,true)
	addAnimationByPrefix('pibby','pibby2','pibby2',22,true)
    addLuaSprite('pibby',false)
    objectPlayAnimation('pibby','pibby',true)
	scaleObject('pibby', 0.7, 0.7);



	makeAnimatedLuaSprite('girf','girf',440,400)
    addAnimationByPrefix('girf','gfcor','gfcor',30,false)
    addLuaSprite('girf',false)
	scaleObject('girf', 0.9, 0.9);
	addLuaSprite('girf',true)
	doTweenAlpha('textAlpha2', 'girf', 0, 0.0001, 'linear');

	makeAnimatedLuaSprite('osts','osts',-675,309)
    addAnimationByPrefix('osts','song','song',60,false)
    addLuaSprite('osts',false)
    objectPlayAnimation('osts','song',true)
	setObjectCamera('osts', 'hud')
	scaleObject('osts', 0.7, 0.7);
	doTweenAlpha('textAlpha77', 'osts', 0, 0.0001, 'linear');

	



	makeAnimatedLuaSprite('pear','pear',1000,150)
    addAnimationByPrefix('pear','pear','pear',24,true)

    addLuaSprite('pear',false)
    objectPlayAnimation('pear','pear',true)
	scaleObject('pear', 0.9, 0.9);

end


function onStepHit()

	if curStep == 112 then
		removeLuaSprite('girf', true);

	end

	if curStep == 50 then

		removeLuaSprite('osts', true);

	end


 if curBeat >= 214 and curBeat < 351 then

	local boo = math.random(1,2,3)


	if (boo >= 1) then
		addChromaticAbberationEffect('pibby',0.002)
		addChromaticAbberationEffect('pear',0.0004)
		addChromaticAbberationEffect('boyfriend',0.001)
	end
	
	if (boo >= 2) then
		addChromaticAbberationEffect('boyfriend',0.003)
		addChromaticAbberationEffect('pibby',0.01)
		addChromaticAbberationEffect('pear',0.003)
	end
	
	if (boo >= 3) then
		addChromaticAbberationEffect('boyfriend',0.00001)
		addChromaticAbberationEffect('pibby',0.001)
		addChromaticAbberationEffect('pear',0.002)
	end
 end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Bullet_Note' then
		objectPlayAnimation('knife','nife',false)
	end
end

function windowShake()--finally
	windowX = getPropertyFromClass('openfl.Lib', 'application.window.x')

	setPropertyFromClass('openfl.Lib','application.window.x',windowX + math.random(-6,6))

end
  

function opponentNoteHit(id, direction, noteType, isSustainNote)


	windowShake()
end

local defaultNotePos = {}
local spin = 7 -- how much it moves before going the other direction
local spun = 20 
local spon = 40 



function onSongStart()
	doTweenAlpha('textAlpha23', 'osts', 10, 1, 'linear');
	doTweenAlpha('textAlpha2', 'girf', 10, 1, 'linear');
	objectPlayAnimation('osts','song',true)
    for i = 0, 7 do
        defaultNotePos[i] = {
            getPropertyFromGroup('strumLineNotes', i, 'x'),
            getPropertyFromGroup('strumLineNotes', i, 'y')
        }
    end
end

    

function HudGame()

	addChromaticAbberationEffect('stag1',0.004)
	addChromaticAbberationEffect('stag2',-0.004)

	addChromaticAbberationEffect('pibby',0.004)
	addChromaticAbberationEffect('hud',-0.002)
	addChromaticAbberationEffect('boyfriend',0.001,true)

	addChromaticAbberationEffect('pear',0.02)
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

function onUpdate(elapsed)


	local lol = math.random(1,2,3,4,5,6,7,8,9)

	if (lol >= 1) then
		
		addChromaticAbberationEffect('iconP2',0.003)
		doTweenAngle('tt', 'iconP2', -3, stepCrochet*0.00000000009, 'circOut')
	end

	if (lol >= 2) then
		addChromaticAbberationEffect('iconP2',-0.01)
		doTweenAngle('tt', 'iconP2', 3, stepCrochet*0.00000000009, 'circOut')
	end

	if (lol >= 4) then
		addChromaticAbberationEffect('iconP2',-0.00000001)
		doTweenAngle('tt', 'iconP2', 3, stepCrochet*0.00000000009, 'circOut')
	end

	if (lol >= 3) then
		addChromaticAbberationEffect('iconP2',-0.0001)
		doTweenAngle('tt', 'iconP2', 3, stepCrochet*0.00000000009, 'circOut')
	end

	if (lol >= 9) then
		addChromaticAbberationEffect('iconP2',-0.1)
		doTweenAngle('tt', 'iconP2', 5, stepCrochet*0.00000000009, 'circOut')
	end

	setTextString('healthText', 'Health: ' .. math.floor(getProperty("health") * 50))


    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 800 --How long it will take.


	if curBeat >= 214 and curBeat < 351 then
		setProperty("camGame.angle", spin * math.sin(songPos))
    end

	if curBeat == 744 then
		addLuaSprite('aaa',true)
        setProperty("camHUD.angle", 0)
		setProperty("camGame.angle", 0)
		cameraFade('game', '000000', 2, true);
		cameraShake('camGame', 0.01, 0.02)
    end
    
    if curBeat == 352 then
        setProperty("camGame.angle", 0)
    end


	if curBeat >= 667 and curBeat < 744 then
		
		setProperty("camGame.angle", spun * math.sin(songPos))
    end


	
	if curBeat >= 667 and curBeat < 744 then
	
		setProperty("camHUD.angle", spon * math.sin(songPos))
    end


	if curBeat >= 502 and curBeat < 641 then
		setProperty("camGame.angle", spin * math.sin(songPos))
    end
	if curBeat == 642 then
        setProperty("camHUD.angle", 0)
    end
end





function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('pear','pear',true)
	end
	
	

	
	if curBeat == 1 then
		doTweenAlpha('textAlpha2', 'girf', 10, 1, 'linear');
		objectPlayAnimation('girf','gfcor',true)
	end

	
	if curBeat == 214 then
		doTweenColor('rrr', 'aaa', '9c8f6b', 0.9, 'linear')
	    doTweenAlpha('textAlpha', 'vignette2', 10, 1, 'linear');
	end

	if curBeat == 351 then
		doTweenColor('rrr', 'aaa', 'ffffff', 0.9, 'linear')
	    doTweenAlpha('textAlpha', 'vignette2', 0, 1, 'linear');
	end
	if curBeat == 667 then
		setProperty('timeTxt.antialiasing',true)
		addVCREffect('camGame',0.05)
	end
	if curBeat == 502 then
		doTweenColor('rrr', 'aaa', '9c8f6b', 0.9, 'linear')
	    doTweenAlpha('textAlpha', 'vignette2', 10, 1, 'linear');
	end

	if curBeat == 641 then
		doTweenColor('rrr', 'aaa', 'ffffff', 0.9, 'linear')
	    doTweenAlpha('textAlpha', 'vignette2', 0, 1, 'linear');
	end
end


function onMoveCamera(c)

	if c == 'dad' then
		setProperty('defaultCamZoom',0.7)
	else
		setProperty('defaultCamZoom',0.9)
	end

end
