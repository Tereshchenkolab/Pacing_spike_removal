function varargout = removespikegui(varargin)
% REMOVESPIKEGUI MATLAB code for removespikegui.fig
%      REMOVESPIKEGUI, by itself, creates a new REMOVESPIKEGUI or raises the existing
%      singleton*.
%
%      H = REMOVESPIKEGUI returns the handle to a new REMOVESPIKEGUI or the handle to
%      the existing singleton*.
%
%      REMOVESPIKEGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in REMOVESPIKEGUI.M with the given input arguments.
%
%      REMOVESPIKEGUI('Property','Value',...) creates a new REMOVESPIKEGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before removespikegui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to removespikegui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help removespikegui

% Last Modified by GUIDE v2.5 27-Jul-2020 10:15:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @removespikegui_OpeningFcn, ...
                   'gui_OutputFcn',  @removespikegui_OutputFcn, ...
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

toplot = [];
% --- Executes just before removespikegui is made visible.
function removespikegui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to removespikegui (see VARARGIN)

% Choose default command line output for removespikegui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes removespikegui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = removespikegui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in LoadDataButton.
function LoadDataButton_Callback(hObject, eventdata, handles)
% hObject    handle to LoadDataButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fileName_Callback(hObject, eventdata, handles)
% hObject    handle to fileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fileName as text
%        str2double(get(hObject,'String')) returns contents of fileName as a double
filename = get(handles.fileName,'string');
%load(filename,'ECG12Lead');
%plot(ECG12Lead);




% --- Executes during object creation, after setting all properties.
function fileName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in loadData.
function loadData_Callback(hObject, eventdata, handles)
% hObject    handle to loadData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% filetoplot = get(handles.fileName,'string');
% load(filetoplot,'ECG12Lead_bwr');
% plot(ECG12Lead_bwr);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%PathName='/home/perezald/Desktop/AHA_grant_data/BIDMC_GEHCO_ECGs/Mat_files/';
%FileName='30000101.mat';
[filename,PathName,FilterIndex] = uigetfile ({'*.mat'});
%[filename]=uigetfile({'*.mat'},'File Selector');
set(handles.fileName, 'String', [filename])

handles.PathName=PathName;
handles.F_d=dir(strcat(PathName,'*.mat'));
handles.Tot_file=length(handles.F_d);
handles.No_file=1;
% filename=handles.F_d(handles.No_file).name;
% C_ID=strsplit(filename,'.');

% filetoplot = get(handles.fileName,'string');
% load(filetoplot,'ECG12Lead_bwr');
% plot(ECG12Lead_bwr);

  guidata(hObject, handles);

  


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.No_file=handles.No_file-1;

set(handles.fileName, 'String', [handles.F_d(handles.No_file).name])


   
% file = get(handles.fileName,'string');
% load(file,'ECG12Lead_bwr');
% plot(ECG12Lead_bwr);

%C_ID=strsplit(handles.F_d(handles.No_file).name,'.');
mat_f=load(strcat(handles.PathName,handles.F_d(handles.No_file).name))

% ECG12Lead_bwr=mat_f.ECG12Lead_bwr;
% plot(ECG12Lead_bwr);
guidata(hObject, handles);



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cla(handles.plot);
cla(handles.plot_2);

Reviewed_folder = strcat(handles.PathName,'Spike Removed/');
if (exist(Reviewed_folder) == 0)
    mkdir (Reviewed_folder);
end


filename_m=strcat(handles.PathName,handles.F_d(handles.No_file).name);


movefile(filename_m,Reviewed_folder);
 

handles.No_file=handles.No_file+1;

set(handles.fileName, 'String', [handles.F_d(handles.No_file).name])

  
% file = get(handles.fileName,'string');
% load(file,'ECG12Lead_bwr');
% plot(ECG12Lead_bwr);

%C_ID=strsplit(handles.F_d(handles.No_file).name,'.');
mat_f=load(strcat(handles.PathName,handles.F_d(handles.No_file).name))

% ECG12Lead_bwr=mat_f.ECG12Lead_bwr;
% plot(ECG12Lead_bwr);
guidata(hObject, handles); 


function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Clear command window
clc;

%Clear the figure from screen
delete(handles.figure1);



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
up_max= str2num(get(handles.edit4, 'string'));
val_result= str2num(get(handles.edit6, 'string'));
d1= str2num(get(handles.edit7, 'string'));
algorithm2= str2num(get(handles.edit9, 'string'));
pointdiff= str2num(get(handles.edit10, 'string'));
d=up_max+val_result+d1+algorithm2+pointdiff;
% set(handles.text6, 'string',d)

cla(handles.plot);
cla(handles.plot_2);

% clear all
% close all
% clc
warning('OFF');
% filepath='D:\CAMI\Patient19 and 20\spike removal\';
  filepath = handles.PathName;
f1 = figure('units','normalized','outerposition',[0 0 1 1],'visible', 'off');
file_dir = dir(fullfile(filepath,'*.mat'));
% F_d=dir(strcat(PathName,'*.mat'));
Reviewed_folder = strcat(filepath,'spike_removed\');
if (exist(Reviewed_folder) == 0)
    mkdir (Reviewed_folder);
end
% ======================inputs 
peaks=4;
spikecount=4;
% =============main inputs===========
up_max= str2double(get(handles.edit4, 'string'));
val_result= str2double(get(handles.edit6, 'string'));% smaller longer
d1= str2double(get(handles.edit7, 'string'));
algorithm2= str2double(get(handles.edit9, 'string'));
pointdiff= str2double(get(handles.edit10, 'string'));
val_result=2*val_result;
d1=2*d1;
pointdiff=0.5*pointdiff;
highslope=15;
hisghsloperange=5;
%=========================================================

clearance_time=0;
windowSize =1;
jlim=15;
limit1=0;
limit2=0;
limit3=0;
limit4=0;

 
bb = (1/windowSize)*ones(1,windowSize);
aa = 1;


    count=1;
    mfile = matfile(fullfile(filepath,file_dir(count).name),'Writable',true);
    filename=file_dir(count).name;

   file=strcat(filepath,filename);
   
   load(file);
%========================================================================
   algorithm=1;
   
%=======================================================================   
 if(algorithm==1)
XYZ_O = mfile.XYZ_O;    
kk1=XYZ_O(:,1);
kk2=XYZ_O(:,2);
kk3=XYZ_O(:,3);
% kk1=filter(bb,aa,kk1);
% kk3=filter(bb,aa,kk3);
% kk2=filter(bb,aa,kk2);
kk=abs(sqrt(kk1.^2+kk2.^2+kk3.^2));
y0=kk';
y=kk';
%======================================================
% ff1=abs(diff(y));
% sort1=sort(ff1,'descend');
% 
% gg=find(ff>=0.9*ave);
%    y=y(2560:2590);
x=1:length(y);
yy=y;
dvdt= (diff(y));
point2=0;
point1=0;
kk=1;
h=0;
p=0; % point2 counter


for i=2:length(y)-20
%     if(i<70)
%       clearance_time=50;
%     else
%         clearance_time=cl_t;
%     end

    if(i>=point2+clearance_time)
if(algorithm2==1)    
    result_f=1000;
    spike_count=0;
% here comparing the initial point slope has to be 2 times higher than
% previous . try sum+sum+sum+sum > 
% 2. 4 peak spikes

if( (dvdt(i))>d1 ||...
        ((dvdt(i)>d1 && i==point2 && spike_count<spikecount)) && y(i)<up_max)  % NOT sure if would be best to compare with dvdt(i-1) to set a threshold
    
     spike_count=spike_count+1;
      point1=i;
      o_slope_count=0;
      sum=dvdt(i);
    for j=1:jlim
        
         sum=sum+dvdt(i+j);
         if(sum<val_result)
             point2=i+j+1;
             break
         end
    end
  end
 % ============= for negative=============
 point_diff=point2-point1;
%   if(h>0 && result_f >=-val_result && result_f<=val_result)
     if((point2>i && point_diff>pointdiff )|| spike_count<=spikecount) 
      for dd=i:point2
      if(abs(y(i))<up_max)
            
%        yy(dd)=1;
       yy(dd)=y(point1);
      if(dd>limit1 && dd<limit2)
           yy(dd)=y(dd);
      end
       if(dd>limit3 && dd<limit4)
           yy(dd)=y(dd);
      end
      end
      end
    
     end
end
%=======================
if(algorithm2==2)
if(abs(dvdt(i))>highslope) 
      for ll=1:hisghsloperange
       yy(i+ll-2)=yy(i-2);
%       end
      if (i+ll-2>limit1 && i+ll-2<limit2) 
         yy(i+ll-2)=y(i+ll-2);
      end
      if (i+ll-2>limit3 && i+ll-2<limit4) 
         yy(i+ll-2)=y(i+ll-2);
      end
      end
end
end
  
     
    end
  yy1=y;
  yy2=yy; 
     yy3=abs(yy1-yy2);
end

for mm=1:length(y)
   
    if(yy3(mm)>0)
        yy3(mm)=1;
    else
        yy3(mm)=0;
    end
end
yy2=filter(bb,aa,yy2);
dvdt2=abs(diff(yy2));
% figure

subplot(211)
plot(x,yy1,'Parent',handles.plot); hold( handles.plot,'on' ); plot(x,yy2,'Parent',handles.plot);

subplot(212)
 plot(x,yy2,'Parent',handles.plot_2), hold( handles.plot_2,'on' ), plot(1:length(dvdt2),dvdt2,'Parent',handles.plot_2);
%  plot(y,y0)
%============================================================
ffg=[yy1;yy2;yy3];
XYZ_R2=ffg';
 save(file,'-append', 'XYZ_R2');
     
 else
%=====================================================
XYZ_R2 = mfile.XYZ_R2;    
kk= XYZ_R2(:,2) ;
y0=kk;
y=kk;

x=1:length(y);
yy=y;
dvdt= (diff(y));
point2=0;
point1=0;
kk=1;
h=0;
p=0; % point2 counter


for i=2:length(y)-20
%     if(i<70)
%       clearance_time=50;
%     else
%         clearance_time=cl_t;
%     end

    if(i>=point2+clearance_time)
if(algorithm2==1)    
    result_f=1000;
    spike_count=0;
% here comparing the initial point slope has to be 2 times higher than
% previous . try sum+sum+sum+sum > 
% 2. 4 peak spikes

if( (dvdt(i))>d1 ||...
        ((dvdt(i)>d1 && i==point2 && spike_count<spikecount)) && y(i)<up_max)  % NOT sure if would be best to compare with dvdt(i-1) to set a threshold
    
     spike_count=spike_count+1;
      point1=i;
      o_slope_count=0;
      sum=dvdt(i);
    for j=1:jlim
        
         sum=sum+dvdt(i+j);
         if(sum<val_result)
             point2=i+j+1;
             break
         end
    end
  end
 % ============= for negative=============
 point_diff=point2-point1;
%   if(h>0 && result_f >=-val_result && result_f<=val_result)
     if((point2>i && point_diff>pointdiff )|| spike_count<=spikecount) 
      for dd=i:point2
      if(abs(y(i))<up_max)
            
%        yy(dd)=1;
       yy(dd)=y(point1);
      if(dd>limit1 && dd<limit2)
           yy(dd)=y(dd);
      end
       if(dd>limit3 && dd<limit4)
           yy(dd)=y(dd);
      end
      end
      end
    
     end
end
%=======================
if(algorithm2==2)
if(abs(dvdt(i))>highslope) 
      for ll=1:hisghsloperange
       yy(i+ll-2)=yy(i-2);
%       end
      if (i+ll-2>limit1 && i+ll-2<limit2) 
         yy(i+ll-2)=y(i+ll-2);
      end
      if (i+ll-2>limit3 && i+ll-2<limit4) 
         yy(i+ll-2)=y(i+ll-2);
      end
      end
end
end
  
     
    end
  yy1=y;
  yy2=yy; 

end
    yy3=abs(XYZ_R2(:,1)-yy2);
% figure
%  plot(x,y), hold on, plot(1:length(dvdt),dvdt);

for mm=1:length(y)
   
    if(yy3(mm)>0)
        yy3(mm)=1;
    else
        yy3(mm)=0;
    end
end
yy2=filter(bb,aa,yy2);
dvdt2=abs(diff(yy2));
% figure

% plot(x,yy1); hold on; plot(x,dvdt);
% subplot(311)
%   plot(x,yy2), hold on, plot(1:length(dvdt),abs(dvdt));
% subplot(312)



subplot(211)
  plot(x,yy1,'Parent',handles.plot); hold( handles.plot, 'on' ); plot(x,yy2,'Parent',handles.plot);
    %plot(x,yy1); 
% subplot(313)
subplot(212)
 plot(x,yy2,'Parent',handles.plot_2), hold on, plot(1:length(dvdt2),dvdt2,'Parent',handles.plot_2);
%  plot(y,y0)
%==============================================
XYZ_R2(:,2)=yy2;
XYZ_R2=[XYZ_R2(:,1) yy2 yy3];
%     save(file,'-append', 'XYZ_R2');
%    movefile(file,Reviewed_folder);
 end



% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%PathName='/home/perezald/Desktop/AHA_grant_data/BIDMC_GEHCO_ECGs/Mat_files/';
%FileName='30000101.mat';
[filename,PathName,FilterIndex] = uigetfile ({'*.mat'});
%[filename]=uigetfile({'*.mat'},'File Selector');
set(handles.fileName, 'String', [filename])

handles.PathName=PathName;
handles.F_d=dir(strcat(PathName,'*.mat'));
handles.Tot_file=length(handles.F_d);
handles.No_file=1;
filename=handles.F_d(handles.No_file).name;
C_ID=strsplit(filename,'.');

filename = get(handles.fileName,'string');
  
filetoplot = get(handles.fileName,'string');
load(filetoplot,'ECG12Lead_bwr');
plot(ECG12Lead_bwr);

guidata(hObject, handles);



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on mouse press over axes background.
function plot_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function plot_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate plot


% --- Executes on mouse press over axes background.
function axes5_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on mouse press over axes background.
function plot_2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to plot_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
