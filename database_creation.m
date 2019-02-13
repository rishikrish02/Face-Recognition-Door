% Database Creation
clc;
clear;
close all;
warning ('off','all');
%
cam = webcam('USB2.0 PC CAMERA');
preview(cam);
    pause(5)
    I = snapshot(cam);
    figure,imshow(I);
    Face = vision.CascadeObjectDetector;
    BB = step(Face,I);
    if ~isempty(BB)
    hold on
        for ii = 1:size(BB,1)
            rectangle('Position',BB(ii,:),'LineWidth',2,'LineStyle','-','EdgeColor','r');
        end
        title('Face Detection');
        for ii = 1:size(BB,1)
            F = imcrop(I,BB(ii,:));
            figure,imshow(F);title('face detected image')
            F = imresize(F,[160,160]);
            hold off;
            I1 = F;
            [m,n,o] = size(I1);
            if o == 3
                im = im2double(rgb2gray(I1));
            else
                im = im2double(I1);
            end
            figure,imshow(im);
            imwrite(im,'1.jpg');
        end
    end
