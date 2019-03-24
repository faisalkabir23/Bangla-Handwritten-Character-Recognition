%  this will crate the target matrics

y = zeros(1250,50);
j = 1;

for i = 1 : 1250
    y(i , j ) = 1;
    if ~(mod(i, 25) > 0)
        j = j + 1;
    end;    
end