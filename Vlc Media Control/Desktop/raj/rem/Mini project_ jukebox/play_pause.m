function play_pause()

global key
global count

  count=count+1;
  if(mod(count,2)==0)
      pause(1);
      display(count);
      display('Pause/play');
      key.keyPress  (java.awt.event.KeyEvent.VK_SPACE );
      key.keyRelease  (java.awt.event.KeyEvent.VK_SPACE );
  end
  
%    if(mod(count,2)~=0)
%         pause(.8);
%       display(count);
%       key.keyPress  (java.awt.event.KeyEvent.VK_SPACE );
%    end
end
  

  
