
state = true;
shouldAdd = true;

function onUpdate(elapsed)
	if (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or keyPressed('space') then
		objectPlayAnimation('button', 'Pressed', false);
		characterPlayAnim('boyfriend','dodge');
		runTimer('dodge', 0.01);
	else
		objectPlayAnimation('button', 'nonPress', false);
	end
end

function onCreate()  --random shit lol
	makeAnimatedLuaSprite('button', 'button', 1150, 582.5);
	addAnimationByPrefix('button', 'nonPress', 'nonPress', 24, false);
	addAnimationByPrefix('button', 'Pressed', 'Pressed', 12, false);
	addLuaSprite('button', true);
	setObjectCamera('button', 'other');
	scaleObject('button',0.6,0.6)
end

function onTimerCompleted(tag, loops, loopsleft)
     if tag == 'dodge' then
        playSound('dodge',0.4);
    end
end