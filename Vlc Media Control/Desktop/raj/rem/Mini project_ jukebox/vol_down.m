    function vol_down(y)

    global key
    global delay
    global dwn
    delay2=(.252-delay);
    
    if((dwn==0)||(dwn==1))
        if((y>=0)&&(y<=40))
            pause(.2);
            key.keyPress  (java.awt.event.KeyEvent.VK_CONTROL );
            key.keyPress  (java.awt.event.KeyEvent.VK_DOWN );
            pause(delay2);
            display('dwn0');
            %         delay
            key.keyRelease  (java.awt.event.KeyEvent.VK_DOWN );
            key.keyRelease  (java.awt.event.KeyEvent.VK_CONTROL );

            dwn=dwn+1;
            display(dwn);
            return;
        end
    end

    if((dwn>=2)&&(dwn<=3))
        if((y>=40)&&(y<=80))
            pause(.2);
            key.keyPress  (java.awt.event.KeyEvent.VK_CONTROL );
            key.keyPress  (java.awt.event.KeyEvent.VK_DOWN );
            pause(delay2);
            display('dwn1');
            %         delay
            key.keyRelease  (java.awt.event.KeyEvent.VK_DOWN );
            key.keyRelease  (java.awt.event.KeyEvent.VK_CONTROL );

            dwn=dwn+1;
            display(dwn);
            return;
        end
    end

    if((dwn>=4)&&(dwn<=5))
        if((y>=80)&&(y<=120))
            pause(.2);
            key.keyPress  (java.awt.event.KeyEvent.VK_CONTROL );
            key.keyPress  (java.awt.event.KeyEvent.VK_DOWN );
            pause(delay2);
            display('dwn2');
            %         delay
            key.keyRelease  (java.awt.event.KeyEvent.VK_DOWN );
            key.keyRelease  (java.awt.event.KeyEvent.VK_CONTROL );

            dwn=dwn+1;
            display(dwn);
            return;
        end
    end

    if((dwn>=6)&&(dwn<=7))
        if((y>=120)&&(y<=160))
            pause(.2);
            key.keyPress  (java.awt.event.KeyEvent.VK_CONTROL );
            key.keyPress  (java.awt.event.KeyEvent.VK_DOWN );
            pause(delay2);
            display('dwn3');
            %         delay
            key.keyRelease  (java.awt.event.KeyEvent.VK_DOWN );
            key.keyRelease  (java.awt.event.KeyEvent.VK_CONTROL );

            dwn=dwn+1;
            display(dwn);
            return;
        end
    end

    if((dwn>=8)&&(dwn<=9))
        if((y>=160)&&(y<=200))
            pause(.2);
            key.keyPress  (java.awt.event.KeyEvent.VK_CONTROL );
            key.keyPress  (java.awt.event.KeyEvent.VK_DOWN );
            pause(delay2);
            display('dwn4');
            %         delay
            key.keyRelease  (java.awt.event.KeyEvent.VK_DOWN );
            key.keyRelease  (java.awt.event.KeyEvent.VK_CONTROL );

            dwn=dwn+1;
            display(dwn);
            return;
        end
    end

    if(dwn>=10)
        if((y>=200)&&(y<=240))
            pause(.2);
            key.keyPress  (java.awt.event.KeyEvent.VK_CONTROL );
            key.keyPress  (java.awt.event.KeyEvent.VK_DOWN );
            pause(delay2);
            display('dwn5');
            %         delay
            key.keyRelease  (java.awt.event.KeyEvent.VK_DOWN );
            key.keyRelease  (java.awt.event.KeyEvent.VK_CONTROL );
            dwn=dwn+1;
            display(dwn);
            return;
        end
    end
    end