global A = csvread('csv_matter.csv');  #do not change this line

function read_accel(axl,axh,ayl,ayh,azl,azh)  
  appendStr = "00000000";
  ax = strcat(dec2bin(axl),dec2bin(axh));
  axd = bin2dec(ax);
  ay = strcat(dec2bin(ayl),dec2bin(ayh));
  ayd = bin2dec(ay);
  az = strcat(dec2bin(azl),dec2bin(azh));
  azd = bin2dec(az);
  array = [axl,axh,ayl,ayh,azl,azh];
  new_array = [];
  for i = 1:length(array)
    disp(array(i));
    str = dec2bin(array(i));
    if (length(str) < 8)
      x = 8 - length(str);
      y = appendStr(1:x);
      disp(y);
      str = strcat(y, str);
      new_array(str);
      disp(str);
    endif;
  endfor;

endfunction

function execute_code
  global A
  for n = 1:rows(A)   #do not change this line
    if (n == 1)
      read_accel(A(210, [1:1]), A(210, [2:2]), A(210, [3:3]), A(210, [4:4]), A(210, [5:5]), A(210, [6:6]));
    endif;
    break;
    ###############################################
    ####### Write a code here to calculate  #######
    ####### PITCH using complementry filter #######
    ###############################################
    
  endfor
endfunction

execute_code