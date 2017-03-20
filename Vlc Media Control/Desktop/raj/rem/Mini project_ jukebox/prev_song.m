function prev_song(x)

global key
global prev

if((prev==0)||(prev<=3))
     if((x>0) && (x<220))
%          pause(.3);
         prev=prev+1;
         disp('RIGHT');
         disp(prev);
     end
end


if((prev>=2)&&(prev<=5))
    if((x>=220) && (x<=320))
%          pause(.3);
         prev=prev+1;
         disp('RIGHT..');
         disp(prev);
         display('Playing last song');
         key.keyPress  (java.awt.event.KeyEvent.VK_P );
     end
end

    

