local angleshit = 1;
local anglevar = 1;
function onCreate()

  makeLuaSprite('overlay', 'fives/overlay', -500, -600);
	setBlendMode('overlay','add')


	makeLuaSprite('bg', 'fives/bg', -620, -320);
	setLuaSpriteScrollFactor('bg', 0.97, 0.97);

	makeLuaSprite('fog', 'fives/fog', -500, 500);
	setLuaSpriteScrollFactor('fog', 1.1, 1.1);

  makeLuaSprite('sky', 'fives/sky', -620, -500);
	setLuaSpriteScrollFactor('sky', 0.1, 0.1);

	addLuaSprite('sky',false);
	addLuaSprite('bg',false);
	addLuaSprite('fog',true);
 	addLuaSprite('overlay', true);

     xx = 420.95;
     yy = 313;

end

function onCreatePost()

setProperty('gf.alpha', 0)
end
