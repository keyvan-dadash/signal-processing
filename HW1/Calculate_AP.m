function [p, a] = Calculate_AP(type, s)
  p = zeros(1,size(s,2));
  a = zeros(1,size(s,2));
    function [pe, ae] = Pentagon(s)
        pe = zeros(1,size(s,2));
        ae = zeros(1,size(s,2));
        for i=1:size(s, 2)
          ae(i) = 0.25 * sqrt(5*(5 + 2*sqrt(5))) * s(i)^2;
          pe(i) = 5 * s(i);
        end
    end
    function [pe, ae] = Hexagon(s)
        pe = zeros(1,size(s,2));
        ae = zeros(1,size(s,2));
        for i=1:size(s, 2)
          ae(i) = 1.5 * sqrt(3) * s(i)^2;
          pe(i) = 6 * s(i);
        end
    end
    function [pe, ae] = Circle(s)
        pe = zeros(1,size(s,2));
        ae = zeros(1,size(s,2));
        for i=1:size(s, 2)
          ae(i) = s(i) * s(i) * pi;
          pe(i) = 2 * pi * s(i);
        end
    end
    function [pe, ae] = Triangle(s)
        pe = zeros(1,size(s,2));
        ae = zeros(1,size(s,2));
        for i=1:size(s, 2)
          pe(i) = 3 * s(i);
          ae(i) = sqrt(3) * s(i)^2 / 4;
        end
    end
    if strcmp(type, 'Circle')
        [p, a] = Circle(s);
    elseif strcmp(type, 'Triangle')
        [p, a] = Triangle(s);
    elseif strcmp(type, 'Pentagon')
        [p, a] = Pentagon(s);
    else
        [p, a] = Hexagon(s);
    end 
end



%[pe, ae] = Calculate_AP("Pentagon", [6]);
%disp(pe);
%disp(ae);
%[pe, ae] = Calculate_AP("Hexagon", [6]);
%disp(pe);
%disp(ae);
%[pe, ae] = Calculate_AP("Circle", [5]);
%disp(pe);
%disp(ae);
%[pe, ae] = Calculate_AP("Triangle", [3, 4, 5]);
%disp(pe);
%disp(ae);