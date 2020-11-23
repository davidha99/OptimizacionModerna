function varargout = recorridoSimulado(varargin)
% RECORRIDOSIMULADO MATLAB code for recorridoSimulado.fig
%      RECORRIDOSIMULADO, by itself, creates a new RECORRIDOSIMULADO or raises the existing
%      singleton*.
%
%      H = RECORRIDOSIMULADO returns the handle to a new RECORRIDOSIMULADO or the handle to
%      the existing singleton*.
%
%      RECORRIDOSIMULADO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RECORRIDOSIMULADO.M with the given input arguments.
%
%      RECORRIDOSIMULADO('Property','Value',...) creates a new RECORRIDOSIMULADO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before recorridoSimulado_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to recorridoSimulado_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help recorridoSimulado

% Last Modified by GUIDE v2.5 21-Nov-2020 20:18:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @recorridoSimulado_OpeningFcn, ...
                   'gui_OutputFcn',  @recorridoSimulado_OutputFcn, ...
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


% --- Executes just before recorridoSimulado is made visible.
function recorridoSimulado_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to recorridoSimulado (see VARARGIN)

% Variables from optimizacionModerna
handles.bid = varargin{1}.bid;
handles.dim = varargin{1}.dim;
if handles.dim == 2
    handles.limInfX = varargin{1}.limInfX;
    handles.limSupX = varargin{1}.limSupX;
elseif handles.dim == 3
    handles.limInfX = varargin{1}.limInfX;
    handles.limSupX = varargin{1}.limSupX;
    handles.limInfY = varargin{1}.limInfY;
    handles.limSupY = varargin{1}.limSupY;
end
disp(varargin{1});

% Choose default command line output for recorridoSimulado
handles.output = hObject; %--No se borra

% Ajustando axes2
%axes(handles.axes2);
%if handles.dim == 2
%    xlim([handles.limInfX handles.limSupX]);
%    ylim([handles.limInfX handles.limSupX]);
%elseif handles.dim == 3 || handles.bid == 3 || handles.bid == 8
%    xlim([handles.limInfX handles.limSupX]);
%    ylim([handles.limInfY handles.limSupY]);
%end

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes recorridoSimulado wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = recorridoSimulado_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%close(recorridoSimulado);
set(handles.edit1,'String','');
set(handles.edit3,'String','');
set(handles.edit4,'String','');
set(handles.edit5,'String','');
cla(handles.axes5, 'reset');
cla(handles.axes7, 'reset');
cla(handles.axes1, 'reset');
cla(handles.axes8, 'reset');
optimizacionModerna;


% --- Executes on button press in pushbutton2 -- EJECUTAR.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
nRepe = str2double(get(handles.edit3,'String'));
T = str2double(get(handles.edit1,'String'));
% Llamando archivo de función
if handles.dim == 2
    Min = SA(handles.bid, handles.limInfX, handles.limSupX,nRepe,T,handles.dim - 1, handles.axes5, handles.axes7, handles.axes1, handles.axes8);
elseif handles.dim == 3
    limInf = [handles.limInfX handles.limInfY];
    limSup = [handles.limSupX handles.limSupY];
    Min = SA(handles.bid, limInf,limSup,nRepe,T,handles.dim - 1, handles.axes5, handles.axes7, handles.axes1, handles.axes8);
end

if handles.dim == 2
    set(handles.edit4,'String', Min);
elseif handles.dim == 3
    var1 = Min(1);
    var2 = Min(2);
    set(handles.edit4,'String', var1);
    set(handles.edit5,'String', var2);
end

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
