function Average=average_wind(wind_mat,mon)

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

data=wind_mat(:);

data=uint8(data);
data=data';
data=nonzeros(data);
data=data';

for i=1:length(data)
Wind(1,i)=Month(i,2);
end

edges=unique(Wind);
prob=histc(Wind,edges)/numel(Wind);
max_prob=max(prob);
ix=find(prob==max(prob));
index=ix(1);
data=edges(index);

if max_prob >= 0.5
Average = data;

else
    Average = mean(Wind);
        Average=round(Average);
end