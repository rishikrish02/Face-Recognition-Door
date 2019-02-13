% FACE DETECTION AND FACE VERIFICATION USING LOCAL BINARY PATTERN
clc;
clear;
close all;
warning ('off','all');
cam = webcam('USB Video Device');
preview(cam);
    pause(5)
    I = snapshot(cam);
    I=wiener2(rgb2gray(I));
% [f,p] = uigetfile('*.jpg;*.png');
% I = imread([p,f]);
    figure,imshow(I);
    Face = vision.CascadeObjectDetector;
    BB = step(Face,I);
    if ~isempty(BB)
        load fet;
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
%             figure,imshow(im);
%             imwrite(im,sprintf('%d.jpg',iii));
%             L1 = imread(sprintf('%d.jpg',iii));fet1
            L1 = im;
            fet1 = extractLBPFeatures(L1);
        end
        fet2 = zeros(1,size(fet,2));
        fet = [fet;fet2];
        % apply pca
        fet2=pca(fet1);
        %classify
        A = fitcknn(fet,test);
        W = predict(A,fet1);
%         W = LDA(fet,[1 2]);
        W = char(W);
        xx = sprintf('%s',W);
        disp(xx);
    end
    
%     close all;
% end
