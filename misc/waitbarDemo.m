steps=20;
hwait=waitbar(0,'请等待>>>>>>>>');
step=steps/100;
for k=1:steps
    if steps-k<=5
        waitbar(k/steps,hwait,'即将完成');
        pause(0.05);
    else
        PerStr=fix(k/step);
        str=['正在运行中',num2str(PerStr),'%'];
        waitbar(k/steps,hwait,str);
        pause(0.05);
    end
end
close(hwait);

steps=100;
hwait=waitbar(0,'请等待>>>>>>>>');
for k=1:steps
    if steps-k<=5
        waitbar(k/steps,hwait,'即将完成');
        pause(0.05);
    else
        str=['正在运行中',num2str(k),'%'];
        waitbar(k/steps,hwait,str);
        pause(0.05);
    end
end
close(hwait); % 注意必须添加close函数