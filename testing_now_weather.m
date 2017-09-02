%Read data and sort into months
july = uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B3:D33'));
aug = uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B36:D66'));
sep = uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B69:D98'));
oct = uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B101:D131'));
nov = uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B134:D163'));
dec = uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B166:D196'));
jan = uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B199:D229'));
feb = uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B232:D259'));
mar = uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B262:D292'));
apr = uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B295:D324'));
may = uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B327:D357'));
june = uint8(xlsread('ktm july 1 2016 to july 26 2017 weather data.xlsx','Sheet1','B360:D389'));

%Taking input from the user

M=input('Kindly enter the month in number : ');

while M <=0 || M >=13
    fprintf('Kindly enter the correct month (0<M<12)')
    M=input('Kindly enter the month in number : ');

end

D=input('Kindly enter the day in number : ');

if M == 1 || M == 3 || M==5 || M ==7 || M ==8 || M ==10 || M ==12
while D <=0 || D >=32
    fprintf('Kindly enter the correct Day (0<D<31)')
    M=input('Kindly enter the month in number : ');

end
end

if M ==2
        while D <=0 || D >=29
    fprintf('Kindly enter the correct month (0<D<28)')
    M=input('Kindly enter the month in number : ');
        end
end

if M ==4 || M ==6 || M ==9 || M ==11
        while D <=0 || D >=31
    fprintf('Kindly enter the correct month (0<D<30)')
    M=input('Kindly enter the month in number : ');
        end
end
 
[T W P]=values_weather(M,D);
temp_mat=search_temp(T,M);
wind_mat=search_wind(W,M);
prec_mat=search_prec(P,M);

Temperature=average_temp(temp_mat,M);
Wind=average_wind(wind_mat,M);
Precipitation=average_prec(prec_mat,M);



if Temperature >= 24
fprintf('The expected Temperature will be Hot around %d%sC.\n',Temperature,char(176))
else 
    fprintf('The expected Temperature  will be Cool around %d%sC.\n',Temperature,char(176))
end
   
if Wind > 5
    fprintf('It will be Windy at around %d Kmph.\n',Wind)
else 
    fprintf('It will be Calm at around %d Kmph.\n',Wind)
end


if Precipitation > 0
    fprintf('It will likely be rainy at around %d mm precipitaion.\n',Precipitation)
else 
    fprintf('It will be dry with no expected rainfall.\n')
end