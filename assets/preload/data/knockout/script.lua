local allowCountdown = false;
local allowCountdownEnd = false;

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not continue and isStoryMode and not seenCutscene then
        startVideo('3');
        continue = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onEndSong()
    if not allowCountdownEnd and isStoryMode and not seenCutscene then
        startVideo('4');   
        allowCountdownEnd = true;
        return Function_Stop;
    end
    return Function_Continue;
end

function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'Bf_Ghost');
end

function onStepHit()
    if curStep == 1162 then
        makeAnimatedLuaSprite('MFD','MFD', 2200, 1500)
        luaSpriteAddAnimationByPrefix('MFD', 'idle', 'Mugman instance 1', 20, true);
       setLuaSpriteScrollFactor('MFD', 1, 1);
	   scaleObject('MFD', 1.5, 1.5);
	   addLuaSprite('MFD',true)
    end
   if curStep == 1174 then
      removeLuaSprite('MFD');
      makeAnimatedLuaSprite('MFD2','MFD', 2200, 1500);
      luaSpriteAddAnimationByPrefix('MFD2', 'idle', 'MUGMANDEAD YES instance 1', 20, true);
      setLuaSpriteScrollFactor('MFD2', 1, 1);
      scaleObject('MFD2', 1.5, 1.5);
	  addLuaSprite('MFD2', true);
	  playSound('knockout',1);
    end
   if curStep == 1174 then
	  makeAnimatedLuaSprite('knock','knock', 1000, 1300);
	  luaSpriteAddAnimationByPrefix('knock','idle','A KNOCKOUT!', 20, true);
	  setLuaSpriteScrollFactor('knock',1,1);
	  scaleObject('knock', 1.5, 1.5);
	  addLuaSprite('knock', true);
    end
   if curStep == 1186 then
      removeLuaSprite('MFD2');
      makeAnimatedLuaSprite('MFD3','MFD', 2200, 1500);
      luaSpriteAddAnimationByPrefix('MFD3', 'idle', 'MUGMANDEAD died instance 1', 20, true);
      setLuaSpriteScrollFactor('MFD3', 1, 1);
      scaleObject('MFD3', 1.5, 1.5);
	  addLuaSprite('MFD3', true)
	  runTimer('knock', 3);
   end
end

function onTimerCompleted(tag, loops, loopsleft)
     if tag == 'knock' then
        removeLuaSprite('knock');
    end
end

                -- Script made by Washo789, please, if you use it or modify it, I would like you to give me credits.
				
local xx = 1400; -- Code to change the position of the camera to the left or right for your opponent, Less = Left (They can be negative numbers), More = Right
local yy = 1600; -- Code to change the position of the camera up or down for the enemy Less = Down (They can be negative numbers), More = Up
local xx2 = 2100; -- Same code as above, but for boyfriend left, right
local yy2 = 1600; -- Same code as above, but for boyfriend up, down
local xx3 = 1000; -- Same code as above, but for girlfriend left, right
local yy3 = -200; -- Same code as above, but for girlfriend, up, down
local ofs = 65; -- Code to adjust the intensity with which the camera moves, the more numbers, the more intense, and the fewer numbers, less intense
local followchars = true; -- This code is necessary for the script to work, don't even think about deleting it!
local del = 0;
local del2 = 0;

function onUpdate() -- The Main Code
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then -- Code for the camera to follow the poses of your opponent
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if gfSection == true then -- The camera follows GF when she sings, only when the "GF Section" option in the chart editor is activated. 
                if getProperty('gf.animation.curAnim.name') == 'singLEFT' then -- Credits to Serebeat and company for their Slaybells mod,
                    triggerEvent('Camera Follow Pos',xx3-ofs,yy3)              -- That's where I got the gf code from.
                end
                if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                    triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
                end
                if getProperty('gf.animation.curAnim.name') == 'singUP' then
                    triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                    triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'idle-alt' then
                    triggerEvent('Camera Follow Pos',xx3,yy3)
				end
                if getProperty('gf.animation.curAnim.name') == 'singRIGHT-alt' then
                    triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
                end
                if getProperty('gf.animation.curAnim.name') == 'singUP-alt' then
                    triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'singDOWN-alt' then
                    triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'idle-alt' then
                    triggerEvent('Camera Follow Pos',xx3,yy3)
                end
            end
        else
                 -- Code for the camera to follow the poses of boyfriend
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','') -- Self explanatory
    end
    
end