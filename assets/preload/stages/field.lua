function onCreate()
	-- background shit
	makeLuaSprite('BG1', 'BG1', 420, -200);
	setLuaSpriteScrollFactor('BG1', 2, 1);
	scaleObject('BG1', 5, 5);
	
	makeLuaSprite('BG0', 'BG0', 420, -200);
	setLuaSpriteScrollFactor('BG0', 2, 1);
	scaleObject('BG0', 5, 5);
	
	makeLuaSprite('Foreground', 'Foreground', -550, -200);
	setLuaSpriteScrollFactor('Foreground', 0.9, 0.9);
	scaleObject('Foreground', 4.5, 4.5);
	
	makeAnimatedLuaSprite('CUpheqdshid','CUpheqdshid', 0, 0)
    luaSpriteAddAnimationByPrefix('CUpheqdshid', 'idle', 'Cupheadshit_gif instance 1', 20, true);
    setLuaSpriteScrollFactor('CUpheqdshid', 1, 1);
	scaleObject('CUpheqdshid', 3, 3);

	addLuaSprite('BG0', false);
	addLuaSprite('BG1', false);
	addLuaSprite('Foreground', false);
	addLuaSprite('CUpheqdshid', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end