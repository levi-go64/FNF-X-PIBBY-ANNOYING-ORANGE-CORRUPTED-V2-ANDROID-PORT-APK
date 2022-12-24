function onBeatHit()

	if curBeat % 2 == 0 then
		objectPlayAnimation('pibby','pibby',true)
	
	end

	if curBeat >= 512 and curBeat < 640 then
	 
	 
	 
	
		if curBeat % 2 == 0 then
			objectPlayAnimation('pibby','pibby',true)
		
		end
	
	 
			
	    if curBeat % 2 == 0 then
	        doTweenAngle('tt', 'game', 90, stepCrochet*0.08, 'circOut')
	    else
	        doTweenAngle('tt', 'game', -90, stepCrochet*0.08, 'circOut')
		end
		
	end
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
	
	doTweenAngle('tt', 'game', 0, stepCrochet*0.020, 'circOut')


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