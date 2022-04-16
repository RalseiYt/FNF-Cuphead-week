function onCreate()
	-- background shit
	makeLuaSprite('CH-RN-01', 'CH-RN-01', 420, -200);
	setLuaSpriteScrollFactor('CH-RN-01', 2, 1);
	scaleObject('CH-RN-01', 5, 5);
	
	makeLuaSprite('CH-RN-00', 'CH-RN-00', 420, -200);
	setLuaSpriteScrollFactor('CH-RN-00', 2, 1);
	scaleObject('CH-RN-00', 5, 5);
	
	makeLuaSprite('CH-RN-02', 'CH-RN-02', -550, -200);
	setLuaSpriteScrollFactor('CH-RN-02', 0.9, 0.9);
	scaleObject('CH-RN-02', 4.5, 4.5);
	
	makeAnimatedLuaSprite('NewRainLayer01','NewRainLayer01', -420, 250)
    luaSpriteAddAnimationByPrefix('NewRainLayer01', 'idle', 'RainFirstlayer instance 1', 24, true);
    setLuaSpriteScrollFactor('NewRainLayer01', 1, 1);
	scaleObject('NewRainLayer01', 2, 2);
	
	makeAnimatedLuaSprite('CUpheqdshid','CUpheqdshid', 0, 0)
    luaSpriteAddAnimationByPrefix('CUpheqdshid', 'idle', 'Cupheadshit_gif instance 1', 20, true);
    setLuaSpriteScrollFactor('CUpheqdshid', 1, 1);
	scaleObject('CUpheqdshid', 3, 3);

	addLuaSprite('CH-RN-00', false);
	addLuaSprite('CH-RN-01', false);
	addLuaSprite('CH-RN-02', false);
	addLuaSprite('NewRainLayer01',true);
	addLuaSprite('CUpheqdshid',true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end