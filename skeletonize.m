function image_skel = skeletonize(image_src)
    
    imageBW = im2bw(imread(image_src)); 
    image_skel = bwskel(imcomplement(imageBW));
    
end