    function vol_up(y)

    global key
    global delay
    global up
    
    if((up==0)||(up==1))
        if((y>=200)&&(y<=240))
            pause(.3);
            key.keyPress  (java.awt.event.KeyEvent.VK_CONTROL );
            key.keyPress  (java.awt.event.KeyEvent.VK_UP );
            pause(delay);
            display('up0');
%                      delay
            key.keyRelease  (java.awt.event.KeyEvent.VK_UP );
            key.keyRelease  (java.awt.event.KeyEvent.VK_CONTROL );
            up=up+1;
            display(up);
            return;
        end
    end

    if((up>=2)&&(up<=3))
        if((y>=160)&&(y<=200))
            pause(.3);
            key.keyPress  (java.awt.event.KeyEvent.VK_CONTROL );
            key.keyPress  (java.awt.event.KeyEvent.VK_UP );
            pause(delay);
            display('up1');
            %         delay
            key.keyRelease  (java.awt.event.KeyEvent.VK_UP );
            key.keyRelease  (java.awt.event.KeyEvent.VK_CONTROL );
            up=up+1;
            display(up);
            return;
        end
    end

    if((up>=4)&&(up<=5))
        if((y>=120)&&(y<=160))
            pause(.3);
            key.keyPress  (java.awt.event.KeyEvent.VK_CONTROL );
            key.keyPress  (java.awt.event.KeyEvent.VK_UP );
            pause(delay);
            display('up2');
            %         delay
            key.keyRelease  (java.awt.event.KeyEvent.VK_UP );
            key.keyRelease  (java.awt.event.KeyEvent.VK_CONTROL );
            up=up+1;
            display(up);
            return;
        end
    end

    if((up>=6)&&(up<=7))
        if((y>=80)&&(y<=120))
            pause(.3);
            key.keyPress  (java.awt.event.KeyEvent.VK_CONTROL );
            key.keyPress  (java.awt.event.KeyEvent.VK_UP );
            pause(delay);
            display('up3');
            %         delay
            key.keyRelease  (java.awt.event.KeyEvent.VK_UP );
            key.keyRelease  (java.awt.event.KeyEvent.VK_CONTROL );
            up=up+1;
            display(up);
            return;
        end
    end

    if((up>=8)&&(up<=9))
        if((y>=40)&&(y<=80))
            pause(.3);
            key.keyPress  (java.awt.event.KeyEvent.VK_CONTROL );
            key.keyPress  (java.awt.event.KeyEvent.VK_UP );
            pause(delay);
            display('up4');
            %         delay
            key.keyRelease  (java.awt.event.KeyEvent.VK_UP );
            key.keyRelease  (java.awt.event.KeyEvent.VK_CONTROL );
            up=up+1;
            display(up);
            return;
        end
    end

    if(up>=10)
        if((y>=0)&&(y<=40))
            pause(.3);
            key.keyPress  (java.awt.event.KeyEvent.VK_CONTROL );
            key.keyPress  (java.awt.event.KeyEvent.VK_UP );
            pause(delay);
            display('up5');
%                      delay
            key.keyRelease  (java.awt.event.KeyEvent.VK_UP );
            key.keyRelease  (java.awt.event.KeyEvent.VK_CONTROL );
            up=up+1;
            display(up);
            return;
        end
    end
    end