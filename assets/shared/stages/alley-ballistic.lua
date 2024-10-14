function onCreate()
    makeAnimatedLuaSprite('background', 'stages/alley-ballistic/background', -400, -150);
    scaleObject('background', 2.0, 2.0);
    addAnimationByPrefix('background', 'alleyway', 'background idle', 24, true);
    setScrollFactor('background', 1.0, 1.0);
    
    makeLuaSprite('smog', 'stages/alley-ballistic/smog', -450, -160);
    scaleObject('smog', 4.0, 4.0);
	setScrollFactor('smog', 0.9, 0.9);

    makeAnimatedLuaSprite('foreground', 'stages/alley-ballistic/foreground', -480, -220);
    scaleObject('foreground', 2.0, 2.0);
    addAnimationByPrefix('foreground', 'alley-frontstuffs', 'foreground idle', 24, true);
    setScrollFactor('foreground', 0.7, 0.7);
    
    makeLuaSprite('volumetrics', 'stages/alley-ballistic/volumetric', -420, -200);
    scaleObject('volumetrics', 4.0, 4.0);
	setScrollFactor('volumetrics', 0.8, 0.8);

    addLuaSprite('background', false);
    addLuaSprite('smog', true);
    addLuaSprite('foreground', true);
    addLuaSprite('volumetrics', true);
end
function onBeatHit()
    if curBeat == 728 then
        setProperty('smog.alpha', 0);
    end
end