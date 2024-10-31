local angleshit = 1;
local anglevar = 1;
function onCreate()
	makeLuaSprite('ground', 'parkangry/rageforeground', -40, 0);
	setLuaSpriteScrollFactor('ground', 0.7, 0.7);

	makeLuaSprite('overlay', 'parkangry/overlay', -300, 350);
	setLuaSpriteScrollFactor('ground', 0.9, 0.9);
	setBlendMode('overlay', 'add')
	makeLuaSprite('ballglow', 'parkangry/ballglow', -200, -360);
	setBlendMode('ballglow', 'add')
  makeLuaSprite('build', 'parkangry/ragecity', -200, -70);
	setLuaSpriteScrollFactor('build', 0.32, 0.32);

	makeLuaSprite('buildbg', 'parkangry/ragecitybgg', -230, -130);
	setLuaSpriteScrollFactor('buildbg', 0.25, 0.25);

	makeAnimatedLuaSprite('fireball', 'parkangry/fireball', 240, -50);
	addAnimationByPrefix('fireball','fireball','fireball',24,true);

	scaleLuaSprite('buildbg', 1.3, 1.3);
	scaleLuaSprite('ground', 1.1, 1.1);

	addLuaSprite('buildbg',false);
  addLuaSprite('build',false);
 	addLuaSprite('ground', false);
	addLuaSprite('fireball', false);
  addLuaSprite('overlay',true);
	addLuaSprite('ballglow',true);

		makeLuaSprite('bartop','',0,-30)
		makeGraphic('bartop',1280,100,'000000')
		addLuaSprite('bartop',true)

		makeLuaSprite('barbot','',0,650)
		makeGraphic('barbot',1280,100,'000000')
		addLuaSprite('barbot',true)
		setScrollFactor('bartop',0,0)
		setScrollFactor('barbot',0,0)
		setObjectCamera('bartop','hud')
		setObjectCamera('barbot','hud')


     xx = 420.95;
     yy = 313;

 end

 function onUpdate()
 if mustHitSection == true then
 		setProperty('defaultCamZoom',0.68)
 		end
 if mustHitSection == false then
     setProperty('defaultCamZoom',0.85)
 	  end

 end
