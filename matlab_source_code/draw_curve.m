function [slope]=draw_curve(voltage, suffix, ti, current_p, current_n)
title_pic = sprintf("Vp=%.2f,Vn=0 Simulation Result, using %s method",voltage,suffix);
x1=1:ti/10;
temp_1=current_p(ti-ti/10+1:ti,1);
temp_2=current_n(ti-ti/10+1:ti,1);
y1=polyfit(x1.',temp_1,1);%������ϣ�y1б�ʾ��ǵ�����
y2=polyfit(x1.',temp_2,1);
% figure
% plot(x1,y1(1,1)*x1+y1(1,2))
% hold on
% plot(current_p(ti-ti/10+1:ti,1))
% hold on
% plot(x1,y2(1,1)*x1+y2(1,2))
% hold on
% plot(current_n(ti-ti/10+1:ti,1))
% title(title_pic)
slope = (y1(1)+y2(1))/2;
fprintf('Slope is %f.\n', slope);
end

