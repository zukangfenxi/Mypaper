function Te=fcn(Wg,W1)
% p=12:0.2:16;
% [q1,q2]=min(abs(p-v1));
% v1=p(q2);
% 
% 
% if v1>=0 && v1<3
%     u=0;
% else if v1>=3 && v1<13.5
%         u=2e6*exp(-(v1-13.5)^2/5^2);
%     else v1>=13.5 && v1<=25
%         u=2e6;
%     end
% end
Te=6855.84/((Wg-W1)*((0.00169-0.813*0.0024*W1/(Wg-W1))^2+(0.03692+0.813*0.03759)^2));