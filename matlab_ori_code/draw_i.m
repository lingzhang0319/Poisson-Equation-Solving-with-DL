function [slope] = draw_i(titles, ti, current_p, current_n)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    x1=1:ti/10;
    temp_1=current_p(ti-ti/10+1:ti,1);
    temp_2=current_n(ti-ti/10+1:ti,1);
    y1=polyfit(x1.',temp_1,1);%������ϣ�y1б�ʾ��ǵ�����
    y2=polyfit(x1.',temp_2,1);
%     figure
%     plot(x1,y1(1,1)*x1+y1(1,2))
%     hold on
%     plot(current_p(ti-ti/10+1:ti,1))
%     hold on
%     plot(x1,y2(1,1)*x1+y2(1,2))
%     hold on
%     plot(current_n(ti-ti/10+1:ti,1))
%     title(titles)
    slope = mean([y1,y2]);
    sprintf('Slope:%f',slope);
end

