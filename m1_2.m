    %   Miia 2019-01-27
    %   tehtava 2

    clear variables
    close all;
	
    data=load('C:\Users\Mlaa\Koulu\Tilastollinen_matikka\1\kurssi.dat');
    sort_data  = sort(data);
    n = length(data);
    data1= [26,28,30,31,31,31,32,32,32,32,32,32,33,33,34,34,35,35,36,36,37,37,37,37,38,38,39,39,40,40,42,42,42,43,43,43,43,45,48,48,49,51,54,58,60];
    %data2 = sort_data(:,3:45)
    test= isoutlier (data)
    test2 = data(~isoutlier(data))
    
    F_size = 10;
    
    title_text = ('Pisteet') 
    NM = 'probability';
   
    tod_mean = mean(data) %otoskeskiarvo
    tod_median = median(data) %mediaani
    tod_var = var(data) %varianssi
    tod_sd = std(data) %otoskeskihajonta
    [t_mod, t2mod, t3mod] = mode(data) %moodi
    % kannattaa hyödyntää rajatapauksien kanssa
   
    close all

    figure(1)
    
   	boxplot(data, 'plotstyle', 'traditional','orientation','horizontal','labels',title_text, 'whisker', 1.5)
    set(gca, 'Fontsize', F_size);
    title('Laatikkojanakuvaaja')
    xlabel('Pisteet')
    
    figure(2)
    
    histogram(data,10)%'Normalization',NM)
    set(gca, 'Fontsize', F_size);
    title('Histogrammi')
    xlabel('Pisteet')
    
    figure(3)
    
   	boxplot(data1, 'plotstyle', 'traditional','orientation','horizontal','labels',title_text, 'whisker', 1.5)
    set(gca, 'Fontsize', F_size);
    title('Laatikkojanakuvaaja')
    xlabel('Pisteet')
    
    figure(4)
    
    histogram(data1,10)%'Normalization',NM)
    set(gca, 'Fontsize', F_size);
    title('Histogrammi')
    xlabel('Pisteet')
          
    x = 6;
    
    figure(5)
  
    histogram(data,x);
    set(title(x));
    title('data 1')
    xlabel(x)
      
    figure(6)

    histogram(data1,x);
    set(title(x));
    title('data 2')
    xlabel(x)