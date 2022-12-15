function [vol] = Calculate_Volume(type, s)
  vol = zeros(1, size(s,1));
    function [volu] = Sphere(s)
        volu = zeros(1,size(s,1));
        for i=1:size(s, 1)
          volu(i) = 4/3 * pi * s(i, 1) ^ 3;
        end
    end
    function [volu] = Cylinder(s)
        volu = zeros(1,size(s,1));
        for i=1:size(s, 1)
          volu(i) = pi * s(i, 1)^2 * s(i, 2);
        end
    end
    function [volu] = RightCone(s)
        volu = zeros(1,size(s,1));
        for i=1:size(s, 1)
          volu(i) = pi * s(i, 2)/3 * s(i, 1)^2;
        end
    end
    function [volu] = Cube(s)
        volu = zeros(1,size(s,1));
        for i=1:size(s, 1)
          volu(i) = s(i,1)^3;
        end
    end
    if strcmp(type, 'Cube')
        [vol] = Cube(s);
    elseif strcmp(type, 'RightCone')
        [vol] = RightCone(s);
    elseif strcmp(type, 'Sphere')
        [vol] = Sphere(s);
    else
        [vol] = Cylinder(s);
    end 
end

%vol = Calculate_Volume('RightCone', [4, 6]);
%disp(vol);
%vol = Calculate_Volume('Cube', [4]);
%disp(vol);
%vol = Calculate_Volume('Sphere', [3.5]);
%disp(vol);
%vol = Calculate_Volume('Cylinder', [2.5, 10]);
%disp(vol);