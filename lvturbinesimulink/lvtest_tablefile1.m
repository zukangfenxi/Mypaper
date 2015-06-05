clear
clc

load cp_cq;
Ctorque=cq(2:5:102,2:5:182);
for i=1:21
    for j=1:37
        if isnan(Ctorque(i,j))
            Ctorque(i,j)=0;                        
        end
    end
end
clear cp_cq

% global init_x0;
% 
% init_x0=[0 -1.9324e003 -223.194 3.8959e003];

global steptime tmpw 
steptime=0.01;
tmpw=0;

global  Ve roughness turb_int beta R ro_air cut_in cut_out Tact Jem Jwt K   
Ve=13.5; 
roughness=600;
turb_int=12;
beta=0;

R=40;
ro_air=1.225;
cut_in=3;
cut_out=25;
Tact=0;

Jem=90;
Jwt=9e7;
K=83;


sim('lvtest_table1');   
         
disp('end')