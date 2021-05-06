function [Feld] = AutoSimuFertig2(Verkehrsdichte,ZeitintervallAnzahl,Streckenlaenge,Troedelfaktor,vmax)
%Intintialisieren
vMax=vmax/27;
Zellenanzahl=round(Streckenlaenge/0.0075);
p=Troedelfaktor/100;
t=ZeitintervallAnzahl;
VerkehrsdichteProzent=Verkehrsdichte/100;
Teststrecke=zeros(1,Zellenanzahl);
Fzg=Zellenanzahl*VerkehrsdichteProzent;

for i=1:Zellenanzahl
    if Fzg>0
        Teststrecke(1,i)=0;
        Fzg=Fzg-1;
    else    
        Teststrecke(1,i)=NaN;
    end
end

Feld=zeros(t,Zellenanzahl+1);


for z=1:t
    for i=1:Zellenanzahl
        Feld(z,i)=Teststrecke(1,i);
    end
    
    %Algorithmus:    
    
    %Beschleunigen 
    for k =1:Zellenanzahl
            if Teststrecke(1,k)<vMax %&& isnan (Teststrecke(1,j+1))
                Teststrecke(1,k)=Teststrecke(1,k)+1;
            end
        
    end
    
    %Bremsen
    
 o=1;
   while o<=Zellenanzahl
       while  isnan (Teststrecke(1,o)) && o<Zellenanzahl
           o=o+1;
       end
       k=o+1;
       s=0;
       d=0;
       if k>Zellenanzahl
           k=1;
           s=1;
       end
       while isnan (Teststrecke(1,k))
           k=k+1;
           if k>Zellenanzahl
               k=1;
               s=1;
           end
       end
       if s==1
           d=k+Zellenanzahl-o-1;
            if d<=Teststrecke(1,o)
                Teststrecke(1,o)=d;
            end
       end
       
       if s==0
         d=k-o-1;
             if d<=Teststrecke(1,o)
                 Teststrecke(1,o)=d;
            end
       end
       o=o+1;
       s=0;
   end
   
   %Trödeln
   
   for i=1:Zellenanzahl
       if ~isnan(Teststrecke(1,i))
           if Teststrecke(1,i)>0
                x=rand(1,1);                
                if x<p;
                    Teststrecke(1,i)=Teststrecke(1,i)-1;
                end    
           end
       end    
   end
                     
    %Bewegen
 j=1;
    while j<=Zellenanzahl                                               %durchläuft das Array
        if ~isnan(Teststrecke(1,j))
            v=Teststrecke(1,j);
            if j>=5                
                if j<=Zellenanzahl-Teststrecke(1,j)                                                                            %wenn ja wird es um v-plätze nach vorne verschoben
                    Teststrecke(1,j+v)=v;
                    if v~=0;
                        Teststrecke(1,j)=NaN;
                    end
                    j=j+v+1;
                else
                        vrest=Teststrecke(1,j)-(Zellenanzahl-j);            %wird die differenzgeschwindigkeit als distanz angenommen
                        Teststrecke(1,vrest)=v;                               %und an den arrayanfang angehängt
                        if v~=0
                            Teststrecke(1,j)=NaN;
                        end
                        j=j+1;
                end
            else                                                       %wenn ja wird es um v-plätze nach vorne verschoben
                    Teststrecke(1,j+v)=v;
                    if v~=0;
                        Teststrecke(1,j)=NaN;
                    end
                    j=j+v+1;
            end
        else                                                            %ab der Stelle, an der es problematisch werden könnte
            j=j+1;
        end
    end

end


