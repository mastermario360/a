local angleshit = 1;
local anglevar = 1;
function onCreate()

  makeLuaSprite('overlay', 'finn/overlay', -700, -600);
	setBlendMode('overlay','add')

  makeLuaSprite('house', 'finn/house', 200, -200);
  setLuaSpriteScrollFactor('house', 0.5, 0.5);

  makeLuaSprite('hill2', 'finn/hill2', -620, 500);
  setLuaSpriteScrollFactor('hill2', 0.7, 0.7);

	makeLuaSprite('hill', 'finn/hill', -620, 600);
	setLuaSpriteScrollFactor('hill', 0.97, 0.97);

	makeLuaSprite('hill3', 'finn/hill3', -500, 50);
	setLuaSpriteScrollFactor('hill3', 0.4, 0.4);

  makeLuaSprite('sky', 'finn/sky', -620, -300);
	setLuaSpriteScrollFactor('sky', 0.32, 0.32);

	addLuaSprite('sky',false);
	addLuaSprite('hill3',false);
	addLuaSprite('house',false);
  addLuaSprite('hill2',false);
	addLuaSprite('hill',false);
 	addLuaSprite('overlay', true);

     xx = 420.95;
     yy = 313;

end

function onCreatePost()

setProperty('gf.alpha', 0)
end
