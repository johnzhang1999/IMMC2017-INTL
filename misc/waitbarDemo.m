steps=20;
hwait=waitbar(0,'��ȴ�>>>>>>>>');
step=steps/100;
for k=1:steps
    if steps-k<=5
        waitbar(k/steps,hwait,'�������');
        pause(0.05);
    else
        PerStr=fix(k/step);
        str=['����������',num2str(PerStr),'%'];
        waitbar(k/steps,hwait,str);
        pause(0.05);
    end
end
close(hwait);

steps=100;
hwait=waitbar(0,'��ȴ�>>>>>>>>');
for k=1:steps
    if steps-k<=5
        waitbar(k/steps,hwait,'�������');
        pause(0.05);
    else
        str=['����������',num2str(k),'%'];
        waitbar(k/steps,hwait,str);
        pause(0.05);
    end
end
close(hwait); % ע��������close����