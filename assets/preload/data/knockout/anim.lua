
state = true;
shouldAdd = true;

function onUpdate(elapsed)
	if (getMouseX('camHUD') > -200 and getMouseX('camHUD') < 200) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 682.5 and mousePressed('left')) or keyPressed('space') then
		objectPlayAnimation('button2', 'APressedAttack', false);
		characterPlayAnim('boyfriend','attack');
		runTimer('attack', 0.08);
	else
		objectPlayAnimation('button2', 'AnonPressAttack', false);
	end
end
function onCreate()  --random shit lol
	makeAnimatedLuaSprite('button2', 'button', 50, 582.5);
	addAnimationByPrefix('button2', 'AnonPressAttack', 'AnonPressAttack', 24, false);
	addAnimationByPrefix('button2', 'APressedAttack', 'APressedAttack', 12, false);
	addLuaSprite('button2', true);
	setObjectCamera('button2', 'other');
	scaleObject('button2',0.6,0.6)
end

function onTimerCompleted(tag, loops, loopsleft)
     if tag == 'attack' then
        characterPlayAnim('dad','hurt');
        playSound('hurt',1);
    end
end