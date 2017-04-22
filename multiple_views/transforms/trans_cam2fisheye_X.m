function X = trans_cam2fisheye_X(Xcam, M, D)

xcam = Xcam(1, :) ;
ycam = Xcam(2, :) ;
zcam = Xcam(3, :) ;

[x, y] = fisheye_cam2im(xcam, ycam, zcam, M, D);

X = [x; y; ones(1, size(x, 2))] ;

end