function next_song(x)

global key
global next

if((next==0)||(next<=3))
     if((x<=320) && (x>=100))
%          pause(.3);
         next=next+1;
         disp('LEFT');
         disp(next);
     end
end


if((next>=2)&&(next<=5))
    if((x>=0) && (x<=100))
%          pause(.3);
         next=next+1;
         disp('LEFT..');
         disp(next);
         display('Playing next song');
          key.keyPress  (java.awt.event.KeyEvent.VK_N );
     end
end

    

