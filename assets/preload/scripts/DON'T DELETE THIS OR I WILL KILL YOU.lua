function onCreate()



	makeLuaText('textlol', 'made by MarioSkoczek', 0, 9, 675)
    setTextSize('textlol', 40)
    setTextBorder('textlol', 2, 'ffffff')
    setTextColor('textlol', '807455')
    setTextAlignment('textlol', 'center')
    setTextFont('textlol', 'sus.ttf')
    addLuaText('textlol')
    setObjectCamera('textlol', 'camHUD')
	setProperty('textlol.antialiasing',true)
	setProperty('vcr.antialiasing',true)

  

    function onBeatHit()

		if curBeat % 2 == 0 then
            doTweenAngle('tt', 'iconP1', 90, stepCrochet*0.01, 'circOut')
		else
	        doTweenAngle('tt', 'iconP1', -90, stepCrochet*0.01, 'circOut')
		end
		
	

        local lol = math.random(1,7)
    
    


	 if curBeat % 3 == 0 then
		if (lol >= 1) then
			doTweenColor('rrr', 'timeBar', 'ff4f4f', 1, 'linear')
		end
	
		if (lol >= 3) then
			doTweenColor('rrr', 'timeBar', 'fcff3d', 1, 'linear')
		end
	
		if (lol >= 4) then
			doTweenColor('rrr', 'timeBar', '6bff6e', 1, 'linear')
		end

		if (lol >= 5) then
			doTweenColor('rrr', 'timeBar', '4f78ff', 1, 'linear')
		end

		if (lol >= 6) then
			doTweenColor('rrr', 'timeBar', 'fff06b', 1, 'linear')
		end
		
		if (lol >= 7) then
			doTweenColor('rrr', 'timeBar', 'ffb66e', 1, 'linear')
		end
     end
        
        
        --doTweenAngle('tt', 'iconP2', 200, stepCrochet*0.09, 'circOut')
    end
end

function onUpdate()
		
	doTweenAngle('t2t', 'iconP1', 0, 1, 'circOut')
	--doTweenAngle('tt', 'iconP2', 0, stepCrochet*0.09, 'circOut')
end