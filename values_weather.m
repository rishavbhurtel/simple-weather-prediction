function [T,W,P]=values_weather(mon,D)


if mon == 1 

    Month=uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B199:D229'));
end

if mon==2
    Month=uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B232:D259'));
end


if mon==3
    Month=uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B262:D292'));
end


if mon==4
    Month=uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B295:D324'));
end


if mon==5
    Month=uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B327:D357'));
end


if mon==6
    Month=uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B360:D389'));

end


if mon==7
    Month=uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B3:D33'));
end


if mon==8
    Month=uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B36:D66'));
end


if mon==9
    Month=uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B69:D98'));
end


if mon==10
    Month=uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B101:D131'));
end


if mon==11
    Month=uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B134:D163'));
end


if mon==12
    Month=uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B166:D196'));
end

 T=Month(D,1);
    W=Month(D,2);
    P=Month(D,3);


