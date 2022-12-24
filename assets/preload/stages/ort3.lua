function onCreate()



	



	setProperty('cameraSpeed', 1.1);

	makeLuaText('healthText', 'Health: ' .. math.floor(getProperty("health") * 50), 300, screenWidth / 2 - 300 / 2, screenHeight / 2 - -220 / 1.5)
    addLuaText('healthText')
    setTextSize('healthText', 30);
	setTextFont('healthText', 'exi.ttf')
	setProperty('healthText.antialiasing',true)


	makeLuaSprite('staorag', 'staorag', -700, -200);

	scaleObject('staorag', 2, 2);

	addLuaSprite('staorag', false);

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
    addAnimationByPrefix('pibby','pibby','pibby',24,true)
    addLuaSprite('pibby',false)
    objectPlayAnimation('pibby','pibby',true)
	scaleObject('pibby', 0.8, 0.8);




end

function onBeatHit()

	if curBeat % 2 == 0 then
		objectPlayAnimation('pibby','pibby',true)
	
	end




		
	
end


function onStepHit()




end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Bullet_Note' then
		objectPlayAnimation('knife','nife',false)
	end
end


function opponentNoteHit(id, direction, noteType, isSustainNote)



end

local defaultNotePos = {}
local spin = 20 -- how much it moves before going the other direction
local spun = 20 
local spon = 40 



function onSongStart()


    for i = 0, 7 do
        defaultNotePos[i] = {
            getPropertyFromGroup('strumLineNotes', i, 'x'),
            getPropertyFromGroup('strumLineNotes', i, 'y')
        }
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

	setTextString('healthText', 'Health: ' .. math.floor(getProperty("health") * 50))


    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 100 --How long it will take.


	if curBeat >= 512 and curBeat < 640 then
		setProperty("hud.angle", spin * math.sin(songPos))
    end


    if curBeat == 641 then
        setProperty("hud.angle", 0)
    end

	
	if curBeat >= 704 and curBeat < 832 then
		setProperty("camGame.angle", spun * math.sin(songPos))
		setProperty("hud.angle", spon * math.sin(songPos))
    end

	if curBeat == 835 then
        setProperty("camHUD.angle", 0)
    end
end







function onMoveCamera(c)

	if c == 'dad' then
		setProperty('defaultCamZoom',0.7)
	else
		setProperty('defaultCamZoom',0.9)
	end

end
