function output=fuzzycontrol(x)

global v h   

simnum1=1000;
simnum2=99;
b=0;
   
for n=2:simnum1 %用于将后面的数替前面的数，并将风速幅值给最后一个位置
    v(n-1)=v(n);
end
v(n)=x(1);
v;

for m=0:simnum2  %b是求和，c是计算平均数
    a=v(simnum1-m);
    b=a+b;
end
c=b/(simnum2+1);
d=h*c+(1-h)*x(1);
d;

global K1 K2 
% C2P C2I
% A=rand(8,4);  %把离线数据写入
A(:,:,1) =[ 20.415    0.009;
    18.215    0.008;
    16.140    0.006;
    18.215    0.008;
    16.290    0.006;
    16.420    0.005];
A(:,:,2) =[19.415    0.009
    17.300    0.005
    16.140    0.006
    18.215    0.008
    16.290    0.006
    16.420    0.005];
A(:,:,3) =[19.415    0.009
    18.100    0.005
    16.140    0.007
    18.215    0.008
    16.290    0.006
    16.335    0.005];
A(:,:,4) =[18.415    0.008
    18.215    0.005
    16.140    0.006
    18.215    0.008
    16.290    0.006
    16.415    0.005];
A(:,:,5) =[16.930    0.007
    16.930    0.007
    17.930    0.006
    18.215    0.008
    16.290    0.006
    16.930    0.005];
 A(:,:,6) =[18.415    0.007
    18.215    0.008
    16.319    0.006
    18.215    0.008
    16.290    0.006
    16.420    0.005];
A(:,:,7) =[16.415    0.006
    15.215    0.005
    18.215    0.008
    16.290    0.006
    16.140    0.006
    16.415    0.005];
A(:,:,8) =[17.415    0.007
    18.215    0.006
    18.215    0.008
    16.290    0.006
    16.140    0.006
    16.415    0.005];
A(:,:,9) =[20.415    0.009
    18.215    0.008
    16.240    0.006
    18.215    0.008
    16.290    0.006
    17.132    0.005];
A(:,:,10) =[17.415    0.009
    18.215    0.008
    16.140    0.006
    18.215    0.008
    16.290    0.006
    16.320    0.005];
A(:,:,11) =[16.415    0.005
    16.215    0.006
    16.140    0.006
    18.215    0.008
    16.290    0.006
    16.420    0.005];
A(:,:,12) =[16.415    0.009
    18.215    0.008
    16.290    0.006
    18.215    0.008
    16.290    0.006
    16.359    0.005];


B=14:0.5:19.5;

C=abs(d-B);

[Y1,I]=min(C);
 Y1;
 I;

D=[-1.0e006 -0.5e006 -0.2e006 0.2e006 0.5e006 1.0e006];

E=abs(x(2)-D);

[Y2,J]=min(E);
 Y2;
 J;
K1=A(J,1,I);

K2=A(J,2,I);

% C2P=A(J,3,I);
% 
% C2I=A(J,4,I);


 output=d;
