function []= fundia(p,s,vmax)
% Zellenanzahl=round(s/0.00075);
% zeit=round(Zellenanzahl/3.5);
% pskala=(1:1:100);
% fluss=zeros(1,100);
% vMax=vmax;
% 
% for d=1:100;
%     anz=0;
%     m=AutoSimuFertig(d,zeit,s,p,vMax);
%     for j=1:zeit
%         for i=1:5
%             if ~isnan(m(j,i))
%                 if m(j,i)>=i
%                     anz=anz+1;
%                 end
%             end
%         end
%     end
%     fluss(1,d)=(anz/zeit)*100;
% end
% 
Zellenanzahl=round(s/0.0075);
zeit=round(Zellenanzahl/3.5);
pskala=(1:1:100);
fluss=zeros(1,100);
vMax=vmax;

figure(9) 
title('Fundamentaldiagramm')
xlabel('Verkehrsdichte in %')
ylabel('Flussdichte in Fzg/h')
axis([0 100 0 70])
for d=1:100;
    anz=0;
    m=AutoSimuFertig(d,zeit,s,p,vMax);
    for j=1:zeit
        for i=1:5
            if ~isnan(m(j,i))
                if m(j,i)>=i
                    anz=anz+1;
                end
            end
        end
    end
    fluss(1,d)=(anz/zeit)*100;

    pn = [pskala(d) pskala(d+1)];
    fn = [fluss(d) fluss(d+1)];
    plot(pn,fn,'linewidth',2);
    axis([0 100 0 70])
    hold all   
    pause(0.05);
        
end
drawnow();