close all;
imaqreset;
clear all;
clc;

global key
global delay
global up
global dwn
global next
global prev
global count

per_percent_time = (1.05/100);
width=240;
width_scale=0;
up=0;dwn=0;next=0;prev=0;count=0;

vid=videoinput('winvideo',1,'YUY2_320x240');
set(vid,'FramesPerTrigger',Inf);
set(vid,'ReturnedColorSpace','rgb');
vid.FrameGrabInterval=1;
import java.awt.Robot;
import java.awt.event.*;
key=Robot;
screensize=get(0,'screensize');
aspect_ratio=screensize(3)/screensize(4);


while(1)
    choice=menu('Gesture controlled VLC player',...
        'Start',...
        'Exit');
    
    start(vid);
    figure;
    close all;
    
    if(choice==1)
        clc;
        while(vid.FramesAcquired<=3000)
            I=getsnapshot(vid);
            I1=imsubtract(I(:,:,3),rgb2gray(I));
            I1=medfilt2(I1,[4 4]);
            I1=im2bw(I1,0.13);
            I1=bwareaopen(I1,300);
            L1=bwlabel(I1,8);
            
            s1=regionprops(L1,'BoundingBox','Centroid');
            
            I2=imsubtract(I(:,:,1),rgb2gray(I));
            I2=medfilt2(I2,[4 4]);
            I2=im2bw(I2,.255);
            I2=bwareaopen(I2,300);
            L2=bwlabel(I2,8);
            
            s2=regionprops(L2,'BoundingBox','Centroid');
            
            imshow(I);
            
            hold on
            for j=1:length(s2)
                bb2=s2(j).BoundingBox;
                bc2=s2(j).Centroid;
                bc2(1)=(1366/320)*bc2(1);
                bc2(2)=(768/240)*bc2(2);
      
                plot(bc2(1),bc2(2),'r*')
                key.mouseMove(bc2(1),bc2(2));
            end
            hold off
            
            if(j==1)
                up=0;dwn=0;next=0;prev=0;count=0;
                pause(.1);
                disp('0');
            end
            
            if(j==2)
                play_pause();
            end
            
            hold on
            for  i=1:length(s1)
                bb1=s1(i).BoundingBox;
                bc1=s1(i).Centroid;
                
                width_scale= (width/bc1(2));
                delay=(per_percent_time*width_scale);
             
                plot(bc1(1),bc1(2),'r*')
                
            end
            hold off
            
            if(i==1)
                vol_up(bc1(2));
                vol_down(bc1(2));
                next_song(bc1(1));
                prev_song(bc1(1));
            end
            
           
            if(i==2)
                %display('Mouse click');
                key.mousePress(InputEvent.BUTTON1_MASK);
                key.mouseRelease(InputEvent.BUTTON1_MASK);
            end 
            
        end
        stop(vid);
        flushdata(vid);
    end
    
    if(choice==2)
        close all;
        stop(vid);
        flushdata(vid);
        return;
    end
    
end