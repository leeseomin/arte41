parallel --no-notice rm -r ::: s1/* s2/* s3/* s4/* s5/* s6/* s7/* s8/* s9/* s10/* s11/* s12/* s13/*
parallel --no-notice rm -r ::: s14/* s15/* s16/* s17/* s18/* s19/* s20/* s21/* s22/* s23/* s24/* s25/*
# 파일이름들  space delete
cd s
for f in *\ *; do mv "$f" "${f// /_}"; done
cd s
parallel convert {} -resize 9000x9000 {.}.png ::: *.* 
rm *.jpg
rm *.JPG
parallel convert {} ../s25/{} ::: *.*
cd ..
cd s
parallel gmic {} -fx_array 6,6,0,0,0,0 -o ../s18/{} ::: *.*
cd ..
cd s18
parallel convert {}  -set filename:new  ../s25/"%td4array6" "%[filename:new].png" ::: *.*
cd ..
cd s
parallel gmic {} -fx_array 3,3,0,0,0,0 -o ../s17/{} ::: *.*
cd ..
cd s17
parallel convert {}  -set filename:new  ../s25/"%td4array3" "%[filename:new].png" ::: *.*
cd ..
cd s18
parallel gmic {} -weave 10,65,0,0.5,0,0,0,0,0 -o ../s19/{} ::: *.*
cd ..
cd s19
parallel convert {}  -set filename:new  ../s25/"%td4array6w" "%[filename:new].png" ::: *.*
cd ..
cd s17
parallel gmic {} -weave 10,65,0,0.5,0,0,0,0,0 -o ../s19/{} ::: *.*
cd ..
cd s19
parallel convert {}  -set filename:new  ../s25/"%td4array3w" "%[filename:new].png" ::: *.*
cd ..
cd s7
parallel gmic {} -array_random 5,5,7,7 -o ../s6/{} ::: *.*
cd ..
cd s6
parallel gmic {} -fx_array 2,2,0,0,0,0 -o ../s5/{} ::: *.*
cd ..
cd s5
parallel convert {} -resize 3000x3000 {} ::: *.* &&
parallel convert {}  -set filename:new  ../s25/"%td4array2" "%[filename:new].png" ::: *.*
cd ..
cd s
parallel gmic {} -fx_droste 20,20,80,20,80,79,20,78,3,0,0,0,1,0,1,0,0 -o ../s12/{} ::: *.*
cd ..
cd s12
parallel convert {}  -set filename:new  ../s25/"%tdroste" "%[filename:new].png" ::: *.*
cd ..
cd s
for i in *.*
do
gmic $i -fx_custom_deformation "(w+h)/20*cos(y*20/h)","(w+h)/20*sin(x*20/w)",1,1,3 -o ../s15/$i
done
cd ..
cd s15
parallel convert {}  -set filename:new  ../s25/"%td_cartesian_transform" "%[filename:new].png" ::: *.*
cd ..
cd s15
parallel convert {}  -set filename:new  ../s25/"%tm3" "%[filename:new].png" ::: *.*
cd ..
cd s
parallel gmic {} -fx_cubism 2,50,10,90,0.7,0,0,50,50 -o ../s2/{} ::: *.*
cd ..
cd s2
parallel gmic {} -fx_unsharp 1,1.25,10,2,0,1,1,1,0,0,0,50,50 -o ../s3/{} ::: *.*
cd ..
cd s3
for i in *.* 
do 
convert $i ../s15/$i -alpha set  -compose softlight -composite ../s4/$i 
done 
cd ..
cd s4
parallel convert {}  -set filename:new  ../s25/"%tx2" "%[filename:new].png" ::: *.*
cd ..
cd s4
parallel gmic {} -fx_pixelsort 0,0,0,1,0,100,0,0,0 -o ../s11/{} ::: *.*
cd ..
cd s11
parallel convert {}  -set filename:new  ../s25/"%tx4" "%[filename:new].png" ::: *.*
cd ..
cd s4
for i in *.* 
do 
convert $i ../s11/$i -alpha set  -compose hardlight -composite ../s22/$i 
done 
cd ..
cd s22
parallel convert {}  -set filename:new  ../s25/"%tx3" "%[filename:new].png" ::: *.*
cd ..
cd s4
parallel gmic {} -fx_twirl 1,50,50,3 -o ../s14/{} ::: *.*
cd ..
cd s14
parallel convert {}  -set filename:new  ../s25/"%tm2tw" "%[filename:new].png" ::: *.*
cd ..
cd s4
for i in *.* 
do 
convert $i ../s12/$i -alpha set  -compose darken -composite ../s2/$i 
done 
cd ..
cd s2
parallel convert {}  -set filename:new  ../s25/"%tm2dro" "%[filename:new].png" ::: *.*
cd ..
cd s4
for i in *.* 
do 
convert $i ../s5/$i -alpha set  -compose darken -composite ../s3/$i 
done 
cd ..
cd s3
parallel convert {}  -set filename:new  ../s25/"%tm2ca" "%[filename:new].png" ::: *.*
cd ..
cd s3
parallel gmic {} -fx_compose_vividscreen 0.6,0,0.7 -o ../s2/{} ::: *.*
cd ..
cd s2
parallel convert {}  -set filename:new  ../s25/"%tm2c" "%[filename:new].png" ::: *.*
cd ..
cd s4
for i in *.* 
do 
convert $i ../s/$i -alpha set  -compose darken -composite ../s17/$i 
done 
cd ..
cd s17
parallel convert {}  -set filename:new  ../s25/"%tx1" "%[filename:new].png" ::: *.*
cd ..
cd s4
for i in *.* 
do 
convert $i ../s17/$i -alpha set  -compose softlight -composite ../s3/$i 
done 
cd ..
cd s3
parallel convert {}  -set filename:new  ../s25/"%tm1h" "%[filename:new].png" ::: *.*
cd ..
cd s17
parallel convert {} -flop  {} ::: *.* 
cd ..
cd s17
parallel convert {}  -set filename:new  ../s25/"%tm1a" "%[filename:new].png" ::: *.*
cd ..
cd s15
for i in *.* 
do 
convert $i ../s4/$i -alpha set  -compose softlight -composite ../s16/$i 
done 
cd ..
cd s16
parallel convert {}  -set filename:new  ../s25/"%td_cartesian_transform3" "%[filename:new].png" ::: *.*
cd ..
cd s16
for i in *.* 
do 
convert $i ../s/$i -alpha set  -compose darken -composite ../s5/$i 
done 
cd ..
cd s5
parallel convert {}  -set filename:new  ../s25/"%tm2a" "%[filename:new].png" ::: *.*
cd ..
cd s
parallel gmic {} -weave 10,65,0,0.5,0,0,0,0,0 -o ../s1/{} ::: *.*
cd ..
cd s1
parallel gmic {} -souphead_droste10 40,100,1,1,1,0,0,0,0,0,1,10,1,0,90,0,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0 -o ../s2/{} ::: *.*
cd ..
cd s2
parallel convert {}  -set filename:new  ../s25/"%tm4" "%[filename:new].png" ::: *.*
cd ..
cd s2
for i in *.* 
do 
convert $i ../s/$i -alpha set  -compose darken -composite ../s13/$i 
done 
cd ..
cd s13
parallel convert {}  -set filename:new  ../s25/"%tm4a" "%[filename:new].png" ::: *.*
cd ..
cd s2
parallel gmic {} -souphead_droste10 40,100,1,1,1,0,0,0,0,0,1,10,1,0,90,0,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0 -o ../s3/{} ::: *.*
cd ..
cd s3
parallel convert {}  -set filename:new  ../s25/"%tm5" "%[filename:new].png" ::: *.*
cd ..
cd s3
for i in *.* 
do 
convert $i ../s15/$i -alpha set  -compose darken -composite ../s4/$i 
done 
cd ..
cd s4
parallel convert {}  -set filename:new  ../s25/"%tm5c" "%[filename:new].png" ::: *.*
cd ..
cd s8
for i in *.*
do
gmic $i -fx_custom_deformation "(w+h)/20*cos(y*20/h)","(w+h)/20*sin(x*20/w)",1,1,3 -o ../s9/$i
done 
cd ..
cd s9
parallel convert {}  -set filename:new  ../s25/"%tz1" "%[filename:new].png" ::: *.*
cd ..
cd s
parallel gmic {} -fx_compose_boostscreen 0.7,0,0.7 -o ../s2/{} ::: *.*
cd ..
cd s2
parallel convert {}  -set filename:new  ../s25/"%ts1" "%[filename:new].png" ::: *.*
cd ..
cd s
parallel gmic {} -fx_project_stereographic 0,50,50,50,75,0,0,0,0,0,50,50 -o ../s1/{} ::: *.*
cd ..
cd s1
parallel convert {}  -set filename:new  ../s25/"%tx_3" "%[filename:new].png" ::: *.*




