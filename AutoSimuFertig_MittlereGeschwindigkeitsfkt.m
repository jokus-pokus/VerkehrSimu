function [zeitschritte,vmittel] = AutoSimuFertig_MittlereGeschwindigkeitsfkt(MatrixA,Streckenlaenge,ZeitintervallAnzahl)
Zellenanzahl=round(Streckenlaenge/0.0075);
vmittel=zeros(1,ZeitintervallAnzahl);
zeitschritte=zeros(1,ZeitintervallAnzahl);
Fzg=0;
for i=1:Zellenanzahl
    if ~isnan(MatrixA(1,i))
        Fzg=Fzg+1;
    end    
end
    
for i=1:ZeitintervallAnzahl
    for j=1:Zellenanzahl
        if ~isnan(MatrixA(i,j))
            vmittel(1,i)=vmittel(1,i)+MatrixA(i,j);            
        end    
    end
    vmittel(1,i)=(vmittel(1,i)/Fzg);
    vmittel(1,i)=(vmittel(1,i)*27);
    zeitschritte(1,i)=i;
end    



    