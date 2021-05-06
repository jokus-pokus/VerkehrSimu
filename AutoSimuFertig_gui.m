function varargout = AutoSimuFertig_gui(varargin)
% AUTOSIMUFERTIG_GUI MATLAB code for AutoSimuFertig_gui.fig
%      AUTOSIMUFERTIG_GUI, by itself, creates a new AUTOSIMUFERTIG_GUI or raises the existing
%      singleton*.
%
%      H = AUTOSIMUFERTIG_GUI returns the handle to a new AUTOSIMUFERTIG_GUI or the handle to
%      the existing singleton*.
%
%      AUTOSIMUFERTIG_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AUTOSIMUFERTIG_GUI.M with the given input arguments.
%
%      AUTOSIMUFERTIG_GUI('Property','Value',...) creates a new AUTOSIMUFERTIG_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AutoSimuFertig_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AutoSimuFertig_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AutoSimuFertig_gui

% Last Modified by GUIDE v2.5 30-Oct-2013 09:43:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AutoSimuFertig_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @AutoSimuFertig_gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before AutoSimuFertig_gui is made visible.
function AutoSimuFertig_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AutoSimuFertig_gui (see VARARGIN)

% Choose default command line output for AutoSimuFertig_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AutoSimuFertig_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AutoSimuFertig_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function Strecke_Callback(hObject, eventdata, handles)
% hObject    handle to Strecke (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Strecke as text
%        str2double(get(hObject,'String')) returns contents of Strecke as a double


% --- Executes during object creation, after setting all properties.
function Strecke_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Strecke (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Zeit_Callback(hObject, eventdata, handles)
% hObject    handle to Zeit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Zeit as text
%        str2double(get(hObject,'String')) returns contents of Zeit as a double


% --- Executes during object creation, after setting all properties.
function Zeit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Zeit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Dichte_Callback(hObject, eventdata, handles)
% hObject    handle to Dichte (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Dichte as text
%        str2double(get(hObject,'String')) returns contents of Dichte as a double


% --- Executes during object creation, after setting all properties.
function Dichte_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Dichte (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Troedel_Callback(hObject, eventdata, handles)
% hObject    handle to Troedel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Troedel as text
%        str2double(get(hObject,'String')) returns contents of Troedel as a double


% --- Executes during object creation, after setting all properties.
function Troedel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Troedel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Animation1.
function Animation1_Callback(hObject, eventdata, handles)
% hObject    handle to Animation1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Animation1,'BackgroundColor','red');
drawnow();
 global s m t
 
% %Animation
Zellenanzahl=round(s/0.0075);
fighandle = figure(1);
for i=1:t
    w = m(i,:);
    phi = 2*pi/Zellenanzahl*(0:Zellenanzahl);
    phi=phi(~isnan(w));
    figure(fighandle);
    plot(5*cos(-phi+90),5*sin(-phi+90), '.'); 
    xlim([-5 5]); 
    ylim([-5 5]);
    axis([-5.2 5.2 -5.2 5.2])    
    pause(0.1)
end

set(handles.Animation1,'BackgroundColor','white');


% --- Executes on button press in Simulation1.
function Simulation1_Callback(hObject, eventdata, handles)
% hObject    handle to Simulation1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Simulation1,'BackgroundColor','red');
drawnow();

global m s t d p vmax

% Einlesen der Daten
s=str2num(get(handles.Strecke,'String'));
t=str2num(get(handles.Zeit,'String'));
p=str2num(get(handles.Troedel,'String'));
d=str2num(get(handles.Dichte,'String'));
vmax=str2num(get(handles.vmax,'String'));

%Berechnen der Simulation
m=AutoSimuFertig(d,t,s,p,vmax);

set(handles.Simulation1,'BackgroundColor','white');


% --- Executes on button press in Plot1.
function Plot1_Callback(hObject, eventdata, handles)
% hObject    handle to Plot1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Plot1,'BackgroundColor','red');
drawnow();
global m s t d vmax

%Plot
[zeitschritte,vmittel] = AutoSimuFertig_MittlereGeschwindigkeitsfkt(m,s,t);
Zellenanzahl=round(s/0.0075);

figure(4)
load('MyColormaps.mat')
colormap(mycmap);
imagesc(m, [-1 5])
delta= Zellenanzahl/4;
delta2=s/4;
set(gca,'XTick',0:delta:Zellenanzahl )
set(gca,'XTickLabel',{})
set(gca,'xticklabel',[0:delta2:s]) 
xlabel('Strecke in Km')
ylabel('Zeit in s')

figure(3)
plot(zeitschritte,vmittel,'color','black','linewidth',2); 
title('Mittlere Geschindigkeit')
xlabel('Zeit in s')
ylabel('Geschwindigkeit in Km/h')

set(handles.Plot1,'BackgroundColor','white');


% --- Executes on button press in Animation2.
function Animation2_Callback(hObject, eventdata, handles)
% hObject    handle to Animation2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Animation2,'BackgroundColor','red');
drawnow();
 global s2 n t2
 
% %Animation
Zellenanzahl=round(s2/0.0075);
figure(5)
for i=1:t2
    w2 = n(i,:);
    phi2 = 2*pi/Zellenanzahl*(0:Zellenanzahl);
    phi2=phi2(~isnan(w2));
    plot(5*cos(-phi2+90),5*sin(-phi2+90), '.'); xlim([-5 5]); ylim([-5 5]);
    
    axis([-5.2 5.2 -5.2 5.2])
    pause(0.1)
end

set(handles.Animation2,'BackgroundColor','white');


% --- Executes on button press in Simulation2.
function Simulation2_Callback(hObject, eventdata, handles)
% hObject    handle to Simulation2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Simulation2,'BackgroundColor','red');
drawnow();

global n s2 t2 d2 vmax2 p2

% Einlesen der Daten
s2=str2num(get(handles.Strecke,'String'));
t2=str2num(get(handles.Zeit,'String'));
p2=str2num(get(handles.Troedel,'String'));
d2=str2num(get(handles.Dichte,'String'));
vmax2=str2num(get(handles.vmax,'String'));

%Berechnen der Simulation
n = AutoSimuFertig2(d2,t2,s2,p2,vmax2);

set(handles.Simulation2,'BackgroundColor','white');


% --- Executes on button press in Plot2.
function Plot2_Callback(hObject, eventdata, handles)
% hObject    handle to Plot2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Plot2,'BackgroundColor','red');
drawnow();
global n s2 t2 d2
%Plot
[zeitschritte2,vmittel2] = AutoSimuFertig_MittlereGeschwindigkeitsfkt(n,s2,t2);
Zellenanzahl=round(s2/0.0075);

figure(7)
plot(zeitschritte2,vmittel2,'linewidth',2)
title('Mittlere Geschindigkeit')
xlabel('Zeit in s')
ylabel('Geschwindigkeit in Km/h')

figure(8)
load('MyColormaps.mat')
colormap(mycmap);
imagesc(n, [-1 5])

delta= Zellenanzahl/4;
delta2=s2/4;
Skallierung2=4*delta2;
set(gca,'XTick',0:delta:Zellenanzahl )
set(gca,'XTickLabel',{})
set(gca,'xticklabel',[0:delta2:Skallierung2]) 

xlabel('Strecke in Km')
ylabel('Zeit in s')

set(handles.Plot2,'BackgroundColor','white');


% --- Executes on button press in Fundia1.
function Fundia1_Callback(hObject, eventdata, handles)
% hObject    handle to Fundia1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.Fundia1,'BackgroundColor','red');
drawnow();
global p s vmax

%fundia(p2,s2,vmax2);
% figure(2)
% title('Fundamentaldiagramm')
% plot(pskala,fluss,'linewidth',2)
% xlabel('Dichte in %')
% ylabel('Verkehrsfluss in Km/h')


Zellenanzahl=round(s/0.0075);
zeit=round(Zellenanzahl/3.5);
pskala=(1:1:100);
fluss=zeros(1,100);
fluss(fluss==0)=NaN;
vMax=vmax;

b=3600/zeit;

figure(9) 
title('Fundamentaldiagramm')
xlabel('Verkehrsdichte in %')
ylabel('Flussdichte in Fzg/h')
axis([0 100 0 3000])
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
    fluss(d)=anz*b;
    
%     pn = [pskala(d) pskala(d+1)];
%     fn = [fluss(d) fluss(d+1)];
    plot(pskala, fluss,'color','black');
    axis([0 100 0 3000])
    hold all   
    pause(0.05);
        
end
drawnow();

set(handles.Fundia1,'BackgroundColor','white');

function vmax_Callback(hObject, eventdata, handles)
% hObject    handle to vmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vmax as text
%        str2double(get(hObject,'String')) returns contents of vmax as a double


% --- Executes during object creation, after setting all properties.
function vmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function Fundia1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fundia1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
